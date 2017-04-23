package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Flight;
import pers.flights.service.FlightService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("flight")
public class FlightController {
	
	@Autowired
	private FlightService flightService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = flightService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpages/flight/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/flight/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Flight flight){
		flightService.insert(flight);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			flightService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Flight flight, Pager pager){
		flight = flightService.searchByPrimaryKey(flight.getId());
		model.addAttribute("flight", flight); 
		model.addAttribute("pager", pager);
		return "webpages/flight/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Flight flight, Pager pager){
		flightService.update(flight);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Flight flight, Pager pager){
		flight = flightService.searchByPrimaryKey(flight.getId());
		model.addAttribute("flight", flight); 
		model.addAttribute("pager", pager);
		return "webpages/flight/detail";
	}
}
