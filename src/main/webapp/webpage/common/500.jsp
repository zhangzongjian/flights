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
<script type="text/javascript" src="${contextPath }/js/jquery.js"></script>

<script language="javascript">
	$(function(){
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
	$(window).resize(function(){  
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
    })  
});  
</script> 
<style>
.error{background:url(${contextPath}/images/500.png) no-repeat; width:490px; margin-top:75px;padding-top:65px;}
.error h2{font-size:22px; padding-left:154px;}
.error p{padding-left:154px; line-height:35px;color:#717678;}
.reindex1{padding-left:154px;}
.reindex1 a{width:115px; height:35px; font-size:14px; font-weight:bold; color:#fff; background:#3c95c8; display:inline-block; line-height:35px; text-align:center;border-radius: 3px; behavior:url(js/pie.htc);margin-right:20px;margin-top:20px;}
</style>

</head>


<body style="background:#edf6fa;">

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${contextPath }/#">首页</a></li>
    <li><a href="${contextPath }/#">500错误提示</a></li>
    </ul>
    </div>
    
    <div class="error">
    
    <h2>内部服务器错误！</h2>
    <p>看到这个提示，就自认倒霉吧!</p>
    <div class="reindex1"><a href="${contextPath }/main.html" target="_parent">查看信息</a><a href="${contextPath }/main.html" target="_parent">返回首页</a></div>
    
    </div>
</body>
</html>
