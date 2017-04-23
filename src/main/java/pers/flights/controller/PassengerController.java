package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Passenger;
import pers.flights.service.PassengerService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("passenger")
public class PassengerController {
	
	@Autowired
	private PassengerService passengerService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = passengerService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpages/passenger/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/passenger/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Passenger passenger){
		passengerService.insert(passenger);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			passengerService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Passenger passenger, Pager pager){
		passenger = passengerService.searchByPrimaryKey(passenger.getId());
		model.addAttribute("passenger", passenger); 
		model.addAttribute("pager", pager);
		return "webpages/passenger/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Passenger passenger, Pager pager){
		passengerService.update(passenger);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Passenger passenger, Pager pager){
		passenger = passengerService.searchByPrimaryKey(passenger.getId());
		model.addAttribute("passenger", passenger); 
		model.addAttribute("pager", pager);
		return "webpages/passenger/detail";
	}
}
