<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${contextPath }/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${contextPath }/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(${contextPath }/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="${contextPath }/main" target="_parent"><img src="${contextPath }/images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="${contextPath }/left?menu=1" target="leftFrame" class="selected"><img src="${contextPath }/images/icon01.png" title="信息管理" /><h2>信息管理</h2></a></li>
    <li><a href="${contextPath }/left?menu=2" target="leftFrame"><img src="${contextPath }/images/icon02.png" title="基础数据" /><h2>基础数据</h2></a></li>
    <li><a href="${contextPath }/#"  target="rightFrame"><img src="${contextPath }/images/icon03.png" title="订票网站" /><h2>订票网站</h2></a></li>
    <li><a href="${contextPath }/tools.html"  target="rightFrame"><img src="${contextPath }/images/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="${contextPath }/computer.html" target="rightFrame"><img src="${contextPath }/images/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
    <li><a href="${contextPath }/tab.html"  target="rightFrame"><img src="${contextPath }/images/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="${contextPath }/images/help.png" title="帮助"  class="helpimg"/></span><a href="${contextPath }/#">帮助</a></li>
    <li><a href="${contextPath }/#">关于</a></li>
    <li><a href="${contextPath }/logout" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>
</body>
</html>
