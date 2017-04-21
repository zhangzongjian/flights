package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Company company){
		companyService.insert(company);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Company company){
		companyService.delete(company.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Company company){
		company = companyService.searchById(company.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Company company){
		companyService.update(company);
		return "";
	}
}
