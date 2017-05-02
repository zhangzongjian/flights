<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>登录</title> 
  
  <link rel="stylesheet" href="${contextPath }/css/base1.css"/>
  <link id="css" rel="stylesheet" type="text/css" href="${contextPath }/css/zclc2.1460959081.css" />
  <script language="JavaScript" src="${contextPath }/js/jquery.js"></script>
  <script language="JavaScript" src="${contextPath }/js/jquery.cookie.js"></script>
 </head> 
 <body > 
 <div class="head_foot_content"> 
   <div class="header">
    <div class="header-layer"></div>
    <div class="lin"> 
     <div class="tit"> 
      <img src="${contextPath }/images/t2.png" alt="登录" /> 
     </div> 
    </div> 
    <div class="content-bd" status="available"> 
     <div class="content-l" status="available"> 
       <img src="${contextPath }/images/timg.jpg"/>
     </div> 
     <div class="line"></div> 
     <div class="content-r"> 
      <form action="${contextPath }/customerLogin" method="post" jveventinit="1"> 
       <div class="box"> 
        <span id="userIdSpt" jvnormaltip="&amp;nbsp;">&nbsp;</span> 
        <input style="margin-bottom: 0" id="userIdTxt" type="text" placeholder="你的手机号/邮箱" name="username" class="email jv-box-default ui-autocomplete-input" jvdefault="你的手机号/邮箱" jvcorrecttip="" jvtipid="userIdSpt" maxlength="50" jvpattern="^.{1,50}$" jverrortip="请输入注册时用的邮箱或者手机号呀" autocomplete="off" /> 
       </div> 
       <div class="box"> 
        <span id="userPwdTip" jvnormaltip="&amp;nbsp;">&nbsp;</span> 
        <input id="passwdTxt" type="password" placeholder="密码" name="password" class="password" jverrortip="喵，你没输入密码么？" jvpattern="^.{3,30}$" jvtipid="userPwdTip" /> 
       </div> 
       <div class="box"> 
        <a href="/resetpwd" class="mima">忘记密码？&gt; </a> 
        <span style="line-height: 30px;" class="begin" id="vdcodeSpt">&nbsp;</span> 
        <input id="vdCodeTxt" type="text" style="text-transform: uppercase;" placeholder="验证码" class="code jv-box-default" jvdefault="验证码" name="vdcode" jvcorrecttip="" jvtipid="vdcodeSpt" maxlength="10" jvpattern="^.{1,10}$" jverrortip="请输入验证码" autocomplete="off" /> 
        <div class="sj_yzm" style="display: none"></div> 
        <i></i> 
        <img id="captchaImg" src="" class="yzm" alt="" style="display: " /> 
        <p id="refreshCaptchaAch" style="display: ">换一张</p> 
        <div class="box"> 
         <label style="height: 25px; position: relative;"> <input id="rmbuser" class="jz" type="checkbox" remember-me="2592000" no-remember-me="84600" /> <em>记住我<strong>不是自己的电脑上不要勾选此项</strong></em> </label> 
        </div> 
       </div> 
       <input type="hidden" name="gourl" value=""/>
       <input type="button" id="submit" class="login" value="登录"/> 
       <a class="zhuce" href="${contextPath }/webpage/flightsWeb/register.jsp">注册</a> 
      </form> 
     </div> 
    </div> 
   </div> 
  </div>
<script>
$(function(){

	//初始化页面时验证是否记住了密码 
	if ($.cookie("rmbuser") == "true") {
		$("#rmbuser").attr("checked", true); 
		$("[name='username']").val($.cookie("username")); 
		$("[name='password']").val($.cookie("password")); 
	} 
	
	//cookie保存用户信息
	$("#submit").click(function() {
		if ($("#rmbuser").attr("checked") == true) { 
			var userName = $("[name='username']").val(); 
			var passWord = $("[name='password']").val(); 
			$.cookie("rmbuser", "true", { expires: 7 }); // 存储一个带7天期限的 cookie 
			$.cookie("username", userName, { expires: 7 }); // 存储一个带7天期限的 cookie 
			$.cookie("password", passWord, { expires: 7 }); // 存储一个带7天期限的 cookie 
		} 
		else { 
			$.cookie("rmbuser", "false", { expires: -1 }); 
			$.cookie("username", '', { expires: -1 }); 
			$.cookie("password", '', { expires: -1 }); 
		}
		
		$.ajax({
			url:"${contextPath }/customerLogin",
			data:{
					username:$("[name='username']").val(),
					password:$("[name='password']").val(),
					gourl:window.location.pathname},
			type:"post",
			success:function(data) {
				if(data.statuscode == 0) {
					alert(data.message);
				}
				else {
					if(data.goIndex != null) {
						window.location.href = "${contextPath }/";
					} 
					else {
						window.location.reload();
					}
				}
			}
		});
	});
	
});  
</script>
 </body>
</html>