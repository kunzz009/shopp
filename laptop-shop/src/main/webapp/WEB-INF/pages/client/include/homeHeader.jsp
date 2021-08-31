<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link href="Frontend/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link
	href='//fonts.googleapis.com/css?family=Londrina+Solid|Coda+Caption:800|Open+Sans'
	rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="Frontend/css/responsiveslides.css">
<script src="Frontend/js/jquery.min.js"></script>
<script src="Frontend/js/responsiveslides.min.js"></script>
<script src="js/client/accounting.js"></script>

<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



<script>
		    // You can also use "$(window).load(function() {"
			    $(function () {

			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		   
		  </script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="logo" style="padding-top: 20px; padding-left:30px;">
					<a href="<%=request.getContextPath()%>/"><img
							src="Frontend/img/logo3.png" title="logo" /></a>
				</div>
			</div>
			<div class="col-md-5">
				<form class="navbar-form navbar-left" action="/laptopshop/search" style="padding-top: 20px;">
					<div class="form-group">
						<input type="text" name="name" class="form-control" placeholder="Search" style="width: 350px;">
					</div>
					<button type="submit" class="btn"  style="background-color: deeppink;border-color: deeppink">Search</button>
				</form>


			</div>

			<div class="col-md-4">
				<div class="header-top-nav " style="padding-top: 30px;">
					<c:if test="${pageContext.request.userPrincipal.name != null}">

						<ul>
							<li>Xin chào: ${loggedInUser.hoTen}</li>


							<!-- 	<li><a href="<%=request.getContextPath()%>/checkout"">Thanh toán</a></li> -->
							<li><span class="glyphicon glyphicon-user"></span><a href="<%=request.getContextPath()%>/account">Tài
								khoản</a></li>
							<li><a href="<%=request.getContextPath()%>/cart"><span>Giỏ
									hàng&nbsp;&nbsp;: </span></a><span
									class="glyphicon glyphicon-shopping-cart"></span></li>
							<li><a href="<%=request.getContextPath()%>/logout"> Đăng
								xuất</a></li>
						</ul>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<ul>
							<li><span class="glyphicon glyphicon-list-alt"> <a href="<%=request.getContextPath()%>/register">Đăng
								kí</a></li>
							<li><span class="glyphicon glyphicon-user"></span><a href="<%=request.getContextPath()%>/login" style="padding-left: 5px;"> Đăng
								nhập</a></li>
							<li><span class="glyphicon glyphicon-shopping-cart"></span><a href="<%=request.getContextPath()%>/cart" style="padding-left: 5px;"> <span>Giỏ hàng&nbsp;&nbsp;&nbsp;</span></a></li>

						</ul>
					</c:if>
				</div>

			</div>

		</div>

	</div>

	<div class="clear"></div>

	<div class="top-header">
		<div class="wrap">
			<!----start-top-nav---->
			<div class="top-nav container">
				<ul>
					<li><a href="<%=request.getContextPath()%>/">Trang chủ</a></li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Cửa hàng <span class="caret"></span></a>
						<ul class="dropdown-menu" style="background: #00008b" id="danhmuc2">
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/shipping">Miễn
							phí vận chuyển</a></li>
					<li><a href="<%=request.getContextPath()%>/guarantee">Bảo
							hành tận nơi</a></li>

					<li><a href="<%=request.getContextPath()%>/contact">Liên hệ</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!----End-top-nav---->
	<!----End-Header---->
	
	<script src="<c:url value='/js/client/header.js'/>" ></script>