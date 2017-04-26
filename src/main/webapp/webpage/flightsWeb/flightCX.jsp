<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	href="http://webresource.c-ctrip.com/ResFlightOnline/R2/Booking/css/fltdomestic111027/searchresult_v2.1.css"
	type="text/css" rel="stylesheet" />
<link
	href="http://webresource.c-ctrip.com/ResCRMOnline/R6/member/common/css/login_popup_new.css"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="http://webresource.c-ctrip.com/ResUnionOnline/R3/float/css/pc_flaot.css" />
<link
	href="http://webresource.c-ctrip.com/ResCRMOnline/R1/pageheader/css/PageHeader_v2.css"
	rel="stylesheet" />
</head>
<body>
	<div id="base_bd">

		<script>
			if (document.body.className.indexOf('version3') < 0) {
				var _bodyClassList = document.body.className.split(' ');
				_bodyClassList.push('version3');
				document.body.className = _bodyClassList.join(' ');
			}
		</script>

		<!-- 重新搜索表单 start -->
		<form id="reSearchForm">
			<div id="search_form" class="search_form clearfix">
				<div class="flight_way">
					<div class="search_form_select" id="FlightSearchType">
						<a href="javascript:void(0);" class="select_echo" i="txt"
							data-ubt="FlightSearchType">单程<b i="ico"
							class="arr_gray_sm arr_down"></b>
						</a>
						<ul class="search_form_option" style="display:none;" i="menu">
							<li class="option_item" data-val="S"><label>单程</label>
							</li>
							<li class="option_item" data-val="S"><label>双程</label>
							</li>
						</ul>
						<input type="hidden" name="FlightSearchType" value="S" />
					</div>
				</div>
				<div class="flight_attribute" id="flightTypeList">
					<div class="">
						<div class="first_line">
							<div class="type_item">
								<span class="ico_search_type ico_search_dcity"></span> <input
									type="text" id="DCityName1" name="startCity"
									mod="address|notice" data-ubt="DCityName1" mod_address_tpl="on"
									mod_address_reference="DCity1" placeholder="出发城市"
									mod_address_source="flight_new" autocomplete="on" />
							</div>
							<div id="J_change" class="type_item_change">
								<a href="javascript:;" id="J_change_swap" class="ico_change2"
									data-ubt="ChangeCity"></a>
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_acity"></span> <input
									type="text" id="ACityName1" name="arrivalCity"
									data-ubt="ACityName1" mod_address_reference="ACity1"
									mod_address_tpl="on" mod="address|notice"
									mod_address_source="flight_new" placeholder="到达城市"
									autocomplete="on" />
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_ddate"></span> <input
									id="DDate1" name="DDate1" type="text" value=""
									mod="calendar|notice" placeholder="出发日期" data-ubt="DDate1"
									autocomplete="off"
									style="background-image: url(&quot;http://pic.c-ctrip.com/cquery/pic_fir.png&quot;); background-position: 100% 50%; background-repeat: no-repeat;" />
							</div>
							<div class="type_item">
								<span class="ico_search_type ico_search_adate"></span> <input
									type="text" id="ReturnDate1" name="ReturnDate1"
									data-ubt="ReturnDate1" mod="calendar|notice" placeholder="返回日期"
									autocomplete="off" style="background-image: none;" />
							</div>
						</div>

						<!-- 高级搜索 -->
						<div class="type_number_line" id="advanceOption"
							style="display:none;">
							<span id="J_type_number_line_low_text" class="low_text"
								style="display: none;">&nbsp;&nbsp;</span>
							<div class="type_item">
								<div class="search_form_select" id="ClassType">
									<span class="ico_search_type ico_search_class"></span> <a
										href="javascript:void(0);" data-ubt="ClassType"
										class="select_echo" i="txt">乘客数量：1<b i="ico"
										class="arr_gray_sm arr_down"></b>
									</a>
									<ul class="search_form_option" style="display:none;" i="menu">
										<li class="option_item" data-val=""><label>乘客数量：1</label>
										</li>
										<li class="option_item" data-val=""><label>乘客数量：2</label>
										</li>
									</ul>
									<input type="hidden" name="count" value="" />
								</div>
							</div>
							<div id="J_type_item_change" class="type_item_change"></div>
							<div class="type_item">
								<div class="search_form_select" id="ClassType">
									<span class="ico_search_type ico_search_class"></span> <a
										href="javascript:void(0);" data-ubt="ClassType"
										class="select_echo" i="txt">经济舱<b i="ico"
										class="arr_gray_sm arr_down"></b>
									</a>
									<ul class="search_form_option" style="display:none;" i="menu">
										<li class="option_item" data-val=""><label>经济舱</label>
										</li>
										<li class="option_item" data-val=""><label>公务舱</label>
										</li>
										<li class="option_item" data-val=""><label>头等舱</label>
										</li>
									</ul>
									<input type="hidden" name="ClassType" value="" />
								</div>
							</div>
						</div>


					</div>
				</div>
				<div class="search_tools clearfix" id="searchBtns">
					<input type="button" data-ubt="ReSearch" value="重新搜索"
						style="display: " class="btn_search" id="btnReSearch" /> <a
						rel="nofollow" data-ubt="AdvanceSearch" id="advancedSearch"
						style="display: " class="arrow_down" href="javascript:void(0);">高级搜索<b></b>
					</a>
				</div>
			</div>
		</form>
		<!-- 重新搜索表单 end -->

		<!-- 筛选条件 start -->

		<div class="base_side" id="demo_side" style="float: left;margin-top: 10px">
			<div class="side-box mb10" id="J_sideFilter">
				<div class="hd">
					筛选 <span id="J_flight_num" class="flight-num">（共16条航班信息）</span> <a
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
			style="float: left;margin-left: 10px">
			<ul class="sorts sort-guideline">
				<li class="default-sort">航班信息</li>
				<li class="dtime-sort"><a id="dtime_sort"
					data-ubt="Sort_DepartTime" ascdesc="起飞时间" descdesc="起飞时间"
					original="起飞时间" field="dtime" cmd="sort" href="javascript:void(0);"
					sort="ASC">起飞时间<i class="ico"></i>
				</a>
				</li>
				<li class="atime-sort current"><a id="atime_sort"
					data-ubt="Sort_ArriveTime" ascdesc="到达时间" descdesc="到达时间"
					original="到达时间" field="atime" cmd="sort" href="javascript:void(0);"
					sort="ASC">到达时间<i class="ico ico-sort"></i>
				</a>
				</li>
				<li class="ontime-sort"><a href="javascript:void(0);"
					data-ubt="OnTimeRate" ascdesc="准点率从低到高" descdesc="准点率从高到低"
					original="准点率" field="punctuality" cmd="sort">准点率<i class="ico"></i>
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

		<div id="J_flightlist2" style="float: right">
			<div id="flight_AQ1037"
				class="search_box search_box_tag search_box_light " ispromotion=""
				data-classifyid="__classify_id__0">
				<table class="search_table_header" cellspacing="0" cellpadding="0"
					border="0">
					<tbody>
						<tr class="J_header_row">
							<td class="logo">
								<div class="clearfix J_flight_no" data-flight="AQ1037">
									<strong class="pubFlights_aq flight_logo">九元航空</strong> <span>AQ1037</span>
								</div>
								<span class="special_text direction_black_border craft J_craft"
								code="738">全新737 舒适飞行</span>
							</td>
							<td class="right">
								<div>
									<strong class="time">06:15</strong>
								</div>
								<div>白云国际机场</div>
							</td>
							<td class="center">
								<div class="arrow"></div>
								<div class="stopover" style="cursor:default">
									经停 <br /> <span class="low_text">无锡<br />
									</span>
								</div>
							</td>
							<td class="left">
								<div>
									<strong class="time">11:10</strong>
								</div>
								<div>周水子国际机场</div>
							</td>
							<td class="service">
								<div class="service-item">
									准点率 <br /> <span class="direction_black_border J_punctuality"
										data-bit="OnTimeRate">59%</span>
								</div>
							</td>
							<td class="label"></td>
							<td class="price lowest_price "><span class="J_base_price"><span
									class="base_price02"><dfn>&yen;</dfn>659</span><i>起</i><br />
							</span>
							</td>
							<td class="book middle">
								<button class="J_expandBtn btn_book arrow_down"
									data-ubt="SubClass_Open">
									订票<b></b>
								</button></td>
							<td class="special"></td>
						</tr>
					</tbody>
				</table>

			</div>

		</div>


		<!-- 航班列表 start -->


	</div>
</body>
</html>