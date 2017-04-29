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
<link rel="stylesheet" href="${contextPath }/css/nav.css">
<link rel="stylesheet" href="${contextPath }/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="${contextPath }/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="${contextPath }/css/style1.css" type="text/css" media="all">
<script type="text/javascript" src="${contextPath }/js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="${contextPath }/js/cufon-yui.js"></script>
<script type="text/javascript" src="${contextPath }/js/cufon-replace.js"></script>  
<script type="text/javascript" src="${contextPath }/js/Cabin_400.font.js"></script>
<script type="text/javascript" src="${contextPath }/js/tabs.js"></script> 
<script type="text/javascript" src="${contextPath }/js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="${contextPath }/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="${contextPath }/js/atooltip.jquery.js"></script>
<script type="text/javascript" src="${contextPath }/js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="${contextPath }/js/html5.js"></script>
<style type="text/css">
	.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url(js/PIE.htc)}
</style>
<![endif]-->
<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="${contextPath }/http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="${contextPath }/http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
</head>
<body id="page1">
<div class="main">
<!--header -->
	<header>
		<div class="wrapper">
			<h1><a href="${contextPath }/index.html" id="logo">Air lines</a></h1>
			<span id="slogan">Fast, Frequent &amp; Safe Flights</span>
			<nav id="top_nav">
				<ul>
					<li><a href="${contextPath }/index.html" class="nav1">首页</a></li>
					<li><a href="${contextPath }/#" class="nav2">关于</a></li>
					<li><a href="${contextPath }/Contacts.html" class="nav3">联系</a></li>
				</ul>
			</nav>
		</div>
		
		<div class="wrapper">
		<ul class="nav-menu clearfix unstyled">
			<li>
				<a href="${contextPath }/" class="three-d active">
					首页
					<span class="three-d-box"><span class="front">首页</span><span class="back">首页</span></span>
				</a>
			</li>
			<li>
				<a href="${contextPath }/flightDT" class="three-d">
					航班动态
					<span class="three-d-box"><span class="front">航班动态</span><span class="back">航班动态</span></span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0);" class="three-d">
					个人中心
					<span class="three-d-box"><span class="front">个人中心</span><span class="back">个人中心</span></span>
				</a>
				<ul class="clearfix unstyled drop-menu">
					<li>
						<a href="#" class="three-d">
							登录/注册
							<span class="three-d-box"><span class="front">登录/注册</span><span class="back">登录/注册</span></span>
						</a>
					</li>
					<li><a href="${contextPath }/myInfo" class="three-d">
							我的资料
							<span class="three-d-box"><span class="front">我的资料</span><span class="back">我的资料</span></span>
						</a>
					</li>
					<li><a href="${contextPath }/myOrder" class="three-d">
							我的订单
							<span class="three-d-box"><span class="front">我的订单</span><span class="back">我的订单</span></span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="${contextPath }/contact" class="three-d">
					联系我们
					<span class="three-d-box"><span class="front">联系我们</span><span class="back">联系我们</span></span>
				</a>
			</li>
		</ul>
	</div>
	</header>
