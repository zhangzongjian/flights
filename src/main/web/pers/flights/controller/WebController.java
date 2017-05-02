package pers.flights.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pers.flights.mapper.CommonMapper;
import pers.flights.model.Customer;
import pers.flights.model.Order;
import pers.flights.model.Passenger;
import pers.flights.service.CustomerService;
import pers.flights.service.FlightService;
import pers.flights.service.OrderService;
import pers.flights.service.PassengerService;
import pers.flights.util.Attribute;

@Controller
public class WebController {
	
	
	@Autowired
	private FlightService flightService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private PassengerService passengerService;
	
	@Autowired
	private CommonMapper commonMapper;
	
	private Customer loginCustomer;
	
	/**
	 * 查询航班
	 * @param flightType
	 * @param startCity	出发城市
	 * @param arrivalCity 到达城市	
	 * @param startTime 出发时间
	 * @param returnTime
	 * @param count
	 * @return
	 */
	@RequestMapping("searchFlights")
	public String searchFlights(HttpServletRequest request, String flightType, String startCity, String arrivalCity,
								Date startTime, Date returnTime, int count) {
		List<Map<String, Object>> flightList = flightService.searchFlights(startCity, arrivalCity, startTime);
		request.setAttribute("flightList", flightList);
		request.setAttribute("passengerCount", count);
		System.out.println(flightList);
		return "webpage/flightsWeb/flightCX";
	}
	
	/**
	 * 选中航班订票，跳转添加乘客页面
	 * @param request
	 * @return
	 */
	@RequestMapping("selectFlight")
	public String selectFlight(HttpServletRequest request, int ticketPriceId, int count) {
		request.setAttribute("ticketPriceId", ticketPriceId);
		request.setAttribute("passengerCount", count);
		return "webpage/flightsWeb/addPassenger";
	}
	
	/**
	 * 提交订单，跳转订单详情页面
	 * @return
	 */
	@RequestMapping("saveOrder")
	public String saveOrder(String[] passengerName, String[] passengerCard, String[] mobilePhone, Order order) {
		int count = passengerName.length;
		order.setCustomerId(loginCustomer.getId());
		orderService.insert(order);
		int orderid = order.getId();
		for(int i = 0; i < count; i++) {
			Passenger passenger = new Passenger();
			passenger.setPassengerName(passengerName[i]);
			passenger.setPassengerCard(passengerCard[i]);
			passenger.setMobilePhone(mobilePhone[i]);
			passenger.setCustomerId(1);
			passengerService.insert(passenger);
			int passengerid = passenger.getId();
			commonMapper.insertOrderAndPassenger(orderid, passengerid);
		}
		return "redirect:orderDetail?orderid="+orderid+"&customerid="+order.getCustomerId();
	}
	
	
	/**
	 * 根据订单id查看订单详情
	 * @param request
	 * @param orderid
	 * @return
	 */
	@RequestMapping("orderDetail")
	public String orderDetail(HttpServletRequest request, int orderid, int customerid) {
		if(loginCustomer.getId() == customerid) {
			Map<String, Object> orderDetail = orderService.getOrderDetailById(orderid);
			request.setAttribute("orderDetail", orderDetail);
			return "webpage/flightsWeb/orderDetail";			
		}
		else {
			return "";
		}
	}
	
	/**
	 * 查询航班动态
	 * @param request
	 * @param flightno
	 * @param startTime
	 * @return
	 */
	@RequestMapping("flightDT")
	public String flightDT(HttpServletRequest request, String flightno, Date startTime) {
		List<Map<String, Object>> flightDetail = flightService.searchFlightsByNo(flightno, startTime);
		request.setAttribute("flightDetail", flightDetail);
		return "webpage/flightsWeb/flightDT";
	}
	
	/**
	 * 查看我的资料
	 * @param request
	 * @return
	 */
	@RequestMapping("myInfo")
	public String myInfo(HttpServletRequest request) {
		Customer c = loginCustomer;
		request.setAttribute("customer", customerService.searchByPrimaryKey(c.getId()));
		return "webpage/flightsWeb/myInfo";
	}
	
	/**
	 * 查看我的订单
	 * @param request
	 * @return
	 */
	@RequestMapping("myOrder")
	public String myOrder(HttpServletRequest request) {
		List<Map<String, Object>> orderDetail = orderService.searchDetailByCustomer(loginCustomer.getId());
		request.setAttribute("orderDetail", orderDetail);
		return "webpage/flightsWeb/myOrder";
	}
	
	
	/**
	 * 删除订单
	 * @param request
	 * @return
	 */
	@RequestMapping("deleteOrder")
	public String delete(HttpServletRequest request, int id, int customerid){
		if(customerid == loginCustomer.getId()) {
			orderService.delete(id);
			return "redirect:myOrder";
		}
		else {
			return "";
		}
	}
	
	/**
	 * 修改我的资料
	 * @param request
	 * @return
	 */
	@RequestMapping("updateMyInfo")
	public String updateMyInfo(RedirectAttributes red, Customer customer, String newPassword) {
		if(customer.getId() == loginCustomer.getId()) {
			Customer c = customerService.searchByPrimaryKey(customer.getId());
			if(newPassword == null) {
				c.setNickName(customer.getNickName());
				c.setRealName(customer.getRealName());
				c.setSex(customer.getSex());
				c.setBirthday(customer.getBirthday());
				c.setPhone(customer.getPhone());
				customerService.update(c);
			}
			else {
				if(! c.getPassword().equals(customer.getPassword())) {
					red.addFlashAttribute("message", "当前密码不正确！");
					return "redirect:myInfo";
				}
				c.setPassword(newPassword);
				customerService.update(c);
				red.addFlashAttribute("message", "修改成功");
			}
			return "redirect:myInfo";
		}
		else {
			return "";
		}
	}
	
	@RequestMapping("intoCustomerLogin")
	public String intoLogin(HttpServletRequest request) {
		request.getSession().removeAttribute("loginCustomer");
		return "webpage/flightsWeb/login";
	}
	
	
	@RequestMapping(value="customerLogin",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(HttpServletRequest request, RedirectAttributes attr, Customer customer, String username, String gourl) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("statuscode", 0);
		String password = customer.getPassword();
		List<Attribute> phoneAttr = new Attribute().put("mobilephone", username).getList();
		List<Attribute> emailAttr = new Attribute().put("email", username).getList();
		List<Customer> list = customerService.searchByAttributes(phoneAttr);
		if(list.size() == 0) {
			list = customerService.searchByAttributes(emailAttr);
		}
		if(list.size() == 0) {
			map.put("message", "账号不存在！");
		}
		else {
			customer = list.get(0);
			//登录成功
			if(password.equals(customer.getPassword())) {
				request.getSession().setAttribute("loginCustomer", customer);
				map.put("statuscode", 1);
				if(gourl.contains("intoCustomerLogin")) {
					map.put("goIndex", "true");
				}
			}
			else {
				map.put("message", "密码错误！");
			}
		}
		return map;
	}
	
	@RequestMapping("customerLogout")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("loginCustomer");
		return "redirect:intoCustomerLogin";
	}
	
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		dateFormat.setLenient(false);  
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值  
	}
	
	@ModelAttribute
	public void init(HttpServletRequest request, HttpServletResponse response) {
//		loginCustomer = customerService.searchByPrimaryKey(1);
		loginCustomer = (Customer) request.getSession().getAttribute("loginCustomer");
	}
}

