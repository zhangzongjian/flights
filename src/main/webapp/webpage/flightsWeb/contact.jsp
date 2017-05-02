<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
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
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">
	.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url(js/PIE.htc)}
</style>
<![endif]-->
<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
</head>

<body id="page6">
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
				<a href="${contextPath }/" class="three-d">
					首页
					<span class="three-d-box"><span class="front">首页</span><span class="back">首页</span></span>
				</a>
			</li>
			<li>
				<a href="${contextPath }/#" class="three-d">
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
						<a href="${contextPath }/#" class="three-d">
							登录/注册
							<span class="three-d-box"><span class="front">登录/注册</span><span class="back">登录/注册</span></span>
						</a>
					</li>
					<li><a href="${contextPath }/#" class="three-d">
							我的资料
							<span class="three-d-box"><span class="front">我的资料</span><span class="back">我的资料</span></span>
						</a>
					</li>
					<li><a href="${contextPath }/#" class="three-d">
							我的订单
							<span class="three-d-box"><span class="front">我的订单</span><span class="back">我的订单</span></span>
						</a>
					</li>
					<li><a href="${contextPath }/customerLogout" class="three-d">
							退出账号
							<span class="three-d-box"><span class="front">退出账号</span><span class="back">退出账号</span></span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="${contextPath }/#" class="three-d active">
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
		<div class="wrapper pad1">
			<article class="col1">
				<div class="box1">
							<h2 class="top">Contact Us</h2>
							<div class="pad">
								<div class="wrapper pad_bot1">
									<p class="cols pad_bot2"><strong>Country:<br>
										City:<br>
										Address:<br>
										Email:</strong></p>
									<p class="color1 pad_bot2">USA<br>
										San Diego<br>
										Beach st. 54<br>
										<a href="mailto:">airlines@mail.com</a></p>
								</div>
							</div>
							<h2>Miscellaneous Info</h2>
							<div class="pad pad_bot1">
								<p class="pad_bot2">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inven- tore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolore ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup- tatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
							</div>
						</div>
					</article>
					<article class="col2">
						<h3 class="pad_top1">Contact Form</h3>
						<form id="ContactForm">
							<div>
								<div  class="wrapper">
									<span>Name:</span>
									<input type="text" class="input" >
								</div>
								<div  class="wrapper">
									<span>Email:</span>
									<input type="text" class="input" >								
								</div>
								<div  class="textarea_box">
									<span>Message:</span>
									<textarea name="textarea" cols="1" rows="1"></textarea>								
								</div>
								<a href="${contextPath }/#" class="button1" onClick="document.getElementById('ContactForm').submit()"><strong>Send</strong></a>
								<a href="${contextPath }/#" class="button1" onClick="document.getElementById('ContactForm').reset()"><strong>Clear</strong></a>
							</div>
						</form>
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
Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://777moban.com/">æ¨¡æ¿å¤§å¨</a></div>
				</div>
			</footer>
			<!--footer end-->
		</div>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>