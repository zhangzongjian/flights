<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html>
<head>
<title>机票预定网站</title>
<meta charset="utf-8">
<jsp:include page="common/link.jsp"></jsp:include>
</head>
<body id="page1">
<div class="main">
<jsp:include page="common/header.jsp"></jsp:include>
<!--content -->
	<section id="content">
		<div class="for_banners">
			<article class="col1">
						<div class="tabs">
							<ul class="nav">
								<li class="selected"><a href="${contextPath }/#Flight">机票查询</a></li>
							</ul>
							<div class="content">
								<div class="tab-content" id="Flight">
									<form id="form_1" action="${contextPath }/searchFlights">
										<div>
											<div class="radio">
												<div class="wrapper" style="display:none">
													 <input type="radio" name="flightType" value="1" checked>
													 <span class="left">单程</span>
													 <input type="radio" name="flightType" value="2">
													 <span class="left">双程</span>
												</div>
											</div>
											<div class="row">
												<span class="left">出发城市</span>
												<input type="text" class="input" name="startCity" value="广州" onblur="if(this.value=='') this.value='广州'" onFocus="if(this.value =='广州' ) this.value=''">
											</div>
											<div class="row">
												<span class="left">到达城市</span>
												<input type="text" class="input" name="arrivalCity" value="北京" onblur="if(this.value=='') this.value='北京'" onFocus="if(this.value =='北京' ) this.value=''">
											</div>
											<div class="wrapper">
												<div class="col1">
													<div class="row">
														<span class="left">出发日期</span>
														<input name="startTime" type="text" class="input1" value="2017-05-05"  onblur="if(this.value=='') this.value='2017-05-05'" onFocus="if(this.value =='2017-05-05' ) this.value=''">
													</div>
													<div class="row">
														<span class="left">返回日期</span>
														<input name="returnTime" type="text" class="input1" value="2017-05-07"  onblur="if(this.value=='') this.value='2017-05-07'" onFocus="if(this.value =='2017-05-07' ) this.value=''">
													</div>
												</div>
												<input type="text" class="input1 marg_top1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
											</div>
											<div class="row">
												<span class="left">乘客数量</span>
												<input name="count" type="text" class="input2" value="1"  onblur="if(this.value=='') this.value='1'" onFocus="if(this.value =='1' ) this.value=''">
											</div>
											<div class="wrapper">
												<span class="right relative"><a href="javascript:void(0);" class="button1" onClick="document.getElementById('form_1').submit()"><strong>搜索</strong></a></span>
												<a href="${contextPath }/flightDT" class="link1">航班动态</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>	
					</article>
					<div id="slider">
						<img src="${contextPath }/images/banner1.jpg" alt="">
						<img src="${contextPath }/images/banner2.jpg" alt="">
						<img src="${contextPath }/images/banner3.jpg" alt="">
					</div>
				</div>
		
			</section>
			<!--content end-->
			<jsp:include page="common/footer.jsp"></jsp:include>
		</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
	$(document).ready(function() {
		tabs.init();
	});
	jQuery(document).ready(function($) {
		$('#form_1, #form_2, #form_3').jqTransform({imgPath:'jqtransformplugin/img/'});	
	});
	$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
		slices:15,
		animSpeed:500,
		pauseTime:6000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:true, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:1, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
	});
</script>

</body>
</html>