<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>添加乘客</title> 
  <link href="${contextPath }/css/book.css" type="text/css" rel="stylesheet" />

 </head> 
 
 <body > 
<script>
 	//window.onload = function() {alert('${ticketPriceId}');};
</script>
<div class="main" id="J_main" style="">
<form action="${contextPath }/saveOrder">
<div id="J_step1" style="display: block;">
   <div id="J_bookAttention"> 
   </div>
   <div id="_passenger">
    <div id="J_header"></div>
    <div class="passenger-box">
     <div class="box-tit" id="J_passengerHeader">
      <h2>乘客</h2>
      <div id="J_psgAlert" class="notice-tips"></div>
     </div>
     <div id="J_commonListCtx" data-mod="commonList">
      <div class="passenger-select" bind-xclass="{hide:isHide}">
       
      </div>
     </div>
     <div id="J_passengerList" style="transition: height 366ms; height: 215px;">
      <div id="passengerMain" class="c-slidedown_14"> 
      <!-- 乘客1 -->
      <c:forEach begin="1" end="${passengerCount }" var="i">
       <div class="basic-card J_passenger" style="width: 460px">
        <div class="passenger-info">
         <div class="form">
          <div class="form-line passenger-identity">
           <div class="form-item">
            <div class="form-select c-dropdown_2" c-dropdown-toggle="">
             <div class="form-select-txt">
              <span c-dropdown-label="" bind-text="&lt;&lt;idCardTypes[passengerList[0].idCardType]&gt;&gt;">姓名</span>
              <i class="ico-caret-down"></i>
             </div>
            </div>
           </div>&nbsp;
           <div bind-xclass="{'form-error':passengerList[0].showErrors.cardNo||(passengerList[0].idCardType==1&amp;&amp;passengerList[0].showErrors.birthday)}" class="form-item">
            <input id="p_card_no_0" name="passengerName" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" placeholder="姓名，请与登机证件姓名保持一致"/>
           </div>
          </div>
          <div class="form-line passenger-identity">
           <div class="form-item">
            <div class="form-select c-dropdown_2" c-dropdown-toggle="">
             <div class="form-select-txt">
              <span c-dropdown-label="" bind-text="&lt;&lt;idCardTypes[passengerList[0].idCardType]&gt;&gt;">身份证</span>
              <i class="ico-caret-down"></i>
             </div>
            </div>
           </div>&nbsp;
           <div bind-xclass="{'form-error':passengerList[0].showErrors.cardNo||(passengerList[0].idCardType==1&amp;&amp;passengerList[0].showErrors.birthday)}" class="form-item">
            <input id="p_card_no_0" name="passengerCard" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" placeholder="登机证件号码" />
           </div>
          </div>
          <div class="form-line passenger-identity">
           <div class="form-item">
            <div class="form-select c-dropdown_2" c-dropdown-toggle="">
             <div class="form-select-txt">
              <span c-dropdown-label="" bind-text="&lt;&lt;idCardTypes[passengerList[0].idCardType]&gt;&gt;">手机号码</span>
              <i class="ico-caret-down"></i>
             </div>
            </div>
           </div>&nbsp;
           <div bind-xclass="{'form-error':passengerList[0].showErrors.cardNo||(passengerList[0].idCardType==1&amp;&amp;passengerList[0].showErrors.birthday)}" class="form-item">
            <input id="p_card_no_0" name="mobilePhone" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" placeholder="乘机人手机号码，用于接收航变信息" />
           </div>
          </div> 
         </div>
        </div>
        
								
        <div class="passenger-num">
         <i class="ico-num-${i }">${i }</i>
        </div>
       </div>
       </c:forEach>
       
				
<div class="basic-card J_passenger" style="width: 460px;height: 133px">
   <div id="J_contact" >
    <div class="contact-box">
     <div class="box-tit">
      <h2>联系人</h2>
     </div>
     <div class="basic-card" style="width:440px">
      <div class="form-line" style="margin-left:22px">
       <div class="form-item contact-phone">
        <div class="form-select c-dropdown_2" c-dropdown-toggle="">
         <div class="form-select-txt">
          <span c-dropdown-label="" bind-text="&lt;&lt;contact.PhonePrefix&gt;&gt;">姓名</span>
          <i class="ico-caret-down"></i>
         </div>
        </div>
        <input id="I_contact_phone" name="person" class="form-input c-formatter_3 c-input_4 form-input-hasvalue" placeholder="订票人" />
       </div>
       <div class="form-item contact-phone">
        <div class="form-select c-dropdown_2" c-dropdown-toggle="">
         <div class="form-select-txt">
          <span c-dropdown-label="" bind-text="&lt;&lt;contact.PhonePrefix&gt;&gt;">手机</span>
          <i class="ico-caret-down"></i>
         </div>
        </div>
        <input id="I_contact_phone" name="phone" type="text" maxlength="11" class="form-input c-formatter_3 c-input_4 form-input-hasvalue" placeholder="订票人手机号码" />
       </div>
      </div>
     </div>
    </div>
   </div>
   </div>		
   <div class="action-box" style="width:480px">
    <a ubt="next" id="J_saveOrder" href="javascript:document.forms[0].submit();" class="button" content="提交订单">提交订单</a>
    <input type="hidden" name="ticketPriceId" value="${ticketPriceId}"/>
   </div>
								
       <!-- 乘客1 end-->
       
      </div>
     </div>
    </div>
   </div>
   
   
  </div>
  </form>
</div>

 </body>
</html>