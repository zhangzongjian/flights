package pers.flights.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import pers.flights.model.Customer;

public class SessionInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		// 检查是否有会话记录（检查登录状态）
		// 订票网站拦截
		String requestURI = request.getRequestURI();
        if(requestURI.equals("/flights/myInfo") ||
			requestURI.equals("/flights/orderDetail") ||
			requestURI.equals("/flights/myOrder") ||
			requestURI.equals("/flights/deleteOrder") ||
			requestURI.equals("/flights/updateMyInfo") ||
			requestURI.equals("/flights/saveOrder")) {
        	Customer loginCustomer = (Customer) request.getSession().getAttribute("loginCustomer");
        	if(loginCustomer == null) {
				request.getRequestDispatcher("intoCustomerLogin").forward(request, response);
				return false;
        	}
        	else {
        		return true;
        	}
		}
        if(requestURI.equals("/flights/") ||
           requestURI.equals("/flights/searchFlights") ||
        		requestURI.equals("/flights/selectFlight") ||
        		requestURI.equals("/flights/contact") ||
        		requestURI.equals("/flights/register") ||
        		requestURI.equals("/flights/flightDT")) {
        	return true;
        }
        //后天管理系统拦截
		if (request.getSession().getAttribute("loginUser") != null) {
			return true;
		} else {
			response.sendRedirect(request.getContextPath()+"/intoLogin");
			return false;
		}
	}

}
