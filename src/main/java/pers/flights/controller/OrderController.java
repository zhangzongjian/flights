package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Order order){
		orderService.insert(order);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Order order){
		orderService.delete(order.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Order order){
		order = orderService.searchById(order.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Order order){
		orderService.update(order);
		return "";
	}
}