<!-- / header -->
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
												<div class="wrapper">
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
														<input name="startTime" type="text" class="input1" value="2017-04-27"  onblur="if(this.value=='') this.value='2017-04-27'" onFocus="if(this.value =='2017-04-27' ) this.value=''">
													</div>
													<div class="row">
														<span class="left">返回日期</span>
														<input name="returnTime" type="text" class="input1" value="2017-04-29"  onblur="if(this.value=='') this.value='2017-04-29'" onFocus="if(this.value =='2017-04-29' ) this.value=''">
													</div>
												</div>
												<input type="text" class="input1 marg_top1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
											</div>
											<div class="row">
												<span class="left">乘客数量</span>
												<input name="count" type="text" class="input2" value="2"  onblur="if(this.value=='') this.value='2'" onFocus="if(this.value =='2' ) this.value=''">
											</div>
											<div class="wrapper">
												<span class="right relative"><a href="javascript:void(0);" class="button1" onClick="document.getElementById('form_1').submit()"><strong>搜索</strong></a></span>
												<a href="${contextPath }/#" class="link1">更多选项</a>
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
		<div class="wrapper pad1">
			<article class="col1">
				<div class="box1">
							<h2 class="top">Offers of the Week from UK</h2>
							<div class="pad">
								<strong>From Birmingham</strong><br>
								<ul class="pad_bot1 list1">
									<li>
										<span class="right color1">from GBP 143.-</span>
										<a href="${contextPath }/Book2.html">Zurich</a>
									</li>
								</ul>
								<strong>From London City</strong><br>
								<ul class="pad_bot1 list1">
									<li>
										<span class="right color1">from GBP 176.-</span>
										<a href="${contextPath }/Book2.html">Basel</a>
									</li>
									<li>
										<span class="right color1">from GBP 109.-</span>
										<a href="${contextPath }/Book2.html">Geneva</a>
									</li>
								</ul>
								<strong>From London Heathrow</strong><br>
								<ul class="pad_bot2 list1">
									<li>
										<span class="right color1">from GBP 100.-</span>
										<a href="${contextPath }/Book2.html">Geneva</a>
									</li>
									<li>
										<span class="right color1">from GBP 112.-</span>
										<a href="${contextPath }/Book2.html">Zurich</a>
									</li>
									<li>
										<span class="right color1">from GBP 88.-</span>
										<a href="${contextPath }/Book2.html">Basel</a>
									</li>
								</ul>
							</div>
							<h2>From Ireland To Switzerland</h2>
							<div class="pad">
								<strong>From Dublin</strong><br>
								<ul class="pad_bot2 list1">
									<li class="pad_bot1">
										<span class="right color1">from EUR 122.-</span>
										<a href="${contextPath }/Book2.html">Zurich</a>
									</li>
								</ul>
							</div>
						</div>
					</article>
					<article class="col2">
						<h3>About Our Airlines<span>Template created  team</span></h3>
						<div class="wrapper">
							<article class="cols">
								<figure><img src="${contextPath }/images/page1_img1.jpg" alt="" class="pad_bot2"></figure>
								<p class="pad_bot1"><strong>Airlines is one of free website templates created  team.</strong></p>
								<p>This website template is optimized for 1024X768 screen resolution. It is also XHTML &amp; CSS valid. This website template has several pages: <a href="${contextPath }/index.html">About</a>, <a href="${contextPath }/Offers.html">Offers</a>, <a href="${contextPath }/Book.html">Book</a>, <a href="${contextPath }/Services.html">Services</a>, <a href="${contextPath }/Safety.html">Safety</a>, <a href="${contextPath }/Contacts.html">Contacts</a>.</p>
							</article>
							<article class="cols pad_left1">
								<figure><img src="${contextPath }/images/page1_img2.jpg" alt="" class="pad_bot2"></figure>
								<p class="pad_bot1"><strong>This Airlines Template goes with two packages.</strong></p>
								<p>With PSD source files and without them. PSD source files are available for free for the registered members of Templates.com. The basic package (without PSD source files) is available for anyone without registration).</p>
							</article>
						</div>
						<a href="${contextPath }/#" class="button1"><strong>Read More</strong></a>
					</article>
				</div>
			</section>
			<!--content end-->
			<!--footer -->
			<footer>
				<div class="wrapper">
					<ul id="icons">
						<li><a href="${contextPath }/#" class="normaltip" title="Facebook"><img src="${contextPath }/images/icon1.jpg" alt=""></a></li>
						<li><a href="${contextPath }/#" class="normaltip" title="Delicious"><img src="${contextPath }/images/icon2.jpg" alt=""></a></li>
						<li><a href="${contextPath }/#" class="normaltip" title="Stumble Upon"><img src="${contextPath }/images/icon3.jpg" alt=""></a></li>
						<li><a href="${contextPath }/#" class="normaltip" title="Twitter"><img src="${contextPath }/images/icon4.jpg" alt=""></a></li>
						<li><a href="${contextPath }/#" class="normaltip" title="Linkedin"><img src="${contextPath }/images/icon5.jpg" alt=""></a></li>
						<li><a href="${contextPath }/#" class="normaltip" title="Reddit"><img src="${contextPath }/images/icon6.jpg" alt=""></a></li>
					</ul>
					<div class="links">
Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="${contextPath }/http://777moban.com/">模板大全</a></div>
				</div>
			</footer>
			<!--footer end-->
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