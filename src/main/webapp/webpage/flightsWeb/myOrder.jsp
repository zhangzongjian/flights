<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>我的订单</title> 
  <link href="http://webresource.ctrip.com/styles/common/cui110425.css" type="text/css" rel="stylesheet" />
  <link href="http://webresource.c-ctrip.com/ResCRMOnline/R2/MyCtrip/css/private_myctrip.css?20170322" type="text/css" rel="stylesheet" />
  <link href="http://webresource.c-ctrip.com/ResCRMOnline/R1/pageheader/css/PageHeader_v2.css?temp=20170421" rel="stylesheet" />
 </head> 
 <body > 

<div class="orders_list mb20" style="display: block" id="orderListView">

                    
                    <div class="order_inquiry pd01" id="searchBar" style="display:block;">
                        <ul class="filter_list clearfix">
                            <li>
                                <label>订单号</label><input id="inputOrderId" class="m_input w02 inputSel" type="text" "="">
                            </li>
                            <li>
                                <label>旅客</label><input id="inputPassengerName" class="m_input w02 inputSel" type="text" _cqnotice="中文名/英文名" autocomplete="on">
                                <input id="inputPassengerInfo" type="hidden" value="">
                            </li>
                            <li>
                                <label>预订日期</label><input id="inputStartDate" class="m_input w02 sr_cal inputSel" type="text" readonly="readonly" _cqnotice="yyyy-mm-dd">-<input id="inputEndDate" class="m_input w02 sr_cal inputSel" type="text" readonly="readonly" _cqnotice="yyyy-mm-dd">
                            </li>
                            <li>
                                <input id="btnSearch" class="btn_sel" type="button" value="查询"></li>
                            <li>
                                    <a style="display:none;" id="btn_clear" href="#">清空查询条件</a>
                                </li>
                        </ul>
                    </div>

                    
                    <div class="tb_cner">

                    	
	                    <table class="t_head orders_thead" style="display:table;" id="tbHead">
	                        <thead>
	                            <tr>
	                                <th width="180px;" class="tal pl10">
	                                    <label class="base_label sel_all">
	                                        <input type="checkbox" value="">全选</label></th>
	                                <th width="10%" class="td_left" id="thTypeWithUl">
	                                    <div class="dropdown" style="width: 90px;" id="ddBizType">
	                                        <span class="curr">类型<i></i></span>
	                                        <ul class="dd_list type_list" style="display: none;" id="ulBizType">
	                                        <li><a os="1" nam="" typ="bizType" href="javascript:;">所有业务</a></li><li><a os="2" nam="Flight,FlightX,PreSale" typ="bizType" href="javascript:;">机+X</a></li><li><a os="3" nam="Hotel" typ="bizType" href="javascript:;">酒店</a></li><li><a os="24" nam="DIY,Cruise,Vacation,Customized" typ="bizType" href="javascript:;">旅游度假</a></li><li><a os="5" nam="Train" typ="bizType" href="javascript:;">国内火车票</a></li><li><a os="6" nam="TrainInternational" typ="bizType" href="javascript:;">国际火车票</a></li><li><a os="7" nam="Piao" typ="bizType" href="javascript:;">门票</a></li><li><a os="8" nam="Activity" typ="bizType" href="javascript:;">当地玩乐</a></li><li><a os="9" nam="QiChe" typ="bizType" href="javascript:;">汽车票</a></li><li><a os="10" nam="Car,Translation" typ="bizType" href="javascript:;">用车</a></li><li><a os="14" nam="Tuan" typ="bizType" href="javascript:;">团购</a></li><li><a os="15" nam="Lipin" typ="bizType" href="javascript:;">礼品卡</a></li><li><a os="17" nam="HHTravel" typ="bizType" href="javascript:;">HHtravel</a></li><li><a os="18" nam="VacationInsurance" typ="bizType" href="javascript:;">度假保险</a></li><li><a os="20" nam="AirportBus" typ="bizType" href="javascript:;">机场巴士</a></li><li><a os="22" nam="SceneryHotel" typ="bizType" href="javascript:;">酒店+景点</a></li><li><a os="23" nam="Deposit" typ="bizType" href="javascript:;">旅行金融</a></li><li><a os="25" nam="NewMall" typ="bizType" href="javascript:;">全球购</a></li><li><a os="26" nam="Ship" typ="bizType" href="javascript:;">船票</a></li><li><a os="27" nam="Meeting" typ="bizType" href="javascript:;">会场</a></li><li><a os="29" nam="Mice" typ="bizType" href="javascript:;">展会酒店</a></li><li><a os="28" nam="Visa" typ="bizType" href="javascript:;">签证</a></li><li><a os="31" nam="Exchange" typ="bizType" href="javascript:;">外币兑换</a></li></ul>
	                                    </div>
	                                </th>
	                                <th width="9.04%">旅客</th>
	                                <th width="20%">行程/有效日期</th>
	                                <th width="7%">总金额</th>
	                                <th></th>
	                                <th width="10%" id="thStatusWithUl" class="td_left">
	                                    <div class="dropdown" style="width: 95px;" id="ddOrderStatus">
	                                        <span class="curr"><em>订单状态</em><i></i></span>
	                                        <ul class="dd_list type_list" style="display: none;" id="ulOrderStatus">
	                                        <li class="dd_show"><a os="1" nam="" typ="orderStatus" href="javascript:;">全部</a></li><li><a os="2" nam="Uncommitted" typ="orderStatus" href="javascript:;">未提交</a></li><li><a os="3" nam="WaitPay" typ="orderStatus" href="javascript:;">待支付</a></li><li><a os="4" nam="Dealt" typ="orderStatus" href="javascript:;">已成交/出票</a></li><li><a os="5" nam="ReturnTicket" typ="orderStatus" href="javascript:;">已退票/取消</a></li></ul>
	                                    </div>
	                                </th>
	                                <th width="10%">操作
	                                    
	                                </th>
	                            </tr>
	                        </thead>
	                    </table>

	                    
	                    <ul class="t_body" style="display:block;" id="orderList"><li biz="FlightDomestic" class="item">
    <h3>
        <label class="base_label"><input rid="3723039120" type="checkbox" value=""></label>
        <span class="ilb mr10">
            订单号：
            
                <a href="http://flights.ctrip.com/process/OrderDetail?Orderid=3723039120&amp;RepeatAction=FlightDomestic_Repeat_ViewOrderInfo" class="fs14" target="_blank">3723039120</a>
            
        </span>
        <span class="ilb mr10 bookingDate" bd="2017-04-26 23:13:21">预订日期：2017-04-26</span>
        
        
            <a biz="FlightDomestic" rid="3723039120" href="###" class="mr10 hideOrder">删除订单</a>
        
    </h3>
    <table>
        <tbody>
            <tr>
                <td width="180px" class="tal pl10">
                    广州-大连 (单程) 
                    
                </td>
                
                    <td width="10%" class="td_left">机+X</td>
                
                <td width="9.04%">
                    <div class="people_box">
                        <div class="people" title="李四">李四</div>
                    </div>
                </td>
                <td width="20%" style="white-space: nowrap;">2017-05-08 06:15</td>
                <td width="7%"><span class="base_price fs14"><dfn>¥</dfn>847</span></td>
                <td class="tal pl10">
                    
                </td>
                <td width="10%" class="bd">
                    <p></p>
                    <p>已取消</p>
                    
                    
                        <p><a href="http://flights.ctrip.com/process/OrderDetail?Orderid=3723039120&amp;RepeatAction=FlightDomestic_Repeat_ViewOrderInfo" target="_blank">订单详情</a></p>
                    
                </td>
                <!-- 按钮容器 ContinueOrder, ContinuePay, DelayedToImmediately, Confirm, BookFlightInfo, Cancel -->
                <td width="10%" class="bd">
                    
                </td>
            </tr>
        </tbody>
    </table>
