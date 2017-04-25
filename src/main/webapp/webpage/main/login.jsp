<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="${contextPath }/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${contextPath }/js/jquery.js"></script>
<script language="JavaScript" src="${contextPath }/js/jquery.cookie.js"></script>
<script src="${contextPath }/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    });
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="${contextPath }/#">回首页</a></li>
    <li><a href="${contextPath }/#">帮助</a></li>
    <li><a href="${contextPath }/#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    <form action="${contextPath}/login" method="post">
    <ul>
    <li><input name="username" type="text" class="loginuser" placeholder="请输入账号"/></li>
    <li><input name="password" type="password" class="loginpwd" placeholder="密码不少于6位"/></li>
    <li><input id="submit" type="submit" class="loginbtn" value="登录"/><label><input id="rmbUser" type="checkbox" />记住密码</label><label><a href="javascript:alert('联系管理员呗！');">忘记密码？</a></label></li>
    </ul>
    </form>
    
    </div>
    
    </div>
    
    <div class="loginbm">版权所有  2013  uimaker.com 仅供学习交流，勿用于任何商业用途</div>
    
<script language="javascript">
$(function(){
	if('${message}' != '') {
		alert('${message}');
	}
	
	//初始化页面时验证是否记住了密码 
	if ($.cookie("rmbUser") == "true") { 
		$("#rmbUser").attr("checked", true); 
		$("[name='username']").val($.cookie("userName")); 
		$("[name='password']").val($.cookie("passWord")); 
	} 
	
	//cookie保存用户信息
	$("#submit").click(function() {
		if ($("#rmbUser").attr("checked") == true) { 
			var userName = $("[name='username']").val(); 
			var passWord = $("[name='password']").val(); 
			$.cookie("rmbUser", "true", { expires: 7 }); // 存储一个带7天期限的 cookie 
			$.cookie("userName", userName, { expires: 7 }); // 存储一个带7天期限的 cookie 
			$.cookie("passWord", passWord, { expires: 7 }); // 存储一个带7天期限的 cookie 
		} 
		else { 
			$.cookie("rmbUser", "false", { expires: -1 }); 
			$.cookie("userName", '', { expires: -1 }); 
			$.cookie("passWord", '', { expires: -1 }); 
		} 
	});
	
});  
</script>
</body>
</html>
