<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Company detail</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/company/index">航空公司列表</a></li>
    <li><a href="#">详情</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>数据详情</span></div>
    
    <form action="${contextPath}/company/update">
	    <ul class="forminfo">
	  	<li><label>公司代码</label><input name="companyCode" type="text" class="dfinput" value="${company.companyCode }" readonly="readonly"/></li>
	  	<li><label>公司信息</label><input name="information" type="text" class="dfinput" value="${company.information }" readonly="readonly"/></li>
	  	<li><label>公司名称</label><input name="companyName" type="text" class="dfinput" value="${company.companyName }" readonly="readonly"/></li>
	  	<li><label>联系电话</label><input name="mobilePhone" type="text" class="dfinput" value="${company.mobilePhone }" readonly="readonly"/></li>
	  	<li><label>固定电话</label><input name="companyPhone" type="text" class="dfinput" value="${company.companyPhone }" readonly="readonly"/></li>
	  	<li><label>公司网址</label><input name="companyUrl" type="text" class="dfinput" value="${company.companyUrl }" readonly="readonly"/></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" value="${company.createTime }" readonly="readonly"/></li>
	    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="javascript:history.go(-1);"/></li>
	    </ul>
	    <input name="page" type="hidden" class="dfinput" value="${pager.page }"/>
    </form>
    
    
    </div>
</body>
</html>
