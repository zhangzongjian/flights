<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TicketPrice index</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){

  $(".add").click(function(){
	  location.href = "${contextPath}/ticketprice/intoAdd";
  });
  
  $(".update").click(function(){
	  if($("[name='id']:checked").length != 1) {
		  alert("只能选中一条记录修改！");
		  return;
	  }
	  var id = $("[name='id']:checked").val();
	  location.href = "${contextPath}/ticketprice/intoUpdate?id="+id+"&page=${pager.page }";
  });

  $(".delete").click(function(){
	  if(confirm("确定删除多条记录？")) {
		  if($("[name='id']:checked").length == 0) return;
		  var url = "${contextPath}/ticketprice/delete?";
		  $("[name='id']:checked").each(function() {
		  	url = url+"id="+$(this).val()+"&";			  		
		  });
		  location.href = url;
	  }
  });

});
</script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="add"><span><img src="${contextPath}/images/t01.png" /></span>添加</li>
        <li class="update"><span><img src="${contextPath}/images/t02.png" /></span>修改</li>
        <li class="delete"><span><img src="${contextPath}/images/t03.png" /></span>删除</li>
        <li><span><img src="${contextPath}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="${contextPath}/images/t05.png" /></span>显示设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th style="width:35px;"><input class="checkAll" type="checkbox" value=""/></th>
	  	<th>舱位类型</th>
	  	<th>舱位数量</th>
	  	<th>价格</th>
	  	<th>航班编号</th>
	  	<th>折扣类型</th>
	  	<th>优惠价</th>
	  	<th>创建时间</th>
        <th style="width:150px;">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pager.datas }" var="ticketprice">
	        <tr>
	        <td><input name="id" type="checkbox" value="${ticketprice.id }" /></td>
	  		<td>${ticketprice.classType }</td>
	  		<td>${ticketprice.classAmount }</td>
	  		<td>${ticketprice.price }</td>
	  		<td>${ticketprice.flightId }</td>
	  		<td>${ticketprice.discountId }</td>
	  		<td>${ticketprice.dprice }</td>
	  		<td>${ticketprice.createTime }</td>
	        <td>
		        <a href="${contextPath}/ticketprice/detail?id=${ticketprice.id }&page=${pager.page }" class="tablelink">查看</a>     
		        <a href="${contextPath}/ticketprice/intoUpdate?id=${ticketprice.id }&page=${pager.page }" class="tablelink">修改</a>
		        <a href="${contextPath}/ticketprice/delete?id=${ticketprice.id }&page=${pager.page }" onclick="javascript:if(!confirm('确定删除该记录？')) return false;" class="tablelink">删除</a>
	        </td>
	        </tr> 
        </c:forEach>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">${pager.total }</i>条记录，当前显示第&nbsp;<i class="blue">${pager.page }&nbsp;/&nbsp;${pager.pageSum }&nbsp;</i>页，每页显示&nbsp;<i><input type="text" value="${pager.limit }" onkeydown="this.onkeyup();" onkeyup="this.size=(this.value.length>1?this.value.length:1);" onblur="setLimit(this.value);" size="1" style="text-align: center"/></i>&nbsp;条</div>
        <ul class="paginList" style="right: 140px">
	    	<li class="paginItem"><a href="javascript:goPage(1);">首页</a></li>
	        <li class="paginItem"><a href="javascript:goPage(${pager.pageSum });">末页</a></li>
	        <li class="paginItem current"><a href="javascript:;">跳转</a></li>
	        <li class="paginItem"><input id="page_input" type="text" class="dfinput" value="${pager.page }" style="width:30px;height: 28px"/></li>
	        <li class="paginItem"><a href="javascript:goPage('x');">GO</a></li>
	    </ul>
	    <ul class="paginList">
	        <li class="paginItem"><a href="javascript:goPage(${pager.page-1 });"><span class="pagepre"></span></a></li>
	        <li class="paginItem current"><a href="javascript:;">${pager.page }</a></li>
	        <li class="paginItem"><a href="javascript:goPage(${pager.page+1 });"><span class="pagenxt"></span></a></li>
        </ul>				
    </div>
    
    </div>
    
    
  	<script src="${contextPath}/js/jquery-1.11.3.min.js"></script> 
 	<script src="${contextPath}/js/jquery.tableCheckbox.js"></script> 
    <script type="text/javascript">
    
	$('.tablelist tbody tr:odd').addClass('odd');
	
	//自定义全选 ? 与jquery.tableCheckbox似乎冲突
	$('.checkAll').click(function(){
		if($('.checkAll').attr('checked')) {
			$("[name='id']").attr("checked",'true');//全选
		}
		else {
			$("[name='id']").removeAttr("checked");//取消全选
		}
	});
	
	//页码跳转
	function goPage(pageNum) {
		if(pageNum == 'x') {
			pageNum = document.getElementById('page_input').value;
		}
		if(pageNum > 0 && pageNum <= '${pager.pageSum }') {
			location.href = "${contextPath}/ticketprice/index?page="+pageNum;
		}
	}
	//每页显示条目
	function setLimit(limit) {
		if(limit > 0 && limit <= 1000) {
			location.href = "${contextPath}/ticketprice/index?limit="+limit;
		}
	}
	
	$('tablelist').tableCheckbox({ /* options */ });
	$('table').tableCheckbox({ /* options */ });
	</script>
</body>
</html>
