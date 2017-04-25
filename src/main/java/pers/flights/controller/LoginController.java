package pers.flights.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pers.flights.model.Administrator;
import pers.flights.service.AdministratorService;
import pers.flights.util.Attribute;

@Controller
public class LoginController {
	
	@Autowired
	private AdministratorService administratorService;
	
	@RequestMapping("intoLogin")
	public String intoLogin(HttpServletRequest request) {
		return "webpage/main/login";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, RedirectAttributes attr, Administrator administrator) {
		String username = administrator.getUsername();
		String password = administrator.getPassword();
		List<Attribute> attrs = new Attribute().put("username", username).getList();
		List<Administrator> list = administratorService.searchByAttributes(attrs);
		if(list.size() == 0) {
			//重定向传参
			//attr.addAttribute("message", "账号不存在！"); //参数传递形式：intoLogin?message="MESSAGE"
			attr.addFlashAttribute("message", "账号不存在！");
			return "redirect:intoLogin";
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
				return "redirect:intoLogin";
			}
		}
	}
	
	@RequestMapping("loginOut")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("loginUser");
		return "redirect:intoLogin";
	}
}
