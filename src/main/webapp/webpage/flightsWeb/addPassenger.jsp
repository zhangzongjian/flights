<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>添加乘客</title> 
  <link href="http://webresource.c-ctrip.com/ResFlightOnline/R2/css/book.css" type="text/css" rel="stylesheet" />

 </head> 
 <body > 

<div class="main" id="J_main" style="">

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
       
       <!-- 常用乘客 -->
       <div id="J_cpList" bind-xclass="{hide:commonListModel &amp;&amp; commonListModel.showList &amp;&amp; commonListModel.showList.length==0}" class="passengers-list">
        <ul class="passengers c-repeat_10" style="display: block;">
         <li><i class="ico-frequent-flyer  hide "></i> <a title="   " href="javascript:;" ubt="FindPassenger_Check" class="passenger  current  " c-bind-click="onClickPassenger(44938099)">李四<i class="ico-pass-selected"></i></a></li>
         <li><i class="ico-frequent-flyer  hide "></i> <a title="   " href="javascript:;" ubt="FindPassenger_Check" class="passenger  " c-bind-click="onClickPassenger(44938098)">张三<i class="ico-pass-selected"></i></a></li>
        </ul>
       </div>
       
      </div>
     </div>
     <div id="J_passengerList" style="transition: height 366ms; height: 215px;">
      <div id="passengerMain" class="c-slidedown_14"> 
      <!-- 乘客1 -->
       <div class="basic-card J_passenger" style="width: 900px">
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
            <input id="p_card_no_0" bind-xclass="{'text-transform-uppercase':passengerList[0].isCalBirthdayCardType() }" c-formatter-on="passengerList[0].isCalBirthdayCardType() " c-formatter-options="{segments: [6, 8, 4] ,separator: ' ',keepSeparators: false}" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" bind-value="&lt;&lt;passengerList[0].idCardNo&gt;&gt;" data-cformatter="{&quot;segments&quot;:[6,8,4],&quot;separator&quot;:&quot; &quot;,&quot;keepSeparators&quot;:false}" c-bind-blur="onBlurIDCardNo(passengerList[0],0)" />
            <label for="p_card_no_0" class="form-input-hint">姓名，请与登机证件姓名保持一致</label>
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
            <input id="p_card_no_0" bind-xclass="{'text-transform-uppercase':passengerList[0].isCalBirthdayCardType() }" c-formatter-on="passengerList[0].isCalBirthdayCardType() " c-formatter-options="{segments: [6, 8, 4] ,separator: ' ',keepSeparators: false}" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" bind-value="&lt;&lt;passengerList[0].idCardNo&gt;&gt;" data-cformatter="{&quot;segments&quot;:[6,8,4],&quot;separator&quot;:&quot; &quot;,&quot;keepSeparators&quot;:false}" c-bind-blur="onBlurIDCardNo(passengerList[0],0)" />
            <label for="p_card_no_0" class="form-input-hint">登机证件号码</label>
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
            <input id="p_card_no_0" bind-xclass="{'text-transform-uppercase':passengerList[0].isCalBirthdayCardType() }" c-formatter-on="passengerList[0].isCalBirthdayCardType() " c-formatter-options="{segments: [6, 8, 4] ,separator: ' ',keepSeparators: false}" class="form-input J_input text-transform-uppercase c-input_4 form-input-hasvalue c-formatter_3" type="text" maxlength="18" bind-value="&lt;&lt;passengerList[0].idCardNo&gt;&gt;" data-cformatter="{&quot;segments&quot;:[6,8,4],&quot;separator&quot;:&quot; &quot;,&quot;keepSeparators&quot;:false}" c-bind-blur="onBlurIDCardNo(passengerList[0],0)" />
            <label for="p_card_no_0" class="form-input-hint">乘机人手机号码，用于接收航变信息，请准确填写</label>
           </div>
          </div> 
         </div>
        </div>
        
        
        <!------>
								<div class="extra-box">
									<div class="flight-info " style="width:400px">
										<div class="flight-city">
											<div class="flt-date">
												05-08 <span class="week">周一</span>
											</div>
											<div class="flt-depart">广州</div>
											&nbsp;
											<div class="flt-arrow">
												<i class="ico-arrow"></i>
											</div>
											&nbsp;
											<div class="flt-arrive">大连</div>
										</div>
										<div class="flight-tit">
											<span class="flt-airline"><img alt="" height="16"
												width="16"
												src="http://pic.c-ctrip.com/flight_intl/airline_logo/32/aq.png" />
												九元航空 AQ1037 </span> <span class="plane-type">波音 737-800</span> <span
												class="flt-seat">经济舱</span>
										</div>
										<div class="flight-detail">
											<div class="flt-depart">
												<span class="time">06:15</span> <span class="airport">白云国际机场</span>
											</div>
											<div class="flt-arrow flt-transfer">
												<div class="cost-time">
													<i class="ico-clock"></i>4h55m
												</div>
												<div class="timeline">
													<i class="dot"></i> <i class="dot dot-end"></i>
												</div>
											</div>
											<div class="flt-arrive">
												<span class="time">11:10</span>
												<span class="airport">周水子国际机场</span>
											</div>
										</div>
									</div>
								</div>
								<!----->
								
        <div class="passenger-num">
         <i class="ico-num-1">1</i>
        </div>
       </div>
       <!-- 乘客1 end-->
       
      </div>
     </div>
    </div>
   </div>
   
   <div id="J_contact">
    <div class="contact-box">
     <div class="box-tit">
      <h2>联系人</h2>
     </div>
     <div class="basic-card">
      <div class="form-line">
       <div class="form-item contact-phone">
        <div class="form-select c-dropdown_2" c-dropdown-toggle="">
         <div class="form-select-txt">
          <span c-dropdown-label="" bind-text="&lt;&lt;contact.PhonePrefix&gt;&gt;">姓名</span>
          <i class="ico-caret-down"></i>
         </div>
        </div>
        <input id="I_contact_phone" c-formatter-on="useFormat" c-formatter-options="{segments: [3, 4, 4],keepSeparators: true}" type="text" maxlength="11" class="form-input c-formatter_3 c-input_4 form-input-hasvalue" bind-value="&lt;&lt;contact.MobilePhone&gt;&gt;" data-cformatter="{&quot;segments&quot;:[3,4,4],&quot;separator&quot;:&quot; &quot;,&quot;keepSeparators&quot;:true}" c-bind-blur="onBlurContactMobile()" />
        <label for="I_contact_phone" class="form-input-hint">中文或英文姓名</label>
       </div>
       <div class="form-item contact-phone">
        <div class="form-select c-dropdown_2" c-dropdown-toggle="">
         <div class="form-select-txt">
          <span c-dropdown-label="" bind-text="&lt;&lt;contact.PhonePrefix&gt;&gt;">手机</span>
          <i class="ico-caret-down"></i>
         </div>
        </div>
        <input id="I_contact_phone" c-formatter-on="useFormat" c-formatter-options="{segments: [3, 4, 4],keepSeparators: true}" type="text" maxlength="11" class="form-input c-formatter_3 c-input_4 form-input-hasvalue" bind-value="&lt;&lt;contact.MobilePhone&gt;&gt;" data-cformatter="{&quot;segments&quot;:[3,4,4],&quot;separator&quot;:&quot; &quot;,&quot;keepSeparators&quot;:true}" c-bind-blur="onBlurContactMobile()" />
        <label for="I_contact_phone" class="form-input-hint">手机号码，接收航变信息</label>
       </div>
      </div>
     </div>
    </div>
   </div>
   
   <div class="action-box">
    <a ubt="next" data-ui-action="main_createOrder" id="J_saveOrder" href="javascript:void(0);" class="button" content="下一步">下一步</a>
   </div>
  </div>
</div>

 </body>
</html>