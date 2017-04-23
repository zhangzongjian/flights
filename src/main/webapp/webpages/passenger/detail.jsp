<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Passenger detail</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>数据详情</span></div>
    
    <form action="${contextPath}/passenger/update">
	    <ul class="forminfo">
	  	<li><label>乘客姓名</label><input name="passengerName" type="text" class="dfinput" value="${passenger.passengerName }" readonly="readonly"/></li>
	  	<li><label>身份证号</label><input name="passengerCard" type="text" class="dfinput" value="${passenger.passengerCard }" readonly="readonly"/></li>
	  	<li><label>乘客类型</label><input name="passengerType" type="text" class="dfinput" value="${passenger.passengerType }" readonly="readonly"/></li>
	  	<li><label>手机号码</label><input name="mobilePhone" type="text" class="dfinput" value="${passenger.mobilePhone }" readonly="readonly"/></li>
	  	<li><label>客户编号</label><input name="customerId" type="text" class="dfinput" value="${passenger.customerId }" readonly="readonly"/></li>
	    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="javascript:history.go(-1);"/></li>
	    </ul>
	    <input name="page" type="hidden" class="dfinput" value="${pager.page }"/>
    </form>
    
    
    </div>
</body>
</html>
