<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>我的订单</title>
<jsp:include page="common/link.jsp" ></jsp:include>
<link href="${contextPath }/css/cui110425.css" type="text/css"
	rel="stylesheet" />
<link href="${contextPath }/css/private_myctrip.css" type="text/css"
	rel="stylesheet" />
<link href="${contextPath }/css/PageHeader_v2.css" rel="stylesheet" />
<style>

</style>
</head>
<body id="page6">
<div class="main">
<jsp:include page="common/header.jsp"></jsp:include>
	<div class="orders_list mb20" style="display: block" id="orderListView">

		<%-- 
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
					 --%>

		<div class="tb_cner">


			<table class="t_head orders_thead" style="display:table;" id="tbHead">
				<thead>
					<tr>
						<th width="178px;" class="tal pl10"><label><input type="checkbox" value=""/>&nbsp;&nbsp;全选</label>
						</th>
						<th width="10%">航班动态</th>
						<th width="9.04%">联系人</th>
						<th width="20%">行程/有效日期</th>
						<th width="12%">舱位单价</th>
						<th></th>
						<th width="12%" id="thStatusWithUl" class="td_left">
							<div class="dropdown" style="width: 95px;" id="ddOrderStatus">
								<span class="curr"><em>订单状态</em><i></i>
								</span>
								<ul class="dd_list type_list" style="display: none;"
									id="ulOrderStatus">
									<li class="dd_show"><a os="1" nam="" typ="orderStatus"
										href="javascript:;">全部</a>
									</li>
									<li><a os="2" nam="Uncommitted" typ="orderStatus"
										href="javascript:;">未提交</a>
									</li>
									<li><a os="3" nam="WaitPay" typ="orderStatus"
										href="javascript:;">待支付</a>
									</li>
									<li><a os="4" nam="Dealt" typ="orderStatus"
										href="javascript:;">已成交/出票</a>
									</li>
									<li><a os="5" nam="ReturnTicket" typ="orderStatus"
										href="javascript:;">已退票/取消</a>
									</li>
								</ul>
							</div></th>
						<th width="10%">操作</th>
					</tr>
				</thead>
			</table>


			<ul class="t_body" style="display:block;height:500px;overflow:auto" id="orderList">
				<c:forEach items="${orderDetail }" var="order">
				<li biz="FlightDomestic" class="item">
					<h3>
						<label class="base_label"><input rid="3723039120"
							type="checkbox" value="">
						</label> <span class="ilb mr10" style="font-size:20px"> 订单号： <a
							href="${contextPath }/orderDetail?orderid=${order.id}&customerid=${order.customerid}"
							class="fs14" target="_blank">${order.orderno }</a> </span> <span
							class="ilb mr10 bookingDate"  style="font-size:20px">预订日期：<fmt:formatDate value="${order.ordertime }" pattern="yyyy-MM-dd"/></span>


						<a biz="FlightDomestic" rid="3723039120" href="${contextPath }/deleteOrder?id=${order.id}&customerid=${order.customerid }"
							class="mr10 hideOrder">删除订单</a>

					</h3>
					<table>
						<tbody>
							<tr>
								<td width="180px" class="tal pl10">&nbsp;&nbsp;&nbsp;${order.startAirportCity } - ${order.arrivalAirportCity }</td>

								<td width="10%"><a href="${contextPath }/flightDT?flightno=${order.flightno }&startTime=${order.starttime}">${order.status }</a></td>

								<td width="9.04%">
									<div class="people_box">
										${order.person }
									</div></td>
								<td width="20%" style="white-space: nowrap;"><fmt:formatDate value="${order.starttime }" pattern="yyyy-MM-dd HH:mm"/>
									</td>
								<td width="14%">
								<span class="base_price fs14"><dfn>¥</dfn>
								<c:if test="${order.discounttype == null && order.dprice != null}">
			                        <c:set var="price" value="${order.dprice }"/>
									<c:out value="${price}"/>（${order.classtype }）
								</c:if>
								<c:if test="${order.discounttype == null && order.dprice == null}">
									<c:set var="price" value="${order.price }"/>
									<c:out value="${price}"/>（${order.classtype }）
								</c:if>
								<c:if test="${order.discounttype != null }">
									<c:set var="price" value="${order.price * order.discountrate}"/>
									<c:out value="${price}"/>（${order.classtype }）
								</c:if>
								</span>
								</td>
								<td class="tal pl10"></td>
								<td width="10%" class="bd">
									<p></p>
									<p>${order.orderstatus }</p>


									<p>
										<a
											href="${contextPath }/orderDetail?orderid=${order.id}&customerid=${order.customerid}"
											target="_blank">订单详情</a>
									</p></td>
								<!-- 按钮容器 ContinueOrder, ContinuePay, DelayedToImmediately, Confirm, BookFlightInfo, Cancel -->
								<td width="10%" class="bd"></td>
							</tr>
						</tbody>
					</table></li>
				</c:forEach>
			</ul>

		</div>
	</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</div>
</body>
</html>