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
<title>Flight detail</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/flight/index">航班列表</a></li>
    <li><a href="#">详情</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>数据详情</span></div>
    
    <form action="${contextPath}/flight/update">
	    <ul class="forminfo">
	  	<li><label>航班号</label><input name="flightNo" type="text" class="dfinput" value="${flight.flightNo }" readonly="readonly"/></li>
	  	<li><label>出发时间</label><input name="startTime" type="text" class="dfinput" value="<fmt:formatDate value="${flight.startTime }" pattern="yyyy-MM-dd HH:mm" />" readonly="readonly"/></li>
	  	<li><label>出发机场</label><input name="startAirportId" type="text" class="dfinput" value="${flight.startAirportId }" readonly="readonly"/></li>
	  	<li><label>抵达时间</label><input name="arrivalTime" type="text" class="dfinput" value="<fmt:formatDate value="${flight.arrivalTime }" pattern="yyyy-MM-dd HH:mm" />" readonly="readonly"/></li>
	  	<li><label>目的机场</label><input name="endAirportId" type="text" class="dfinput" value="${flight.endAirportId }" readonly="readonly"/></li>
	  	<li><label>飞机</label><input name="planeId" type="text" class="dfinput" value="${flight.planeId }" readonly="readonly"/></li>
	  	<li><label>实际出发时间</label><input name="startRealTime" type="text" class="dfinput" value="<fmt:formatDate value="${flight.startRealTime }" pattern="yyyy-MM-dd HH:mm" />" readonly="readonly"/></li>
	  	<li><label>实际抵达时间</label><input name="arrivalRealTIme" type="text" class="dfinput" value="<fmt:formatDate value="${flight.arrivalRealTIme }" pattern="yyyy-MM-dd HH:mm" />" readonly="readonly"/></li>
	  	<li><label>状态</label><input name="status" type="text" class="dfinput" value="${flight.status }" readonly="readonly"/></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" value="<fmt:formatDate value="${flight.createTime }" pattern="yyyy-MM-dd HH:mm" />" readonly="readonly"/></li>
	    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="javascript:history.go(-1);"/></li>
	    </ul>
	    <input name="page" type="hidden" class="dfinput" value="${pager.page }"/>
    </form>
    
    
    </div>
</body>
</html>
