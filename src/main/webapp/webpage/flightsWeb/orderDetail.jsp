<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>订单详情</title> 
  <link href="http://webresource.c-ctrip.com/styles/common/cui101103.css?101018.css&ReleaseNo=U8177_2013_04_18_18_43_03" type="text/css" rel="stylesheet" />
  <link href="http://webresource.c-ctrip.com/ResFlightOnline/R2/Booking/css/fltdomestic111027/ordermanage_flt.css?ReleaseNo=CR2017_04_26_02_50_06" type="text/css" rel="stylesheet" />
  <link href="http://webresource.c-ctrip.com/styles/common/public_flights_logo.css?ReleaseNo=U8177_2013_04_18_18_43_03" type="text/css" rel="stylesheet" />
  
 </head> 
 <body > 

<div class="hotal_body_shadow">
    <div class="body_printlist">
        <!--订单基本信息-->
        
<div class="hotel_detail_money">
    <table width="100%">
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" class="flt_order_info" style="width: 310px">
                    <tr>
                        <td>
                            ·订单状态：<b>已取消</b><br />

                            ·订单号：3615014158<br />

                            ·预订日期：2017-04-07<br />

                        </td>
                    </tr>
                </table>
            </td>
            <td class="flight_detail_price">
                <p>
                    总金额：<span class="base_price">
                        RMB
                        672
                    </span>
                </p>
            </td>
        </tr>
    </table>
</div>

        <!--航班信息-->
<div class="box-order-section">
    <div class="con-left-outer">
        <div class="con-left">
                    <div class="box-flight-route clearfix ">
                        <div class="type">
                            行程
                        </div>
                                    <div class="line-flight-title clearfix" >


                                            <span class="date">2017-04-13</span><span class="venue">广州&mdash;西安</span>
                                        <span class="person">
                                                <span>李四</span>
                                        </span>
                                   </div>
                                
                                    <div class="line-flight-info">
<ul class="clearfix">
    <li class="company">
            <strong class="pubFlights_aq name">九元航空</strong>
        <p>
            <strong class="mr15">AQ1105</strong><a href="http://flights.ctrip.com/actualtime/fno--AQ1105-20170413.html" target="_blank">航班动态</a>
        </p>
        <p>
                <span class="f-gray mr15">
                    经济舱
                </span>
                <span class="f-gray mr5">计划机型</span>
                    <span class="f-txtblack" crafttype="738" tag="craft">738</span>
        </p>
    </li>
    <li class="departure">
        <span class="time">06:10</span>
        <div class="airport">
            <p>

白云国际机场                        <span class="f-txtblue fn-nowrap" smsnamedesc="白云国际机场航站楼" tag="smsName"></span>
            </p>
        </div>
    </li>
    <li class="stop ">
        <i class="ico-order i-order-arrow-xl"></i>
    </li>
    <li class="arrive">
        <span class="time">08:40</span>
        <span class="long"><i class="ico-order i-order-clock"></i>2h30m</span>
        <div class="airport">
            <p>
咸阳国际机场                        <span class="f-txtblue fn-nowrap" smsnamedesc="咸阳国际机场3号航站楼" tag="smsName">T3</span>
            </p>
        </div>
    </li>
    <li class="seat">
        <table class="table-seat">
        </table>
    </li>
</ul>

                                    </div>
                    </div>
        </div>
    </div>
</div>

        <!--乘客信息-->
<ul>
    <li class="hotel_detail_info">乘客信息</li>
    <li>
        <table class="flight_passenger_table">
            <tbody>
                        <tr>
                            <td style="width: 15px;">
                                &nbsp;
                            </td>
                            <td style="width: 203px;">
                                ·乘客信息：李四
                            </td>
                            <td style="width: 183px;">
                                ·证件类型：身份证
                            </td>
                            <td style="width: 183px;">
                                ·证件号码：441702**********39
                            </td>
                            <td>&nbsp; </td>
                        </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td colspan="4">
                                    ·手机号码：
                                    156****5133
                                </td>
                            </tr>
                        <tr>
                            <td colspan="7" style='display: none'>
                                <div class="flight_grayline">
                                </div>
                            </td>
                        </tr>
            </tbody>

        </table>
    </li>
</ul>

        <!--联系人信息-->

<!--联系人信息-->
<ul>
    <li class="hotel_detail_info">联系人信息</li>
    <li>
        <table class="hotel_detail_table">
            <tbody>
                <tr>
                    <td style="width: 15px;">&nbsp;</td>
                    <td style="width: 233px;">·联系人姓名：张三 </td>
                    <td style="width: 230px;">·手机号码：156****5133 </td>
                </tr>
            </tbody>
        </table>
    </li>
</ul>

        <!--支付信息-->

<ul>
    <li class="hotel_detail_info">支付信息</li>
    <li>
        <table class="flight_detail_table" id="payInfo">
            <tbody>
                <tr>
                    <td style="width: 15px;">
                        &nbsp;
                    </td>
                    <td style="width: 386px;">
                        ·支付类型：微信
                    </td>
                    <td style="width: 183px;">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        ·微信：RMB<span class="base_price"><strong>672 </strong></span>元
                    </td>
                    <td>
                        ·现金账户支付：RMB<span class="base_price"><strong>0 </strong></span>元
                    </td>
                    
                </tr>
            </tbody>
        </table>
    </li>
</ul>
    </div>
</div>



        <div class="btnbox_printlist bottombtn_printlist">
            <input type="button" value="打印订单" class="base_btns2" onclick="window.print();" />
            <input type="button" value="关闭窗口" class="base_btns2" onclick="closeWindow();" />
        </div>


 </body>
</html>