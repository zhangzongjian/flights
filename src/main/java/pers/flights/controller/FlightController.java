package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Flight flight){
		flightService.insert(flight);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Flight flight){
		flightService.delete(flight.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Flight flight){
		flight = flightService.searchById(flight.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Flight flight){
		flightService.update(flight);
		return "";
	}
}
