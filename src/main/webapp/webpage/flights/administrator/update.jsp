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
<title>Administrator update</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/administrator/index">人员列表</a></li>
    <li><a href="#">修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>修改数据</span></div>
    
    <form action="${contextPath}/administrator/update">
	    <input name="id" type="hidden" class="dfinput" value="${administrator.id }"/>
	    <ul class="forminfo">
	  	<li><label>账号</label><input name="username" type="text" class="dfinput" value="${administrator.username }"/></li>
	  	<li><label>密码</label><input name="password" type="text" class="dfinput" value="${administrator.password }"/></li>
	  	<li><label>姓名</label><input name="realName" type="text" class="dfinput" value="${administrator.realName }"/></li>
	  	<li><label>职位</label><input name="position" type="text" class="dfinput" value="${administrator.position }"/></li>
	  	<li><label>最后登录时间</label><input name="lastLoginTime" type="text" class="dfinput" value="<fmt:formatDate value="${administrator.lastLoginTime }" pattern="yyyy-MM-dd HH:mm" />"/></li>
	  	<li><label>创建时间</label><input name="createTime" type="text" class="dfinput" value="<fmt:formatDate value="${administrator.createTime }" pattern="yyyy-MM-dd HH:mm" />"/></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/>&nbsp;&nbsp;<input name="" type="button" class="btn" value="返回" onclick="javascript:history.go(-1);"/></li>
	    </ul>
	    <input name="page" type="hidden" class="dfinput" value="${pager.page }"/>
    </form>
    
    
    </div>
</body>
</html>
