package pers.flights.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pers.flights.model.Administrator;
import pers.flights.service.AdministratorService;
import pers.flights.service.FlightService;
import pers.flights.util.Attribute;

@Controller
public class WebController {
	
	@Autowired
	private AdministratorService administratorService;
	
	
	@Autowired
	private FlightService flightService;
	
	@RequestMapping("searchFlights")
	public String searchFlights(HttpServletRequest request, String flightType, String startCity, String arrivalCity,
								String startTime, String returnTime, int count) {
		System.out.println(startCity+" "+arrivalCity+" "+startTime);
		List<Map<String, Object>> flightList = flightService.searchFlights(startCity, arrivalCity, startTime);
		request.setAttribute("flightList", flightList);
		System.out.println(flightList);
		return "webpage/flightsWeb/index";
	}
	
	
	@RequestMapping("intoCustomerLogin")
	public String intoLogin(HttpServletRequest request) {
		return "";
	}
	
	@RequestMapping(value="customerLogin",method=RequestMethod.POST)
	public String login(HttpServletRequest request, RedirectAttributes attr, Administrator administrator) {
		String username = administrator.getUsername();
		String password = administrator.getPassword();
		List<Attribute> attrs = new Attribute().put("username", username).getList();
		List<Administrator> list = administratorService.searchByAttributes(attrs);
		if(list.size() == 0) {
			attr.addFlashAttribute("message", "账号不存在！");
			return "";
		}
		else {
			administrator = list.get(0);
			//登录成功
			if(password.equals(administrator.getPassword())) {
				request.getSession().setAttribute("loginUser", administrator);
				return "redirect:main";
			}
			else {
				attr.addFlashAttribute("message", "密码错误！");
				return "";
			}
		}
	}
	
	@RequestMapping("customerLoginOut")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("loginUser");
		return "";
	}
}

