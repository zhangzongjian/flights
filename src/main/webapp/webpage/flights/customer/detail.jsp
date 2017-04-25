<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Customer detail</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/customer/index">客户列表</a></li>
    <li><a href="#">详情</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>数据详情</span></div>
    
    <form action="${contextPath}/customer/update">
	    <ul class="forminfo">
	  	<li><label>邮箱</label><input name="email" type="text" class="dfinput" value="${customer.email }" readonly="readonly"/></li>
	  	<li><label>手机号码</label><input name="mobilePhone" type="text" class="dfinput" value="${customer.mobilePhone }" readonly="readonly"/></li>
	  	<li><label>账号类型</label><input name="accountType" type="text" class="dfinput" value="${customer.accountType }" readonly="readonly"/></li>
	  	<li><label>昵称</label><input name="nickName" type="text" class="dfinput" value="${customer.nickName }" readonly="readonly"/></li>
	  	<li><label>姓名</label><input name="realName" type="text" class="dfinput" value="${customer.realName }" readonly="readonly"/></li>
	  	<li><label>密码</label><input name="password" type="text" class="dfinput" value="${customer.password }" readonly="readonly"/></li>
	  	<li><label>出生日期</label><input name="birthday" type="text" class="dfinput" value="${customer.birthday }" readonly="readonly"/></li>
	  	<li><label>性别</label><input name="sex" type="text" class="dfinput" value="${customer.sex }" readonly="readonly"/></li>
	  	<li><label>联系固话</label><input name="phone" type="text" class="dfinput" value="${customer.phone }" readonly="readonly"/></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" value="${customer.createTime }" readonly="readonly"/></li>
	    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="javascript:history.go(-1);"/></li>
	    </ul>
	    <input name="page" type="hidden" class="dfinput" value="${pager.page }"/>
    </form>
    
    
    </div>
</body>
</html>
