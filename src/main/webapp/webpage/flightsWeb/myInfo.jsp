<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>我的信息</title> 
  <link href="${contextPath }/css/cui110425.css" type="text/css" rel="stylesheet" />
  <link href="${contextPath }/css/private_account.css" type="text/css" rel="stylesheet" />
  <jsp:include page="common/link.jsp" ></jsp:include>
  <style>h3{margin-top:0px;}</style>
 </head> 
<body id="page6">
<div class="main">
<jsp:include page="common/header.jsp" ></jsp:include>
<!-- 个人信息 -->
<div id="info_id" class="box01 box01_c">
		<div id="info_title_id" class="box_hd hd02">
			<h3>个人信息</h3>
		</div>
			<div class="box_bd account_form" style="display: block;" id="info_display_id">
                <ul style="display: block;" class="view_model">
                        <li style=" display:none">
                            <label class="tit">登录名</label><span></span><b href="#" data-role="jmp" data-params="{options: {&quot;template&quot;:&quot;#jmp_alert&quot;}}" id="icoLoginName1" class="ico_tips1"></b>
                        </li>
                        <li class="li_edit_mobile" id="li_edit_mobile">
                            <label class="tit">手机</label><span>${customer.mobilePhone }</span><a class="ml10" target="_self" href="JavaScript:void(0);">更换手机</a>
                        </li>
                        <li class="li_edit_email" id="li_edit_email">
                            <label class="tit">邮箱</label><span>${customer.email }</span><a class="ml10" target="_self" href="JavaScript:void(0);">更换邮箱</a>
                        </li>
                        <li id="li_edit_nickname">
                            <label class="tit">昵称</label><span class="val">${customer.nickName == null? '未设置': customer.nickName}</span>
                        </li>
                        <li id="li_edit_username">
                            <label class="tit">姓名</label><span class="val">${customer.realName == null? '未设置': customer.realName}</span>
                        </li>
                        <li id="li_edit_sex" class="li_sex">
                            <label class="tit">性别</label><span class="val_sex">${customer.sex == null? '未设置': customer.sex}</span>
                        </li>
                        <li id="li_edit_birth">
                            <label class="tit">生日</label><span class="val">${customer.birthday == null? '未设置': customer.birthday}</span>
                        </li>
                        <li id="li_edit_tel">
                            <label class="tit">联系固话</label><span class="val">${customer.phone == null? '未设置': customer.phone}</span>
                        </li>
                        <li>
                            <label class="tit">&nbsp;</label><button id="button_edit" class="btn_l3" type="button" onclick="goEdit()"><span><em>编辑</em></span></button>
                            <p class="check_tips" id="newNickNameVerfiyTip"><i></i>手机号和邮箱都可以作为登录账号</p>
                        </li>
                </ul>
				<form action="${contextPath }/updateMyInfo" method="post">
			    <ul class="edit_model" style="display: none;">
				        <li style=" display:none;">
                            <label class="tit">
                                登录名</label><span id="spanLoginName"></span><a href="#" data-role="jmp" data-params="{options: {&quot;template&quot;:&quot;#jmp_alert&quot;}}" id="icoLoginName" class="ico_tips1"></a>
                        </li>
                        <li class="li_edit_mobile" id="li_save_mobile">
                            <label class="tit">手机</label><span>${customer.mobilePhone }</span><a class="ml10" href="JavaScript:void(0);">修改</a>
                        </li>
                        <li class="li_edit_email" id="li_save_email">
                            <label class="tit">邮箱</label><span>${customer.email }</span><a class="ml10" href="JavaScript:void(0);">修改</a>
                        </li>
                        <li id="liNickName" class="">
                            <label class="tit">
                                昵称<em>*</em></label><input class="m_input w01" name="nickName" type="text" value=""><span id="tipNickName" class="tip_status" style="display: none;">4-30个字符，可由中英文字母、数字、“-”、"_"组成。</span><span id="icoNickName" style="display:none;" class="tip_status ico_pass"></span><span class="tip_status color"></span>
                        </li>
                        <li id="liName" class="">
                            <label class="tit">
                                姓名<em>*</em></label><input class="m_input w01" name="realName" type="text" value=""><span id="tipName" class="tip_status" style="display: none;">请输入真实姓名，不得超过10个汉字或20个英文字符。</span><span id="icoName" style="display:none;" class="tip_status ico_pass"></span>
                        </li>
                        <li id="liSex" class="li_sex">
                            <label class="tit">
                                性别<em>*</em></label><label class="base_label"><input class="sex" id="radioSexMan" type="radio" name="sex" value="男">男</label><label id="lblSexWoman" class="base_label"><input class="sex" id="radioSexWoman" type="radio" name="sex" value="女">女</label><span id="spanSex" style=" visibility:hidden;" class="tip_status"></span></li>
                        <li>
                            <label class="tit">
                                生日</label><input class="m_input w01 inputSel" name="birthday" type="text" placeholder="yyyy-mm-dd"><span id="icoBirth" style=" display:none;" class="tip_status ico_pass"></span> </li>
                        <li>
                            <label class="tit">
                                联系固话</label><input class="m_input w01" name="phone" type="text" value="" placeholder="区号-电话-分机"><span class="tip_status"></span>
                        </li>
                        

                        <li>
                        	<input type="hidden" name="id" value="${customer.id }"/>
                            <label class="tit">
                                &nbsp;</label><button id="btnSave" class="btn_l3" type="button" onclick="document.forms[0].submit()">
                                <span><em>保存</em></span></button>
                                <button id="btnSave" class="btn_l3" type="button" onclick="cancel();">
                                <span><em>取消</em></span></button>
                                <p class="check_tips" id="newNickNameVerfiyTip"><i></i>手机号和邮箱都可以作为登录账号</p>
                        </li>
			    </ul>
			    </form>
            </div>
	</div>
	
	<!-- 修改密码 -->
	<form action="${contextPath }/updateMyInfo" method="post">
	<div id="psd_id" class="box01 box01_c" style="margin-left:-2px;">
                    <div id="psd_title_id" class="box_hd hd02">
                        <h3>
                            修改登录密码<span id="spanWeakPwdTip"></span></h3>
                    </div>
                    <ul id="psd_display_id" class="box_bd account_form" style="display: block;">
                        <li id="liOldPwd" class="">
                            <label class="tit">
                                当前密码</label><input name="password" class="m_input w01" id="oldPwd" type="password" value=""><span id="tipOldPwd" class="tip_status" style="display: none;">请输入您的当前密码。</span>
                        </li>
                        <li id="liNewPwd" class="">
                            <label class="tit">
                                新密码</label><input name="newPassword" class="m_input w01" id="newPwd" type="password" onpaste="return false;"><span id="tipNewPwd" class="tip_status" style="display: none;">8-20位字符，可由英文字母、数字和符号组成，不能含空格。</span>
                        </li>
                        <li>
                            <label class="tit">
                                确认新密码</label><input class="m_input w01" id="confirmNewPwd" type="password" onpaste="return false;"><span class="tip_status"></span> </li>
                        <li>
                        	<input type="hidden" name="id" value="${customer.id }"/>
                            <label class="tit">
                                &nbsp;</label>
                            <button class="btn_l3" id="btnPwdSave" type="button" style="margin-left: -5px" onclick="savePwd();">
                                <span><em>保存</em></span></button>
                        </li>
                    </ul>
                </div>
			</form>
