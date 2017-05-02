<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>航班动态</title> 
  <link href="${contextPath }/css/dynamic_v3.0.css" type="text/css" rel="stylesheet" /> 
  <link href="${contextPath }/css/PageHeader_v2.css" rel="stylesheet" type="text/css" /> 

 </head> 
 <body > 

<div id="base_bd">
<!-- 查询form start -->
<div class="search-box">
	<form action="${contextPath }/flightDT" method="get">
    <div class="search-inner fsans clearfix">
        <div class="type-select">
            <ul>
                <li class="active">按航班号</li>
            </ul>
        </div>
        <div class="type-main">
            <div class="type-item">
                <label class="label-input">
                    <span class="t">航班号</span>
                    <input type="text" name="flightno" id="WZ_flightNo" class="input-text" style="width:370px;" value="AQ1037" autocomplete="on" placeholder="如 MU1234">
                    <ul class="flight-associate" id="wz_likeFlightNos" style="position: absolute;left: 62px;top:37px;display:none"></ul>
                </label>
                <label class="label-input">
                    <span class="t">时间</span>
                    <input type="text" name="startTime" id="ipt_time2" class="input-text" placeholder="yyyy-mm-dd" value="2017-04-27">
                </label>
            </div>
        </div>
        <a href="javascript:void(0);" onclick="document.forms[0].submit()" class="btn-search">查询</a>
    </div>
    </form>
    <div class="search-bg"></div>
</div>
<!-- 查询form end -->


<!-- 查询结果 start -->
<c:forEach items="${flightDetail }" var="flight">
<div class="detail-box clearfix">
                        <div class="detail-info">
                                <div class="detail-t">
                                    <img width="22" alt="" src="http://pic.c-ctrip.com/flight_intl/airline_logo/40x35/AQ.png" class="middle">
                                    <span class="ml5">${flight.companyname }</span>
                                    <strong class="ml5">${flight.flightno }</strong>
                                    <span class="ml10"><fmt:formatDate value="${flight.starttime }" pattern="yyyy-MM-dd EEEE"/></span>
                                </div>
                            <c:if test="${flight.status == '到达' }">    
                            <div class="detail-m">
                                <div class="detail-fly">
                                    <div class="inl departure"><p>实际起飞</p><p class="time"><fmt:formatDate value="${flight.startrealtime }" pattern="HH:mm"/></p><p class="gray">计划起飞 <fmt:formatDate value="${flight.starttime }" pattern="HH:mm"/></p></div>
                                    <div class="inl between">
                                        <i class="ico fsans ico-status-green-l ">到达<small class="small"></small></i>
                                    </div>
                                    <div class="inl arrive"><p>实际到达</p><p class="time"><fmt:formatDate value="${flight.arrivalrealtime }" pattern="HH:mm"/></p><p class="gray">计划到达 <fmt:formatDate value="${flight.arrivaltime }" pattern="HH:mm"/></p></div>
                                </div>
                                <div class="detail-fly detail-route">
                                    <div class="inl departure">
                                        <p>${flight.startAirportCity } ${flight.startAirportName }</p>
                                        
                                    </div>
                                    <div class="inl between">
                                        <div class="progress-bar">
                                            <span style="width:100%" class="line-green"></span><i style="left:100%" class="ico ico-posi-green"></i>
                                        </div>
                                           
                                    </div>
                                    <div class="inl arrive">
                                        <p>${flight.arrivalAirportCity } ${flight.arrivalAirportName }</p>
                                       
                                    </div>
                                </div>
                            </div>
                            </c:if>
                            
                            <c:if test="${flight.status != '到达' }">    
                            <div class="detail-m">
                                <div class="detail-fly">
                                    <div class="inl departure"><p>计划起飞</p><p class="time"><fmt:formatDate value="${flight.starttime }" pattern="HH:mm"/></p></div>
                                    <div class="inl between">
                                        <i class="ico fsans ico-status-green-l ">${flight.status }<small class="small"></small></i>
                                    </div>
                                    <div class="inl arrive"><p>计划到达</p><p class="time"><fmt:formatDate value="${flight.arrivaltime }" pattern="HH:mm"/></p></div>
                                </div>
                                <div class="detail-fly detail-route">
                                    <div class="inl departure">
                                        <p>${flight.startAirportCity } ${flight.startAirportName }</p>
                                        
                                    </div>
                                    <div class="inl between">
                                        <div class="progress-bar">
                                            <span style="width:0%" class="line-green"></span><i style="left:0%" class="ico ico-posi-green"></i>
                                        </div>
                                           
                                    </div>
                                    <div class="inl arrive">
                                        <p>${flight.arrivalAirportCity } ${flight.arrivalAirportName }</p>
                                       
                                    </div>
                                </div>
                            </div>
                            </c:if>
                        </div>
                        
            </div>
</c:forEach>
<!-- 查询结果 end -->



</div>
 </body>
</html>