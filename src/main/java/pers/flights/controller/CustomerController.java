package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		request.setAttribute("pager", pager); 
		return "webpage/flights/customer/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpage/flights/customer/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Customer customer){
		customerService.insert(customer);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			customerService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Customer customer, Pager pager){
		customer = customerService.searchByPrimaryKey(customer.getId());
		model.addAttribute("customer", customer); 
		model.addAttribute("pager", pager);
		return "webpage/flights/customer/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Customer customer, Pager pager){
		customerService.update(customer);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Customer customer, Pager pager){
		customer = customerService.searchByPrimaryKey(customer.getId());
		model.addAttribute("customer", customer); 
		model.addAttribute("pager", pager);
		return "webpage/flights/customer/detail";
	}
}
