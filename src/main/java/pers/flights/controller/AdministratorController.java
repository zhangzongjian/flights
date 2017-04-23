package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		request.setAttribute("pager", pager); 
		return "webpages/administrator/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/administrator/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Administrator administrator){
		administratorService.insert(administrator);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			administratorService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Administrator administrator, Pager pager){
		administrator = administratorService.searchByPrimaryKey(administrator.getId());
		model.addAttribute("administrator", administrator); 
		model.addAttribute("pager", pager);
		return "webpages/administrator/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Administrator administrator, Pager pager){
		administratorService.update(administrator);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Administrator administrator, Pager pager){
		administrator = administratorService.searchByPrimaryKey(administrator.getId());
		model.addAttribute("administrator", administrator); 
		model.addAttribute("pager", pager);
		return "webpages/administrator/detail";
	}
}
