package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Order;
import pers.flights.service.OrderService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = orderService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpage/flights/order/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpage/flights/order/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Order order){
		orderService.insert(order);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			orderService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Order order, Pager pager){
		order = orderService.searchByPrimaryKey(order.getId());
		model.addAttribute("order", order); 
		model.addAttribute("pager", pager);
		return "webpage/flights/order/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Order order, Pager pager){
		orderService.update(order);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Order order, Pager pager){
		order = orderService.searchByPrimaryKey(order.getId());
		model.addAttribute("order", order); 
		model.addAttribute("pager", pager);
		return "webpage/flights/order/detail";
	}
}
