<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Flight index</title>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){

  $(".add").click(function(){
	  location.href = "${contextPath}/flight/intoAdd";
  });
  
  $(".update").click(function(){
	  if($("[name='id']:checked").length != 1) {
		  alert("只能选中一条记录修改！");
		  return;
	  }
	  var id = $("[name='id']:checked").val();
	  location.href = "${contextPath}/flight/intoUpdate?id="+id+"&page=${pager.page }";
  });

  $(".delete").click(function(){
	  if(confirm("确定删除多条记录？")) {
		  if($("[name='id']:checked").length == 0) return;
		  var url = "${contextPath}/flight/delete?";
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
    <li><a href="${contextPath }/index">首页</a></li>
    <li><a href="${contextPath }/flight/index">航班列表</a></li>
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
        <th>编号</th>
	  	<th>航班号</th>
	  	<th>出发时间</th>
	  	<th>出发机场</th>
	  	<th>抵达时间</th>
	  	<th>目的机场</th>
	  	<th>飞机</th>
	  	<th>实际出发时间</th>
	  	<th>实际抵达时间</th>
	  	<th>状态</th>
	  	<th>创建时间</th>
        <th style="width:150px;">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pager.datas }" var="flight">
	        <tr>
	        <td><input name="id" type="checkbox" value="${flight.id }" /></td>
	  		<td>${flight.id }</td>
	  		<td>${flight.flightNo }</td>
	  		<td><fmt:formatDate value="${flight.startTime }" pattern="yyyy-MM-dd HH:mm" /></td>
	  		<td>${flight.startAirportId }</td>
	  		<td><fmt:formatDate value="${flight.arrivalTime }" pattern="yyyy-MM-dd HH:mm" /></td>
	  		<td>${flight.endAirportId }</td>
	  		<td>${flight.planeId }</td>
	  		<td><fmt:formatDate value="${flight.startRealTime }" pattern="yyyy-MM-dd HH:mm" /></td>
	  		<td><fmt:formatDate value="${flight.arrivalRealTIme }" pattern="yyyy-MM-dd HH:mm" /></td>
	  		<td>${flight.status }</td>
	  		<td><fmt:formatDate value="${flight.createTime }" pattern="yyyy-MM-dd HH:mm" /></td>
	        <td>
		        <a href="${contextPath}/flight/detail?id=${flight.id }&page=${pager.page }" class="tablelink">查看</a>     
		        <a href="${contextPath}/flight/intoUpdate?id=${flight.id }&page=${pager.page }" class="tablelink">修改</a>
		        <a href="${contextPath}/flight/delete?id=${flight.id }&page=${pager.page }" onclick="javascript:if(!confirm('确定删除该记录？')) return false;" class="tablelink">删除</a>
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
			location.href = "${contextPath}/flight/index?limit=${pager.limit}&page="+pageNum;
		}
	}
	//每页显示条目
	function setLimit(limit) {
		if(limit > 0 && limit <= 1000) {
			location.href = "${contextPath}/flight/index?limit="+limit;
		}
	}
	
	$('tablelist').tableCheckbox({ /* options */ });
	$('table').tableCheckbox({ /* options */ });
	</script>
</body>
</html>
