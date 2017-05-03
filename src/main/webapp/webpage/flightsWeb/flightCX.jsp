<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索结果</title>
<link
	href="${contextPath }/css/searchresult_v2.1.css"
	type="text/css" rel="stylesheet" />
<link
	href="${contextPath }/css/login_popup_new.css"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="${contextPath }/css/pc_flaot.css" />
<link
	href="${contextPath }/css/PageHeader_v2.css"
	rel="stylesheet" />
  <jsp:include page="common/link.jsp" ></jsp:include>
 </head> 
 <body id="page6"> 

<div class="main">
<jsp:include page="common/header.jsp"></jsp:include>

	<div id="base_bd" style="width:960px;height:550px;margin-left:-10px">

		<script>
			if (document.body.className.indexOf('version3') < 0) {
				var _bodyClassList = document.body.className.split(' ');
				_bodyClassList.push('version3');
				document.body.className = _bodyClassList.join(' ');
			}
		</script>

		<!-- 重新搜索表单 start -->
		<form id="reSearchForm" action="${contextPath }/searchFlights">
			<div id="search_form" class="search_form clearfix" style="">
				<div class="flight_attribute" id="flightTypeList">
					<div class="">
						<div class="first_line">
							<div class="type_item">
								<span class="ico_search_type ico_search_dcity"></span> <input style="width:125px"
									type="text" id="DCityName1" name="startCity" value="广州"
									mod="address|notice" data-ubt="DCityName1" mod_address_tpl="on"
									mod_address_reference="DCity1" placeholder="出发城市"
									mod_address_source="flight_new" autocomplete="on" />
							</div>
							<div id="J_change" class="type_item_change">
								<a href="javascript:;" id="J_change_swap" class="ico_change2"
									data-ubt="ChangeCity"></a>
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_acity"></span> <input style="width:125px"
									type="text" id="ACityName1" name="arrivalCity" value="北京"
									data-ubt="ACityName1" mod_address_reference="ACity1"
									mod_address_tpl="on" mod="address|notice"
									mod_address_source="flight_new" placeholder="到达城市"
									autocomplete="on" />
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_ddate"></span> <input style="width:130px"
									id="DDate1" name="startTime" type="text" value="2017-04-27"
									mod="calendar|notice" placeholder="出发日期" data-ubt="DDate1"
									autocomplete="off"
									style="background-image: url(&quot;http://pic.c-ctrip.com/cquery/pic_fir.png&quot;); background-position: 100% 50%; background-repeat: no-repeat;" />
							</div>
							<div class="type_item" style="">
								<span class="ico_search_type ico_search_adate"></span> <input style="width:130px"
									type="text" id="ReturnDate1" name="returnTime"
									data-ubt="ReturnDate1" mod="calendar|notice" placeholder="返回日期"
									autocomplete="off" style="background-image: none;" />
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_class"></span> <input style="width:50px"
									type="text" id="ACityName1" name="count" value="2"
									data-ubt="ACityName1" mod_address_reference="ACity1"
									mod_address_tpl="on" mod="address|notice"
									mod_address_source="flight_new" placeholder="乘客数量"
									autocomplete="on" />
							</div>
						</div>

					</div>
				</div>
				<div class="search_tools clearfix" id="searchBtns">
					<input type="submit" data-ubt="ReSearch" value="重新搜索"
						 class="btn_search" id="btnReSearch" />
				</div>
			</div>
		</form>
		<!-- 重新搜索表单 end -->

		<!-- 筛选条件 start -->

		<div class="base_side" id="demo_side" style="float: left;margin-top: 10px; display:none">
			<div class="side-box mb10" id="J_sideFilter">
				<div class="hd">
					筛选 <span id="J_flight_num" class="flight-num">（共${fn:length(flightList) }条航班信息）</span> <a
						style="" href="javascript:;" data-ubt="FilterDelete"
						id="J_clearAllFilter" class="clear-btn">清除全部</a>
				</div>
				<ul class="bar-filter" id="J_bar_filter">
					<li class="bar-filter-group J_group_item" data-ubt="DTimeFilter"><a
						href="javascript:;" class="bar-filter-item">起飞时段<span
							class="bar-filter-item-deco"> <b
								class="arr_gray_sm J_icon arr_right"></b>
						</span>
					</a></li>
					<li class="bar-filter-group J_group_item" data-ubt="AirlineFilter"><a
						href="javascript:;" class="bar-filter-item">航空公司<span
							class="bar-filter-item-deco"> <b
								class="arr_gray_sm J_icon arr_right"></b>
						</span>
					</a></li>
					<li class="bar-filter-group J_group_item" data-ubt="DeliveryFilter"><a
						href="javascript:;" class="bar-filter-item">到达时段<span
							class="bar-filter-item-deco"> <b
								class="arr_gray_sm J_icon arr_right"></b>
						</span>
					</a></li>
					<li class="bar-filter-group J_group_item" data-ubt="ClassesFilter"><a
						href="javascript:;" class="bar-filter-item">舱位<span
							class="bar-filter-item-deco"> <b
								class="arr_gray_sm J_icon arr_right"></b>
						</span>
					</a></li>
				</ul>
			</div>
		</div>


		<!-- 筛选条件 end -->

		<!-- 航班列表 start -->
		<div id="J_sort_controls" class="sort-controls clearfix"
			style="">
			<ul class="sorts sort-guideline">
				<li class="default-sort">航班信息</li>
				<li class="dtime-sort"><a id="dtime_sort"
					data-ubt="Sort_DepartTime" ascdesc="起飞时间" descdesc="起飞时间"
					original="起飞时间" field="dtime" cmd="sort" href="javascript:void(0);"
					sort="ASC">起飞时间<i class="ico"></i>
				</a>
				</li>
				<li class="atime-sort"><a id="atime_sort"
					data-ubt="Sort_ArriveTime" ascdesc="到达时间" descdesc="到达时间"
					original="到达时间" field="atime" cmd="sort" href="javascript:void(0);"
					sort="ASC">到达时间<i class="ico"></i>
				</a>
				</li>
				<li class="ontime-sort"><a href="javascript:void(0);"
					data-ubt="OnTimeRate" ascdesc="舱位类型从低到高" descdesc="舱位类型从高到低"
					original="舱位类型" field="punctuality" cmd="sort">舱位类型<i class="ico"></i>
				</a>
				</li>
				<li class="sale-sort" style=" "><a href="javascript:void(0);"
					id="saleSortRes" style="color:#FF7E00">优惠<i
						class="arr_gray_sm arr_down"></i>
				</a>
					<div class="sale-sort-select" style="display: none;">
						<div class="select-result" disp="hide">
							优惠 <i class="arr_gray_sm arr_up"></i>
						</div>
						<ul class="select-ul">
							<li><a href="javascript:void(0)" class="salePoint-Cash"
								data-ubt="SaleSort" cmd="sale-sort" field="salePoint">现金红包优先</a>
							</li>
							<li><a href="javascript:void(0)"
								class="salePoint-PickUpCoupon" data-ubt="SaleSort"
								cmd="sale-sort" field="salePoint">接送机券优先</a>
							</li>
							<li><a href="javascript:void(0)" data-ubt="SaleSort"
								class="salePoint-All">无</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="price-sort"><a id="price_sort" data-ubt="Sort_Price"
					ascdesc="价格" descdesc="价格" original="价格" field="price" cmd="sort"
					href="javascript:void(0);">价格<i class="ico"></i>
				</a>
				</li>
				<li style="width:75px">操作</li>
			</ul>
			
		</div>

		<div id="J_flightlist2" style="">
			<c:forEach items="${flightList }" var="flight">
			<div id="flight_${flight.flightno }"
				class="search_box search_box_tag search_box_light " ispromotion=""
				data-classifyid="__classify_id__0">
				<form action="${contextPath }/selectFlight">
				<table class="search_table_header" cellspacing="0" cellpadding="0"
					border="0">
					<tbody>
						<tr class="J_header_row">
							<td class="logo">
								<div class="clearfix J_flight_no" data-flight="AQ1037">
									<strong class="pubFlights_aq flight_logo">${flight.companyname }</strong> <span>${flight.flightno }</span>
								</div>
								<span class="special_text direction_black_border craft J_craft">${flight.planetype } ${flight.planeversion }</span>
							</td>
							<td class="right">
								<div>
									<strong class="time">
										<fmt:formatDate value="${flight.starttime }" pattern="HH:mm"/>
									</strong>
								</div>
								<div>${flight.startAirportName }<br/>
									<fmt:formatDate value="${flight.starttime }" pattern="yyyy-MM-dd"/>
								</div>
							</td>
							<td class="center">
								<div class="arrow"></div>
							</td>
							<td class="left">
								<div>
									<strong class="time">
										<fmt:formatDate value="${flight.arrivaltime }" pattern="HH:mm"/>
									</strong>
								</div>
								<div>${flight.arrivalAirportName }<br/>
									<fmt:formatDate value="${flight.arrivaltime }" pattern="yyyy-MM-dd"/>
								</div>
							</td>
							<td class="service" style="width:50px">
								<div class="service-item">
									<select onchange="changeTicketPrice(this);">
										<c:forEach items="${flight.ticketPrice }" var="ticketPrice">
										<option value="${ticketPrice.id },${ticketPrice.discounttype },${ticketPrice.discountrate },${ticketPrice.dprice },${ticketPrice.price }">
											${ticketPrice.classtype } ${ticketPrice.price }&yen;
										</option>
										</c:forEach>
									</select>
									<input type="hidden" name="ticketPriceId" value="${flight.ticketPrice[0].id }"/>
								</div>
							</td>
							<td class="label" style="text-align:center">
								<c:if test="${flight.ticketPrice[0].discounttype != null }">
								<span class="ico_whole_aw" >
								   ${flight.ticketPrice[0].discounttype }
								</span>
								</c:if>
								<c:if test="${flight.ticketPrice[0].discounttype == null && flight.ticketPrice[0].dprice != null}">
								<span class="ico_whole_aw">
								<s>${flight.ticketPrice[0].price }&yen;</s>
								</span>
								</c:if>
							</td>
							<td class="price lowest_price "><span class="J_base_price"><span
									class="base_price02">
									<c:if test="${flight.ticketPrice[0].discounttype == null && flight.ticketPrice[0].dprice != null}">
										${flight.ticketPrice[0].dprice }
									</c:if>
									<c:if test="${flight.ticketPrice[0].discounttype == null && flight.ticketPrice[0].dprice == null}">
										${flight.ticketPrice[0].price }
									</c:if>
									<c:if test="${flight.ticketPrice[0].discounttype != null }">
										${flight.ticketPrice[0].price * flight.ticketPrice[0].discountrate}
									</c:if>
									<dfn>&yen;</dfn>
									</span><br />
							</span>
							</td>
							<td class="book middle">
								<input type="hidden" name="count" value="${passengerCount }"/>
								<button class="J_expandBtn btn_book"
									data-ubt="SubClass_Open">
									订票<b></b>
								</button></td>
							<td class="special"></td>
						</tr>
					</tbody>
				</table>
				</form>
			</div>
			</c:forEach>
		</div>


		<!-- 航班列表 start -->


	</div>

