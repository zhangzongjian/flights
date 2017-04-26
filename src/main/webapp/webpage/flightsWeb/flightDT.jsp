<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>航班动态</title> 
  <link href="http://webresource.c-ctrip.com/ResFlightOnline/R2/Booking/css/fltdomestic111027/dynamic_v3.0.css" type="text/css" rel="stylesheet" /> 
  <link href="http://webresource.c-ctrip.com/ResCRMOnline/R1/pageheader/css/PageHeader_v2.css" rel="stylesheet" type="text/css" /> 

 </head> 
 <body > 

<div id="base_bd">
<!-- 查询form start -->
<div class="search-box">
    <div class="search-inner fsans clearfix">
        <div class="type-select">
            <ul>
                <li>按起降地</li>
                <li class="active">按航班号</li>
            </ul>
        </div>
        <div class="type-main">
            <div class="type-item" style="display:none;">
                <label class="label-input">
                    <span class="t">出发</span>
                    <input type="text" id="WZ_departCity" class="input-text" value="" code="" tabindex="1" autocomplete="on" placeholder="中文/拼音/英文">
                </label>
                <i class="ico ico-go"></i>
                <label class="label-input">
                    <span class="t">到达</span>
                    <input type="text" id="WZ_arriveCity" class="input-text" value="" code="" tabindex="2" autocomplete="on" placeholder="中文/拼音/英文">
                </label>
                <label class="label-input">
                    <span class="t">时间</span>
                    <input type="text" id="ipt_time1" class="input-text" tabindex="3" autocomplete="on" placeholder="yyyy-mm-dd" value="2017-04-26">
                </label>
            </div>
            <div class="type-item">
                <label class="label-input">
                    <span class="t">航班号</span>
                    <input type="text" id="WZ_flightNo" class="input-text" style="width:370px;" value="" autocomplete="on" placeholder="如 MU1234">
                    <ul class="flight-associate" id="wz_likeFlightNos" style="position: absolute;left: 62px;top:37px;display:none"></ul>
                </label>
                <label class="label-input">
                    <span class="t">时间</span>
                    <input type="text" id="ipt_time2" class="input-text" placeholder="yyyy-mm-dd" value="2017-04-26">
                </label>
            </div>
        </div>
        <a href="javascript:void(0);" id="WZ_btn_search" class="btn-search">查询</a>
    </div>
    <div class="search-bg"></div>
</div>
<!-- 查询form end -->


<!-- 查询结果 start -->
<div class="detail-box clearfix">
                        <div class="detail-info">
                                <div class="detail-t">
                                    <img width="22" alt="" src="http://pic.c-ctrip.com/flight_intl/airline_logo/40x35/AQ.png" class="middle">
                                    <span class="ml5">九元航空</span>
                                    <strong class="ml5">AQ1105</strong>
                                    <span class="ml10">2017-04-25</span>
                                    <span class="ml5">
                                    周二
                                    </span>
                                </div>
                            <div class="detail-m">
                                <div class="detail-fly">
                                    <div class="inl departure"><p>实际起飞</p><p class="time">06:28</p><p class="gray">计划起飞 06:10</p></div>
                                    <div class="inl between">
                                        <i class="ico fsans ico-status-green-l ">到达<small class="small"></small></i>
                                    </div>
                                    <div class="inl arrive"><p>实际到达</p><p class="time">08:46</p><p class="gray">计划到达 08:37</p></div>
                                </div>
                                <div class="detail-fly detail-route">
                                    <div class="inl departure">
                                        <p>广州 白云国际机场B区</p>
                                        
                                    </div>
                                    <div class="inl between">
                                        <div class="progress-bar">
                                            <span style="width:50%" class="line-green"></span><i style="left:50%" class="ico ico-posi-green"></i>
                                        </div>
                                        <p class="gray">飞行时长 2h18m</p>
                                           
                                    </div>
                                    <div class="inl arrive">
                                        <p>西安 咸阳国际机场T3</p>
                                       
                                    </div>
                                </div>
                            </div>
                            
                        </div>
            </div>
<!-- 查询结果 end -->



</div>
 </body>
</html>