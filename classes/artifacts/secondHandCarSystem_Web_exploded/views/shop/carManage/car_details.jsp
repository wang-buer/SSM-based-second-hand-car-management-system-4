<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>二手车管理-车辆详情</title>
		<link href="${pageContext.request.contextPath }/static/user/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="${pageContext.request.contextPath }/static/user/css/style.css" type="text/css" rel="stylesheet" media="all">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/css/lightbox.css">
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Ramble Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!-- //Custom Theme files -->
		<!-- js -->
		<script src="${pageContext.request.contextPath }/static/admin/js/jquery-2.2.3.min.js"></script>
		<script src="${pageContext.request.contextPath }/static/user/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath }/static/admin/js/jquery.validate.js"></script>
		<!-- //js -->
		<!--animate-->
		<link href="${pageContext.request.contextPath }/static/user/css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="${pageContext.request.contextPath }/static/user/js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
		<!--//end-animate-->
	</head>
	<style>
		body{
	    	background: url("${pageContext.request.contextPath}/static/user/images/shopBg.jpg") fixed center ;
	    } 
	</style>
	<body>
		<!--header-->
		<div class="header">
			<div class="container">
				<div class="header-info navbar-left wow fadeInLeft animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
					<p>您好：<c:out value="${sessionScope.shoploginSession_name }" default="未登录"></c:out></p>
				</div>
				<form action="${pageContext.request.contextPath }/shop/navQueryIdOrName" class="navbar-form navbar-right wow fadeInRight animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
					<div class="form-group">
						<input type="text" name="car_name" class="form-control" placeholder="搜索 编号或名称">
						<button type="submit" class="btn btn-default" aria-label="Left Align">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
					<div class="form-group">
						<button style="margin-left:30px" class="form-control">
							<a href="${pageContext.request.contextPath }/loginInitAction">注销</a>
						</button>
					</div>
				</form>
				
			</div>
		</div>
		<!--//header-->
		<!--navigation-->
		<div class="top-nav">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a class="navbar-brand wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;" href="${pageContext.request.contextPath }/views/shop/index.jsp">Second-hand Car</a></h1>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							<li class="hvr-bounce-to-bottom">
								<a href="${pageContext.request.contextPath }/views/shop/index.jsp">主页</a>
							</li>
							<li class="hvr-bounce-to-bottom active">
								<a href="${pageContext.request.contextPath }/shop/queryAllOnlineCar">二手车管理</a>
							</li>
							<li class="hvr-bounce-to-bottom">
								<a href="${pageContext.request.contextPath }/shopOrderManage/orderNotSendList">订单管理</a>
							</li>
							<li class="hvr-bounce-to-bottom">
								<a href="${pageContext.request.contextPath }/shop/updateInfoInit">个人中心</a>
							</li>
							<li class="hvr-bounce-to-bottom">
								<a href="${pageContext.request.contextPath }/shopSaleCountManage/saleOrderByTime">销量统计</a>
							</li>
							<li class="hvr-bounce-to-bottom">
								<a href="${pageContext.request.contextPath }/views/shop/aboutUs.jsp">关于我们</a>
							</li>
						</ul>
						<div class="clearfix"> </div>
					</div>
				</div>
			</nav>
		</div>
		<!--navigation-->
		
		<div style="height:50px;"></div>
		
		<!-- 在售车辆列表 -->
		<div style="min-height:800px;">
			
				<div style="height:40px"></div>
				<label style="margin-left:80px"><font size="4px">车辆详情</font></label>
				
				
			<br><br>
			<hr style="border:  double 1px #ADADAD;" />
			<div style="height:30px"></div>
			
			
			<form class="form-horizontal" role="form" >
				
				<div class="form-group">
					<div class="col-sm-2"></div>
					<div class="col-sm-3">
						<img class="imgSrc" src="/upload/${requestScope.carDetail.getCar_img() }" width="300px">
					</div>
					<div class="col-sm-7">
						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-6">
								<input class="form-control" name="car_id"  type="text" value="${requestScope.carDetail.getCar_id() }" readonly="true">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">名称</label>
							<div class="col-sm-6">
								<input class="form-control" name="car_name"  type="text" value="${requestScope.carDetail.getCar_name() }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">品牌</label>
							<div class="col-sm-6">
								<select name="car_brand_id" class="form-control">
									<option value="${requestScope.carDetail.getCar_brand_id() }">${requestScope.carDetail.getBrand_name() }</option>
								</select>
							</div>
						</div>
					</div>
				</div>		
				<br>			
				
				<div class="form-group">
					<label class="col-sm-2 control-label">原价</label>
					<div class="col-sm-8">
						<input class="form-control" name="car_price_old"  type="text" value="${requestScope.carDetail.getCar_price_old() }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">现价</label>
					<div class="col-sm-8">
						<input class="form-control" name="car_price_new"  type="text" value="${requestScope.carDetail.getCar_price_new() }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">购买时间</label>
					<div class="col-sm-8">
						<input type="text" id="car_time_buy" name="car_time_buy" class="form-control" value="${requestScope.carDetail.getCar_time_buy() }" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">上架时间</label>
					<div class="col-sm-8">
						<input type="text" name="car_time_shelf" class="form-control" value="${requestScope.carDetail.getCar_time_shelf() }" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">销售状态</label>
					<div class="col-sm-8">
						<c:if test="${requestScope.carDetail.getCar_status_sell()  == '0'}"><input type="text"  name="car_status_sell" class="form-control" value="下架" /></c:if>
						<c:if test="${requestScope.carDetail.getCar_status_sell()  == '1'}"><input type="text"  name="car_status_sell" class="form-control" value="在线" /></c:if>
						<c:if test="${requestScope.carDetail.getCar_status_sell()  == '2'}"><input type="text"  name="car_status_sell" class="form-control" value="已售" /></c:if>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">是否为推荐车辆</label>
					<div class="col-sm-8">
						<select name="car_status_recommend" class="form-control">
							<c:if test="${requestScope.carDetail.getCar_status_recommend() == '0'}">
								<option value="0">不推荐</option>
							</c:if>
							<c:if test="${requestScope.carDetail.getCar_status_recommend() == '1'}">
								<option value="1">推荐</option>
							</c:if>
							
						</select>
					</div>
				</div>
				
				<br>
				
			</form>
	
		</div>
		<!-- 车辆显示列表end -->
		
		<!--footer-->
		<div class="footer wow fadeInRight animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
			<div class="container">
				<p> &copy; 我们是您的不二选择。</p>
			</div>
		</div>
		<!--//footer-->
		
		
	</body>

</html>
				
				
				


