<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
</script>

<!--header -->
	<header>
		<div class="wrapper">
			<h1><a href="${contextPath }/" id="logo">Air lines</a></h1>
			<span id="slogan">Fast, Frequent &amp; Safe Flights</span>
			<nav id="top_nav">
				<ul>
					<li><a href="${contextPath }/" class="nav1">首页</a></li>
					<li><a href="javascript:void(0);" class="nav2">关于</a></li>
					<li><a href="${contextPath }/contact" class="nav3">联系</a></li>
				</ul>
			</nav>
		</div>
		
		<div class="wrapper">
		<ul class="nav-menu clearfix unstyled" style="height:0px">
			<li>
				<a href="${contextPath }/" class="three-d">
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
					<c:if test="${sessionScope.loginCustomer == null}">
					<li>
						<a href="${contextPath }/intoCustomerLogin" class="three-d">
							登录/注册
							<span class="three-d-box"><span class="front">登录/注册</span><span class="back">登录/注册</span></span>
						</a>
					</li>
					</c:if>
					<c:if test="${sessionScope.loginCustomer != null}">
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
					<li><a href="${contextPath }/customerLogout" class="three-d">
							退出账号
							<span class="three-d-box"><span class="front">退出账号</span><span class="back">退出账号</span></span>
						</a>
					</li>
					</c:if>
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