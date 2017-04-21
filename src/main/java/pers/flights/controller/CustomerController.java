package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Customer;
import pers.flights.service.CustomerService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = customerService.search(pager);
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Customer customer){
		customerService.insert(customer);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Customer customer){
		customerService.delete(customer.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Customer customer){
		customer = customerService.searchById(customer.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Customer customer){
		customerService.update(customer);
		return "";
	}
}
