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
<jsp:include page="common/link.jsp" ></jsp:include>
</head>

<body id="page6">
<div class="main">
<jsp:include page="common/header.jsp"></jsp:include>
<!--content -->
	<section id="content">
		<div class="wrapper pad1">
			<article class="col1">
				<div class="box1">
							<h2 class="top">联系我们</h2>
							<div class="pad">
								<div class="wrapper pad_bot1">
									<p class="cols pad_bot2"><strong>Country:<br>
										城市:<br>
										地址:<br>
										邮箱:</strong></p>
									<p class="color1 pad_bot2">中国<br>
										广州<br>
										广东工业大学<br>
										<a href="mailto:">110616516@mail.com</a></p>
								</div>
							</div>
							<h2>Miscellaneous Info</h2>
							<div class="pad pad_bot1">
								<p class="pad_bot2">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inven- tore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolore ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup- tatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
							</div>
						</div>
					</article>
					<article class="col2">
						<h3 class="pad_top1">联系我们</h3>
						<form id="ContactForm">
							<div>
								<div  class="wrapper">
									<span>姓名:</span>
									<input type="text" class="input" >
								</div>
								<div  class="wrapper">
									<span>邮箱:</span>
									<input type="text" class="input" >								
								</div>
								<div  class="textarea_box">
									<span>内容:</span>
									<textarea name="textarea" cols="1" rows="1"></textarea>								
								</div>
								<a href="${contextPath }/#" class="button1" onClick="document.getElementById('ContactForm').submit()"><strong>发送</strong></a>
								<a href="${contextPath }/#" class="button1" onClick="document.getElementById('ContactForm').reset()"><strong>清除</strong></a>
							</div>
						</form>
					</article>
				</div>
			</section>
			<!--content end-->
			<jsp:include page="common/footer.jsp"></jsp:include>
		</div>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>