<script>
	window.onload = function() {
		if('${message}' != '')
			alert('${message}');
	};

	function goEdit() {
		var edit_model = document.getElementsByClassName("edit_model")[0];
		var view_model = document.getElementsByClassName("view_model")[0];
		view_model.setAttribute("style","display: none;");
		edit_model.setAttribute("style","display: block;");
		var items = document.getElementsByClassName("val");
		var input_items = document.getElementsByClassName("m_input");
		for(var i in items) {
			var value = items[i].innerHTML;
			if(value == '未设置') value = '';
			input_items[i].value = value;
		}
		var sex = document.getElementsByClassName("val_sex")[0].innerHTML;
		var sex_input = document.getElementsByName("sex");
		for(var i in sex_input) {
			if(sex_input[i].value == sex)
				sex_input[i].setAttribute("checked","checked");
		}
	}
	
	function cancel() {
		var edit_model = document.getElementsByClassName("edit_model")[0];
		var view_model = document.getElementsByClassName("view_model")[0];
		view_model.setAttribute("style","display: block;");
		edit_model.setAttribute("style","display: none;");
	}
	
	function savePwd() {
		var p1 = document.getElementById('newPwd').value;
		var p2 = document.getElementById('confirmNewPwd').value;
		if(p1 != p2) alert("确认密码不一致！");
		else document.forms[1].submit();
	}
</script>
<jsp:include page="common/footer.jsp" ></jsp:include>
</div>
 </body>
</html>