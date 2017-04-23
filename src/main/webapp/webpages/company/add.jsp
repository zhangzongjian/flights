<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Company add</title>
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
    
    <form action="${contextPath}/company/add">
	    <input name="" type="hidden" class="dfinput" />
	    <ul class="forminfo">
	  	<li><label>公司代码</label><input name="companyCode" type="text" class="dfinput" /></li>
	  	<li><label>公司信息</label><input name="information" type="text" class="dfinput" /></li>
	  	<li><label>公司名称</label><input name="companyName" type="text" class="dfinput" /></li>
	  	<li><label>联系电话</label><input name="mobilePhone" type="text" class="dfinput" /></li>
	  	<li><label>固定电话</label><input name="companyPhone" type="text" class="dfinput" /></li>
	  	<li><label>公司网址</label><input name="companyUrl" type="text" class="dfinput" /></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" /></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	    </ul>
    </form>
    
    
    </div>
</body>
</html>
