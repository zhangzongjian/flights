package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Plane;
import pers.flights.service.PlaneService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("plane")
public class PlaneController {
	
	@Autowired
	private PlaneService planeService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = planeService.search(pager);
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Plane plane){
		planeService.insert(plane);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Plane plane){
		planeService.delete(plane.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Plane plane){
		plane = planeService.searchById(plane.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Plane plane){
		planeService.update(plane);
		return "";
	}
}
