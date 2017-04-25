<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Plane add</title>
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
    
    <div class="formtitle"><span>添加数据</span></div>
    
    <form action="${contextPath}/plane/add">
	    <input name="" type="hidden" class="dfinput" />
	    <ul class="forminfo">
	  	<li><label>型号</label><input name="planeVersion" type="text" class="dfinput" /></li>
	  	<li><label>类型</label><input name="planeType" type="text" class="dfinput" /></li>
	  	<li><label>机龄</label><input name="planeAge" type="text" class="dfinput" /></li>
	  	<li><label>公务舱座位数量</label><input name="businessClassAmount" type="text" class="dfinput" /></li>
	  	<li><label>头等舱座位数量</label><input name="firstClassAmount" type="text" class="dfinput" /></li>
	  	<li><label>经济舱座位数量</label><input name="economyClassAmount" type="text" class="dfinput" /></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" /></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	    </ul>
    </form>
    
    
    </div>
</body>
</html>
