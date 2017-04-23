package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Discount;
import pers.flights.service.DiscountService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("discount")
public class DiscountController {
	
	@Autowired
	private DiscountService discountService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = discountService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpages/discount/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/discount/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Discount discount){
		discountService.insert(discount);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			discountService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Discount discount, Pager pager){
		discount = discountService.searchByPrimaryKey(discount.getId());
		model.addAttribute("discount", discount); 
		model.addAttribute("pager", pager);
		return "webpages/discount/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Discount discount, Pager pager){
		discountService.update(discount);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Discount discount, Pager pager){
		discount = discountService.searchByPrimaryKey(discount.getId());
		model.addAttribute("discount", discount); 
		model.addAttribute("pager", pager);
		return "webpages/discount/detail";
	}
}