</li>
<li biz="FlightDomestic" class="item">
    <h3>
        <label class="base_label"><input rid="3615014158" type="checkbox" value=""></label>
        <span class="ilb mr10">
            订单号：
            
                <a href="http://flights.ctrip.com/process/OrderDetail?Orderid=3615014158&amp;RepeatAction=FlightDomestic_Repeat_ViewOrderInfo" class="fs14" target="_blank">3615014158</a>
            
        </span>
        <span class="ilb mr10 bookingDate" bd="2017-04-07 21:45:18">预订日期：2017-04-07</span>
        
        
            <a biz="FlightDomestic" rid="3615014158" href="###" class="mr10 hideOrder">删除订单</a>
        
    </h3>
    <table>
        <tbody>
            <tr>
                <td width="180px" class="tal pl10">
                    广州-西安 (单程) 
                    
                </td>
                
                    <td width="10%" class="td_left">机+X</td>
                
                <td width="9.04%">
                    <div class="people_box">
                        <div class="people" title="李四">李四</div>
                    </div>
                </td>
                <td width="20%" style="white-space: nowrap;">2017-04-13 06:10</td>
                <td width="7%"><span class="base_price fs14"><dfn>¥</dfn>672</span></td>
                <td class="tal pl10">
                    
                </td>
                <td width="10%" class="bd">
                    <p></p>
                    <p>已取消</p>
                    
                    
                        <p><a href="http://flights.ctrip.com/process/OrderDetail?Orderid=3615014158&amp;RepeatAction=FlightDomestic_Repeat_ViewOrderInfo" target="_blank">订单详情</a></p>
                    
                </td>
                <!-- 按钮容器 ContinueOrder, ContinuePay, DelayedToImmediately, Confirm, BookFlightInfo, Cancel -->
                <td width="10%" class="bd">
                    
                </td>
            </tr>
        </tbody>
    </table>
</li>
</ul>

</div>
</div>


 </body>
</html>