<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${contextPath }/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${contextPath }/js/jquery.js"></script>

<script type="text/javascript">
$(function(){
	
	var menuid = <%=request.getParameter("menu") %>;
	if(menuid == null) menuid = 1;
	$("#menu"+menuid).show();
	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">


<div id="menu1" style="display: none;">
	<div class="lefttop"><span></span>信息管理</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    	<span><img src="${contextPath }/images/leftico01.png" /></span>航班信息管理
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="${contextPath }/index" target="rightFrame">首页</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/flight/index" target="rightFrame">航班列表</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/flight/intoAdd" target="rightFrame">新增航班</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    	<span><img src="${contextPath }/images/leftico02.png" /></span>购票信息管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="${contextPath }/order/index" target="rightFrame">订单列表</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/order/intoAdd" target="rightFrame">新增订单</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd>
    <div class="title">
    	<span><img src="${contextPath }/images/leftico03.png" /></span>人员信息管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="${contextPath }/administrator/index" target="rightFrame">人员列表</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/administrator/intoAdd" target="rightFrame">新增人员</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd>
    <div class="title">
    	<span><img src="${contextPath }/images/leftico04.png" /></span>客户信息管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="${contextPath }/customer/index" target="rightFrame">客户列表</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/customer/intoAdd" target="rightFrame">新增客户</a><i></i></li>
    </ul>
    </dd>   
    
    </dl>
</div>

<div id="menu2" style="display: none;">
	<div class="lefttop"><span></span>基础数据</div>
    
    <dl class="leftmenu">
          
    <dd>
    <div class="title">
    	<span><img src="${contextPath }/images/leftico04.png" /></span>基础数据管理
    </div>
    <ul class="menuson">
        <li class="active"><cite></cite><a href="${contextPath }/company/index" target="rightFrame">航空公司</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/plane/index" target="rightFrame">机型信息</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/airport/index" target="rightFrame">机场信息</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/ticketPrice/index" target="rightFrame">票价类型</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/discount/index" target="rightFrame">折扣类型</a><i></i></li>
        <li><cite></cite><a href="${contextPath }/passenger/index" target="rightFrame">乘客信息</a><i></i></li>
    </ul>
    </dd>   
    
    </dl>
</div>

</body>
</html>
