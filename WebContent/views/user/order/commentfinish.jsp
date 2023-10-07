<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>历史订单页面</title>
<link
	href="${pageContext.request.contextPath }/static/user/css/bootstrap.css"
	type="text/css" rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath }/static/user/css/style.css"
	type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/user/css/lightbox.css">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Ramble Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
			$(function(){
				$("#addBrandForm").validate({
				    // 添加验证规则
				    rules: {
				    	brand_name: "required",
				    },
				    //重设提示信息
				    messages:{
				    	brand_name: "请输入评论内容",
				    }
				});  
				
			})
		
</script>
<!-- //Custom Theme files -->
<!-- js -->
<script
	src="${pageContext.request.contextPath }/static/user/js/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/static/user/js/bootstrap.js"></script>
<!-- //js -->
<!--animate-->
<link
	href="${pageContext.request.contextPath }/static/user/css/animate.css"
	rel="stylesheet" type="text/css" media="all">
<script
	src="${pageContext.request.contextPath }/static/user/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!--//end-animate-->
</head>
<style>
body {
	background:
		url("${pageContext.request.contextPath}/static/user/images/orderBg.jpg")
		fixed center;
}
</style>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-info navbar-left wow fadeInLeft animated"
				data-wow-delay=".5s"
				style="visibility: visible; -webkit-animation-delay: .5s;">
				<p>
					您好：
					<c:out value="${sessionScope.loginSession_name }" default="未登录"></c:out>
				</p>
			</div>
			<form
				action="${pageContext.request.contextPath }/userShop/navQueryIdOrName"
				class="navbar-form navbar-right wow fadeInRight animated"
				data-wow-delay=".5s"
				style="visibility: visible; -webkit-animation-delay: .5s;">
				
				<div class="form-group">
					<button style="margin-left: 30px" class="form-control">
						<a href="${pageContext.request.contextPath }/loginInitAction">注销</a>
					</button>
				</div>
			</form>

		</div>
	</div>
	<!--//header-->

	<!-- 添加评论开始 -->
	<div class="footer wow fadeInRight animated" data-wow-delay=".5s"
		style=" -webkit-animation-delay: .5s;">
		<div>
			<h1 style="color:white;">评论成功!!!</h1>
		</div>
	</div>
	<!-- 添加评论结束 -->
	
	<!--footer-->
	<div class="footer wow fadeInRight animated" data-wow-delay=".5s"
		style="visibility: visible; -webkit-animation-delay: .5s;">
		<div class="container">
			<p>&copy; 我们是您的不二选择。</p>
		</div>
	</div>
	<!--//footer-->


</body>

</html>