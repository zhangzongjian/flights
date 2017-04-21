package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, TicketPrice ticketPrice){
		ticketPriceService.insert(ticketPrice);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, TicketPrice ticketPrice){
		ticketPriceService.delete(ticketPrice.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, TicketPrice ticketPrice){
		ticketPrice = ticketPriceService.searchById(ticketPrice.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, TicketPrice ticketPrice){
		ticketPriceService.update(ticketPrice);
		return "";
	}
}
