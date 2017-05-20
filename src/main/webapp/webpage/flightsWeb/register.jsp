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
  <title>注册</title> 
  
  	<link rel="stylesheet" href="${contextPath }/css/base.css" />
	<link rel="stylesheet" href="${contextPath }/css/layout1.css"/>
	<script src="${contextPath }/js/jquery-1.11.3.min.js"></script>
	<jsp:include page="common/link.jsp" ></jsp:include>
	
	<script>
		$(function(){
			if('${message}' == 'success') {
				alert('注册成功，即将跳转登录页面...');
				window.location.href = "${contextPath}/intoCustomerLogin";
			}
			else if('${message}' != '') {
				alert('${message}');
			}
		});
	</script>
 </head> 
<body id="page6">
<div class="main">
<jsp:include page="common/header.jsp"></jsp:include>
 	<div id="wrapper">
		<div class="container w960 mt20">
			<div id="processor" >
				<ol class="processorBox oh">
					<li class="current">
						<div class="step_inner fl">
							<span class="icon_step">1</span>
							<h4>邮箱注册</h4>
						</div>
					</li>
					<li>
						<div class="step_inner">
							<span class="icon_step">2</span>
							<h4>手机注册</h4>
						</div>
					</li>
				</ol>
			</div>
			<div class="content">
				<div id="step1" class="step hide">
					<form action="${contextPath }/customerRegister" method="post" id="step1_frm">
						<div class="frm_control_group">
							<label class="frm_label">邮箱</label>
							<div class="frm_controls">
								<input type="text" name="email" class="frm_input email" maxlength="32" onblur="checkRegister(this)"/>
								<p class="frm_tips">请填写常用邮箱</p>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">密码</label>
							<div class="frm_controls">
								<input type="password" name="password" class="frm_input passwd"/>
								<p class="frm_tips">字母、数字或者英文符号，最短6位，区分大小写</p>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">再次输入密码</label>
							<div class="frm_controls">
								<input type="password" name="" class="frm_input passwd2"/>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">邮件验证码</label>
							<div class="frm_controls verifycode">
								<input type="text" name="verifycode" class="frm_input verifyCode" maxlength="4" value="666"/>
								<input type="button" value="获取验证码" class="btn btn_default" />
							</div>
						</div>
						<div class="toolBar">
							<a id="nextBtn" class="btn btn_primary" href="javascript:document.forms[0].submit();">提交</a>
						</div>
					</form>
				</div><!-- // step1 end -->
				<div id="step3" class="step hide">
					<form action="${contextPath }/customerRegister" method="post" id="step3_frm">
						<div class="frm_control_group">
							<label class="frm_label">手机号</label>
							<div class="frm_controls">
								<input type="text" name="mobilePhone" id="mobilePhone" class="frm_input phone" onblur="checkRegister(this)"/>
								<p class="frm_tips">请填写常用手机号</p>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">密码</label>
							<div class="frm_controls">
								<input type="password" name="password" class="frm_input passwd"/>
								<p class="frm_tips">字母、数字或者英文符号，最短6位，区分大小写</p>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">再次输入密码</label>
							<div class="frm_controls">
								<input type="password" name="" class="frm_input passwd2"/>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">手机验证码</label>
							<div class="frm_controls">
								<input type="text" name="verifycode" class="frm_input phoneYzm" value="666"/>
								<input type="button" value="获取验证码" class="btn btn_default" />
							</div>
						</div>
						<div class="toolBar">
							<a id="finishedBtn" class="btn btn_primary" href="javascript:document.forms[1].submit();">提交</a>
						</div>
					</form>
				</div><!-- // step3 end -->
			</div>
		</div><!-- // container end -->
	</div><!-- // wrapper end -->
	
	<script> 
		function checkRegister(e) {
			var email = $('.email').val();
			var mobilePhone = $('#mobilePhone').val();
			$.ajax({
				url : "${contextPath}/checkRegister",
				data : {"email":email, "mobilePhone":mobilePhone},
				type : "post",
				success:function(data) {
					if(data.message != "success") {
						alert(data.message);
						e.focus();
					}				
				}
			});
		}
	
		//显示提示框，目前三个参数(txt：要显示的文本；time：自动关闭的时间（不设置的话默认1500毫秒）；status：默认0为错误提示，1为正确提示；)
		function showTips(txt,time,status)
		{
			var htmlCon = '';
			if(txt != ''){
				if(status != 0 && status != undefined){
					htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:#4AAF33;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="${contextPath}/images/ok.png" style="vertical-align: middle;margin-right:5px;" alt="OK，"/>'+txt+'</div>';
				}else{
					htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:#D84C31;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="${contextPath}/images/err.png" style="vertical-align: middle;margin-right:5px;" alt="Error，"/>'+txt+'</div>';
				}
				$('body').prepend(htmlCon);
				if(time == '' || time == undefined){
					time = 1500; 
				}
				setTimeout(function(){ $('.tipsBox').remove(); },time);
			}
		}
		
		$(function(){
			//AJAX提交以及验证表单
			$('#nextBtn').click(function(){
				var email = $('.email').val();
				var passwd = $('.passwd').val();
				var passwd2 = $('.passwd2').val();
				var verifyCode = $('.verifyCode').val();
				var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
				if(email == ''){
					showTips('请填写您的邮箱~');
				}else if(!EmailReg.test(email)){
					showTips('您的邮箱格式错咯~');
				}else if(passwd == ''){
					showTips('请填写您的密码~');
				}else if(passwd2 == ''){
					showTips('请再次输入您的密码~');
				}else if(passwd != passwd2 || passwd2 != passwd){
					showTips('两次密码输入不一致呢~');
				}else if(verifyCode == ''){
					showTips('请输入验证码~');
				}else{
					showTips('提交成功~ 即将进入下一步',2500,1);
					//此处省略 ajax 提交表单 代码...
				}
			});
			
			//切换步骤（目前只用来演示）
			$('.processorBox li').click(function(){
				var i = $(this).index();
				$('.processorBox li').removeClass('current').eq(i).addClass('current');
				$('.step').fadeOut(300).eq(i).fadeIn(500);
			});
		});
	</script>

<jsp:include page="common/footer.jsp" ></jsp:include>
</div>
 </body>
</html>