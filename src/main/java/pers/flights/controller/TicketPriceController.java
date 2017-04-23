package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.TicketPrice;
import pers.flights.service.TicketPriceService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("ticketPrice")
public class TicketPriceController {
	
	@Autowired
	private TicketPriceService ticketPriceService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = ticketPriceService.search(pager);
		request.setAttribute("pager", pager); 
		return "webpages/ticketPrice/index";
	}
	
	@RequestMapping("intoAdd")
	public String intoAdd(HttpServletRequest request){
		return "webpages/ticketPrice/add";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, TicketPrice ticketPrice){
		ticketPriceService.insert(ticketPrice);
		return "redirect:intoAdd";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, String[] id, Pager pager){
		for(int i = 0; i<id.length; i++) {
			ticketPriceService.delete(Integer.valueOf(id[i]));
		}
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Model model, TicketPrice ticketPrice, Pager pager){
		ticketPrice = ticketPriceService.searchByPrimaryKey(ticketPrice.getId());
		model.addAttribute("ticketPrice", ticketPrice); 
		model.addAttribute("pager", pager);
		return "webpages/ticketPrice/update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, TicketPrice ticketPrice, Pager pager){
		ticketPriceService.update(ticketPrice);
		return "redirect:index?page="+pager.getPage();
	}
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, Model model, TicketPrice ticketPrice, Pager pager){
		ticketPrice = ticketPriceService.searchByPrimaryKey(ticketPrice.getId());
		model.addAttribute("ticketPrice", ticketPrice); 
		model.addAttribute("pager", pager);
		return "webpages/ticketPrice/detail";
	}
}
