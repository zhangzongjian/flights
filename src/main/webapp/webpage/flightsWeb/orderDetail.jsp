<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                            ·订单状态：<b>${orderDetail.orderstatus }</b><br />

                            ·订单号：${orderDetail.orderno }<br />

                            ·预订时间：<fmt:formatDate value="${orderDetail.ordertime }" pattern="yyyy-MM-dd"/><br />

                        </td>
                    </tr>
                </table>
            </td>
            <td class="flight_detail_price">
                <p>
                    总金额：<span class="base_price" id="base_price">
                        RMB
                        <c:if test="${orderDetail.discounttype == null && orderDetail.dprice != null}">
	                        <c:set var="price" value="${orderDetail.dprice * orderDetail.passengerCount }"/>
							<c:out value="${price}"/>
						</c:if>
						<c:if test="${orderDetail.discounttype == null && orderDetail.dprice == null}">
							<c:set var="price" value="${orderDetail.price * orderDetail.passengerCount }"/>
							<c:out value="${price}"/>
						</c:if>
						<c:if test="${orderDetail.discounttype != null }">
							<c:set var="price" value="${orderDetail.price * orderDetail.discountrate * orderDetail.passengerCount}"/>
							<c:out value="${price}"/>
						</c:if>
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


                                            <span class="date"><fmt:formatDate value="${orderDetail.starttime }" pattern="yyyy-MM-dd"/></span><span class="venue">${orderDetail.startAirportCity }&mdash;${orderDetail.arrivalAirportCity }</span>
                                        <span class="person">
                                        		<c:forEach items="${orderDetail.passenger }" var="passenger">
                                                <span>${passenger.passengerName }</span>
                                                </c:forEach>
                                        </span>
                                   </div>
                                
                                    <div class="line-flight-info">
<ul class="clearfix">
    <li class="company">
            <strong class="pubFlights_aq name">${orderDetail.companyname }</strong>
        <p>
            <strong class="mr15">${orderDetail.flightno }</strong><a href="${contextPath }/flightDT?flightno=${orderDetail.flightno }&startTime=${orderDetail.starttime}">航班动态</a>
        </p>
        <p>
                <span class="f-gray mr15">
                    ${orderDetail.classtype }
                </span>
                <span class="f-gray mr5">${orderDetail.planetype }</span>
                    <span class="f-txtblack" >${orderDetail.planeversion }</span>
        </p>
    </li>
    <li class="departure">
        <span class="time"><fmt:formatDate value="${orderDetail.starttime }" pattern="HH:mm"/></span>
        <div class="airport">
            <p>

${orderDetail.startAirportName }                        <span class="f-txtblue fn-nowrap"></span>
            </p>
        </div>
    </li>
    <li class="stop ">
        <i class="ico-order i-order-arrow-xl"></i>
    </li>
    <li class="arrive">
        <span class="time"><fmt:formatDate value="${orderDetail.arrivaltime }" pattern="HH:mm"/></span>
        <div class="airport">
            <p>
${orderDetail.arrivalAirportName }                        <span class="f-txtblue fn-nowrap"></span>
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
    <c:forEach items="${orderDetail.passenger }" var="passenger" varStatus="i">
    <c:if test="${i.index != 0}"><br/></c:if>
    <li>
        <table class="flight_passenger_table">
            <tbody>
                        <tr>
                            <td style="width: 15px;">
                                &nbsp;
                            </td>
                            <td style="width: 203px;">
                                ·乘客信息：${passenger.passengerName }
                            </td>
                            <td style="width: 183px;">
                                ·证件类型：身份证
                            </td>
                            <td style="width: 183px;">
                                ·证件号码：${passenger.passengerCard }
                            </td>
                            <td>&nbsp; </td>
                        </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td colspan="4">
                                    ·手机号码：
                                    ${passenger.mobilePhone }
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
    </c:forEach>
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
                    <td style="width: 233px;">·联系人姓名：${orderDetail.person } </td>
                    <td style="width: 230px;">·手机号码：${orderDetail.phone } </td>
                </tr>
            </tbody>
        </table>
    </li>
</ul>

        <!--支付信息-->
<c:if test="${orderDetail.orderstatus != '未付款' }">
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
                        ·微信：RMB<span class="base_price"><strong><c:out value="${price}"/> </strong></span>元
                    </td>
                    <td>
                        ·现金账户支付：RMB<span class="base_price"><strong>0 </strong></span>元
                    </td>
                    
                </tr>
            </tbody>
        </table>
    </li>
</ul>
</c:if>
    </div>
</div>



        <div class="btnbox_printlist bottombtn_printlist">
            <c:if test="${orderDetail.orderstatus == '未付款' }">
            <input type="button" value="取消订单" class="base_btns2" onclick="orderOperate('cancelOrder')" />
            <input type="button" value="去付款" class="base_btns2" onclick="orderOperate('goPay')" />
            </c:if>
            <c:if test="${orderDetail.orderstatus == '已付款' }">
            <input type="button" value="申请退款" class="base_btns2" onclick="orderOperate('returnMoney')" />
            </c:if>
            <c:if test="${orderDetail.orderstatus == '已完成' }">
            <input type="button" value="打印订单" class="base_btns2" onclick="window.print()" />
            </c:if>
        </div>
	
	<script>
		function orderOperate(op) {
			if(op == 'goPay') {
				var value = prompt('输入支付密码','');
				if(value != null) {
					//付款，离‘航班出发时间’前半个小时未付款的自动取消，检查舱位剩余量
					//付款，订单状态置为‘已付款’
				}
			}
			if(op == 'cancelOrder') {
				var value = confirm('确定取消该订单？');
				if(value == true) {
					//取消订单，订单状态置为‘已取消’
				}
			}
			if(op == 'returnMoney') {
				var value = confirm('申请退款？');
				if(value == true) {
					//申请退款，订单状态置为‘退款审核中’
				}
			}
		}
	</script>

 </body>
</html>