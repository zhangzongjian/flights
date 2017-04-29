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
  <link href="https://sinfo.ctrip.com/MyInfo/Styles/common/cui110425.css" type="text/css" rel="stylesheet" />
  <link href="https://webresource.c-ctrip.com/resh5platformonline/R7/online/my/private_account.css" type="text/css" rel="stylesheet" />
  <link href="https://webresource.c-ctrip.com/ResCRMOnline/R1/pageheader/css/PageHeader_v2.css?temp=20170421" rel="stylesheet" />
 </head> 
 <body > 

<div id="info_id" class="box01 box01_c">
		<div id="info_title_id" class="box_hd hd02">
			<h3>个人信息</h3>
		</div>
			<div class="box_bd account_form" style="display: block;" id="info_display_id">
                <ul style="visibility: visible; display: ;" class="view_model">
                        <li style=" display:none">
                            <label class="tit">登录名</label><span></span><b href="#" data-role="jmp" data-params="{options: {&quot;template&quot;:&quot;#jmp_alert&quot;}}" id="icoLoginName1" class="ico_tips1"></b>
                        </li>
                        <li class="li_edit_mobile" id="li_edit_mobile">
                            <label class="tit">手机</label><span>156****5135</span><a class="ml10" target="_self" href="https://accounts.ctrip.com/AccountsCenter/AccountCenter/AccountSecurity.aspx?v=mobile">修改</a>
                        </li>
                        <li class="li_edit_email" id="li_edit_email">
                            <label class="tit">邮箱</label><span>1****6@qq.com</span><a class="ml10" target="_self" href="https://accounts.ctrip.com/AccountsCenter/AccountCenter/AccountSecurity.aspx?v=email">验证</a>
                        </li>
                        <li id="li_edit_nickname">
                            <label class="tit">昵称</label><span class="val">未设置</span><span class="val reviewed"></span>
                        </li>
                        <li id="li_edit_username">
                            <label class="tit">姓名</label><span class="val">未设置</span>
                        </li>
                        <li id="li_edit_sex" class="li_sex">
                            <label class="tit">性别</label><span class="val">未设置</span>
                        </li>
                        <li id="li_edit_birth">
                            <label class="tit">生日</label><span class="val">未设置</span>
                        </li>
                        <li id="li_edit_tel">
                            <label class="tit">联系固话</label><span class="val">未设置</span>
                        </li>
                        <li>
                            <label class="tit">&nbsp;</label><button id="button_edit" class="btn_l3" type="button"><span><em>编辑</em></span></button>
                            <p class="check_tips" id="newNickNameVerfiyTip"><i></i>手机号和邮箱都可以作为登录账号</p>
                        </li>
                </ul>
			    <ul class="edit_model" style="display: block;">
				        <li style=" display:none;">
                            <label class="tit">
                                登录名</label><span id="spanLoginName"></span><a href="#" data-role="jmp" data-params="{options: {&quot;template&quot;:&quot;#jmp_alert&quot;}}" id="icoLoginName" class="ico_tips1"></a>
                        </li>
                        <li class="li_edit_mobile" id="li_save_mobile">
                            <label class="tit">手机</label><span>156****5135</span><a class="ml10" href="https://accounts.ctrip.com/AccountsCenter/AccountCenter/AccountSecurity.aspx?v=mobile">修改</a>
                        </li>
                        <li class="li_edit_email" id="li_save_email">
                            <label class="tit">邮箱</label><span>1****6@qq.com</span><a class="ml10" href="https://accounts.ctrip.com/AccountsCenter/AccountCenter/AccountSecurity.aspx?v=email">验证</a>
                        </li>
                        <li id="liNickName" class="">
                            <label class="tit">
                                昵称<em>*</em></label><input class="m_input w01" id="nickName" type="text" value=""><span id="tipNickName" class="tip_status" style="display: none;">4-30个字符，可由中英文字母、数字、“-”、"_"组成。</span><span id="icoNickName" style="display:none;" class="tip_status ico_pass"></span><span class="tip_status color"></span>
                        </li>
                        <li id="liName" class="">
                            <label class="tit">
                                姓名<em>*</em></label><input class="m_input w01" id="name" type="text" value=""><span id="tipName" class="tip_status" style="display: none;">请输入真实姓名，不得超过10个汉字或20个英文字符。</span><span id="icoName" style="display:none;" class="tip_status ico_pass"></span>
                        </li>
                        <li id="liSex" class="li_sex">
                            <label class="tit">
                                性别<em>*</em></label><label class="base_label"><input class="sex" id="radioSexMan" type="radio" name="sex" value="man">男</label><label id="lblSexWoman" class="base_label"><input class="sex" id="radioSexWoman" type="radio" name="sex" value="woman">女</label><span id="spanSex" style=" visibility:hidden;" class="tip_status"></span></li>
                        <li>
                            <label class="tit">
                                生日</label><input class="m_input w01 inputSel" id="birth" type="text" _cqnotice="yyyy-mm-dd"><span id="icoBirth" style=" display:none;" class="tip_status ico_pass"></span> </li>
                        <li>
                            <label class="tit">
                                联系固话</label><input class="m_input w01" id="name" type="text" value=""><span class="tip_status"></span>
                        </li>
                        

                        <li>
                            <label class="tit">
                                &nbsp;</label><button id="btnSave" class="btn_l3" type="button">
                                <span><em>保存</em></span></button>
                                <p class="check_tips" id="newNickNameVerfiyTip"><i></i>手机号和邮箱都可以作为登录账号</p>
                        </li>
			    </ul>
            </div>
	</div>


 </body>
</html>