package pers.flights.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.flights.model.Passenger;
import pers.flights.service.PassengerService;
import pers.flights.util.Pager;

@Controller
@RequestMapping("passenger")
public class PassengerController {
	
	@Autowired
	private PassengerService passengerService;
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Pager pager){
		pager = passengerService.search(pager);
		return "";
	}
	
	@RequestMapping("add")
	public String add(HttpServletRequest request, Passenger passenger){
		passengerService.insert(passenger);
		return "";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, Passenger passenger){
		passengerService.delete(passenger.getId());
		return "";
	}
	
	@RequestMapping("intoUpdate")
	public String intoUpdate(HttpServletRequest request, Passenger passenger){
		passenger = passengerService.searchById(passenger.getId());
		return "";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Passenger passenger){
		passengerService.update(passenger);
		return "";
	}
}
