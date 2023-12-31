<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>汽车详情</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/style_index.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/index.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/jquery.validate.js"></script>
		
	</head>
	<style>
		body{
	    	background: url("${pageContext.request.contextPath}/static/admin/images/bg05.jpg") fixed center ;
	    } 
	</style>
	<body onload="startTime()">
		<div class="nav-top">
			<span><a href="${pageContext.request.contextPath }/views/admin/index.jsp"><font color="white">二手车交易平台</font></a></span>
			<div class="nav-topright">
				<span id="nowDateTimeSpan"></span></font>    
				<!-- 判断是否处于登录状态 -->
				<span>您好<c:if test="${sessionScope.adminloginSession.getLogin_permission() == 'admin' }">：管理员</c:if></span>
				<span><a href="${pageContext.request.contextPath }/loginInitAction"><font color="aqua">注 销</font></a></span>
			</div>
		</div>
		<div class="nav-down">
			<div class="leftmenu1">
				<div class="menu-oc"><img src="${pageContext.request.contextPath }/static/admin/images/menu-all.png" /></div>
				<ul>
					<li>
						<a class="a_list a_list1">二手车管理</a>
						<div class="menu_list menu_list_first">
							<a href="${pageContext.request.contextPath }/admin/queryAllOnlineCar">在售车辆</a>
							<a href="${pageContext.request.contextPath }/admin/queryAllDownShelfCar">下架车辆</a>
						</div>
					</li>
					<li>
						<a class="a_list a_list1">品牌管理</a>
						<div class="menu_list menu_list_first">
							<a href="${pageContext.request.contextPath }/views/admin/brandManage/brand_add.jsp">添加品牌</a>
							<a href="${pageContext.request.contextPath }/admin/brandListInit">品牌管理</a>
						</div>
					</li>
					<li>
						<a class="a_list a_list1">分类管理</a>
						<div class="menu_list menu_list_first">
							<a href="${pageContext.request.contextPath }/adminClassifyManage/queryAllBrand">品牌分类管理</a>
							<a href="${pageContext.request.contextPath }/adminClassifyManage/getAllPrice">价格分类管理</a>
						</div>
					</li>
					<li>
						<a class="a_list a_list2">推荐管理</a>
						<div class="menu_list menu_list_first">
							<a href="${pageContext.request.contextPath }/adminRecommandManage/recommandList">推荐车辆</a>
						</div>
					</li>
					<li>
						<a class="a_list a_list2">订单管理</a>
						<div class="menu_list">
							<a href="${pageContext.request.contextPath }/adminOrderManage/orderNotSendList">未发货订单</a>
							<a href="${pageContext.request.contextPath }/adminOrderManage/orderNotReceiveList">未收货订单</a>
							<a href="${pageContext.request.contextPath }/adminOrderManage/orderHistoryList">历史订单</a>
							<a href="${pageContext.request.contextPath }/adminOrderManage/orderDeleteList">回收站</a>
						</div>
					</li>
					<li>
						<a class="a_list a_list3">销量统计</a>
						<div class="menu_list">
							<a href="${pageContext.request.contextPath }/saleCountManage/brandSaleList">品牌统计</a>
							<a href="${pageContext.request.contextPath }/saleCountManage/timeSaleList">时间统计</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="leftmenu2">
				<div class="menu-oc1"><img src="${pageContext.request.contextPath }/static/admin/images/menu-all.png" /></div>
				<ul>
					<li>
						<a class="j_a_list j_a_list1"></a>
					</li>
					<li>
						<a class="j_a_list j_a_list2"></a>
					</li>
					<li>
						<a class="j_a_list j_a_list3"></a>
					</li>
				</ul>

			</div>
			<div class="rightcon" style="">
				
				
				<form class="form-horizontal" role="form" >
				
					<div style="height:100px"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><font size="4px">车辆详情</font></label>
						<div class="col-sm-12"></div>
					</div>
					<br>
					
					<div class="form-group">
					<div class="col-sm-2"></div>
					<div class="col-sm-3">
						<img src="/upload/${requestScope.carDetail.getCar_img() }" width="300px">
						<input type="hidden" name="car_img" value="${requestScope.carDetail.getCar_img() }" >
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
									<option value="${requestScope.carUpdate.getCar_brand_id() }">${requestScope.carDetail.getBrand_name() }</option>
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
		</div>

	</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/datetime.js"></script>
		
</html>