<script>
	function changeTicketPrice(selectE) {
		//id ,discounttype ,discountrate ,dprice, price
		var data = selectE.value.split(',');
		var id = data[0];
		var discounttype = data[1] == ''? null : data[1];
		var discountrate = data[2] == ''? null : data[2];
		var dprice = data[3] == ''? null : data[3];
		var price = data[4] == ''? null : data[4];
		//当前select所在的<td>节点
		var td1 = selectE.parentNode.parentNode;
		var td2 = td1.nextSibling.nextSibling;
		var td3 = td2.nextSibling.nextSibling;
		if(discounttype == null && dprice != null) {
			td2.innerHTML = "<span class='ico_whole_aw' ><s>"+price+"&yen;</s></span>";
			td3.getElementsByTagName('span')[1].innerHTML = dprice+"<dfn>&yen;</dfn>";
		}
		if(discounttype == null && dprice == null) {
			td2.innerHTML = "";
			td3.getElementsByTagName('span')[1].innerHTML = price+"<dfn>&yen;</dfn>";
		}
		if(discounttype != null) {
			td2.innerHTML = "<span class='ico_whole_aw' >"+discounttype+"</span>";
			td3.getElementsByTagName('span')[1].innerHTML = discountrate*price+"<dfn>&yen;</dfn>";
		}
		
		var input = selectE.nextSibling.nextSibling;
		input.value = id;
	}
</script>
	
	<jsp:include page="common/footer.jsp" ></jsp:include>
	</div>
</body>
</html>