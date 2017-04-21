package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Administrator;
import pers.flights.service.AdministratorService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("administrator")
public class AdministratorController {
	
	@Autowired
	private AdministratorService administratorService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = administratorService.search(pager);
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Administrator administrator){
		administratorService.insert(administrator);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Administrator administrator){
		administratorService.delete(administrator.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Administrator administrator){
		administrator = administratorService.searchById(administrator.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Administrator administrator){
		administratorService.update(administrator);
		return "";
	}
}
