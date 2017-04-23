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
		request.setAttribute("pager", pager); 
		return "webpages/airport/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/airport/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Airport airport){
		airportService.insert(airport);
		return "redirect:index";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			airportService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Airport airport, Pager pager){
		airport = airportService.searchById(airport.getId());
		request.setAttribute("airport", airport); 
		request.setAttribute("pager", pager);
		return "webpages/airport/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Airport airport, Pager pager){
		airportService.update(airport);
		return "redirect:index?page="+pager.getPage();
	}
}
