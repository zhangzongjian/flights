<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Order add</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/order/index">订单列表</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加数据</span></div>
    
    <form action="${contextPath}/order/add">
	    <input name="" type="hidden" class="dfinput" />
	    <ul class="forminfo">
	  	<li><label>订单号</label><input name="orderNo" type="text" class="dfinput" /></li>
	  	<li><label>航班编号</label><input name="flightId" type="text" class="dfinput" /></li>
	  	<li><label>票价编号</label><input name="ticketPriceId" type="text" class="dfinput" /></li>
	  	<li><label>预定时间</label><input name="orderTime" type="text" class="dfinput" /></li>
	  	<li><label>联系人</label><input name="person" type="text" class="dfinput" /></li>
	  	<li><label>联系电话</label><input name="phone" type="text" class="dfinput" /></li>
	  	<li><label>订单状态</label><input name="orderStatus" type="text" class="dfinput" /></li>
	  	<li><label>客户编号</label><input name="customerId" type="text" class="dfinput" /></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" /></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	    </ul>
    </form>
    
    
    </div>
</body>
</html>
