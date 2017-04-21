package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Discount discount){
		discountService.insert(discount);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Discount discount){
		discountService.delete(discount.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Discount discount){
		discount = discountService.searchById(discount.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Discount discount){
		discountService.update(discount);
		return "";
	}
}
