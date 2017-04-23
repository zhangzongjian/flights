package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Company;
import pers.flights.service.CompanyService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("company")
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = companyService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpages/company/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/company/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Company company){
		companyService.insert(company);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			companyService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, Company company, Pager pager){
		company = companyService.searchByPrimaryKey(company.getId());
		model.addAttribute("company", company); 
		model.addAttribute("pager", pager);
		return "webpages/company/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Company company, Pager pager){
		companyService.update(company);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, Company company, Pager pager){
		company = companyService.searchByPrimaryKey(company.getId());
		model.addAttribute("company", company); 
		model.addAttribute("pager", pager);
		return "webpages/company/detail";
	}
}
