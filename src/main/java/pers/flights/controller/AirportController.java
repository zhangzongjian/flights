package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Airport;
import pers.flights.service.AirportService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("airport")
public class AirportController {
	
	@Autowired
	private AirportService airportService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = airportService.search(pager);
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Airport airport){
		airportService.insert(airport);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Airport airport){
		airportService.delete(airport.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Airport airport){
		airport = airportService.searchById(airport.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Airport airport){
		airportService.update(airport);
		return "";
	}
}
