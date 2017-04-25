package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		request.setAttribute("pager", pager); 
		return "webpage/flights/plane/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpage/flights/plane/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Plane plane){
		planeService.insert(plane);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			planeService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Plane plane, Pager pager){
		plane = planeService.searchByPrimaryKey(plane.getId());
		model.addAttribute("plane", plane); 
		model.addAttribute("pager", pager);
		return "webpage/flights/plane/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Plane plane, Pager pager){
		planeService.update(plane);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Plane plane, Pager pager){
		plane = planeService.searchByPrimaryKey(plane.getId());
		model.addAttribute("plane", plane); 
		model.addAttribute("pager", pager);
		return "webpage/flights/plane/detail";
	}
}
