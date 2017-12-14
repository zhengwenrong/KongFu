<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script>
	$(function() {

		$(".menuaa li ").click(
				function() {
					// $(".onea").slideToggle().parent().siblings().find(".onea").slideUp();
					$(this).find(".onea").slideDown().parent().siblings().find(
							".onea").slideUp();

				})

		$(".menuaa li .onea li").click(function() {
			alert("a")

		})
	})
</script>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}

ui li {
	list-style: none;
}

a {
	text-decoration: none;
	cursor: pointer;
}

#logo {
	margin-top: 11px;
}

.header {
	background-image: url(img/menu-bg.png);
	background-repeat: no-repeat;
	background-position: 20% bottom;
	border-bottom: 3px solid red;
}

.headercenter {
	position: relative;
	height: 74px;
	width: 1220px;
	margin: 0 auto;
}

.login {
	float: right;
	margin: 18px 0px 0 10px;
}

.login a {
	color: #E60012;
	font-size: 14px;
	font-family: 微软雅黑;
	text-decoration: none;
}

.login a:hover {
	color: #8c8c8c;
}

.menu {
	background-color: #e60012;
	position: absolute;
	bottom: -10px;
	right: -70px;
	padding-right: 130px;
}

.menua {
	float: left;
	list-style: none;
	width: 110px;
	height: 29px;
	line-height: 28px;
	text-align: center;
	color: white;
	font-size: 16px;
}

.first {
	float: left;
	list-style: none;
	line-height: 28px;
	text-align: center;
	background-image: url(img/bgs.png);
	background-repeat: no-repeat;
	background-position: -253px 0;
	width: 36px;
	height: 29px;
	margin: 0;
}

.menu li a {
	color: #fff;
	font-size: 17px;
	display: block;
	min-width: 63px;
	padding: 0 14px;
	margin: 0 7px;
	line-height: 30px;
	text-align: center;
	text-decoration: none;
}

.menu li a:hover {
	color: #8c8c8c;
}

.line {
	background-color: #f39800;
	height: 16px;
	width: 1px;
	margin-top: 8px;
	overflow: hidden;
	float: left;
}

/*菜单*/
.bottom {
	background-image: url(img/bgs.png);
	background-repeat: no-repeat;
	background-position: 0 -42px;
	width: 100%;
	height: 19px;
}

.sidebar-left {
	width: 253px;
	position: absolute;
	top: 56px;
	left: 186px;
	z-index: 102;
}

.block-title {
	display: block;
	background-image: url(img/bgs.png);
	background-repeat: no-repeat;
	overflow: visible;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	word-wrap: break-word;
	color: #fff;
	padding: 0 35px;
	background-position: 0 0;
	height: 42px;
	line-height: 28px;
	letter-spacing: 1px;
	text-align: center;
}

.sidebar-block .content {
	background-color: #fff;
	margin: 0 23px;
	border-left: 2px solid #e60012;
	border-right: 2px solid #e60012;
}

.menuaa {
	margin: -10px auto;
	position: relative;
	width: 193px;
	list-style: none;
	list-style-image: none;
}

.menuaa li {
	
}

.menuaa li a {
	
}

.onea {
	display: none;
}

.onea li {
	list-style: none;
}

.onea li a {
	text-decoration: none;
	color: #6A3301;
}

.onea li a:hover {
	color: red;
}

.onea1 li {
	list-style: none;
}

.onea1 li a {
	text-decoration: none;
	color: red;
}

.onea1 li a:hover {
	color: #6A3301;
}

#sidebar-cart {
	width: 184px;
	position: absolute;
	z-index: 102;
	top: 100px;
	right: 173px;
}

#sidebar-cart .search {
	background-image: url(img/bgs.png);
	background-repeat: no-repeat;
	background-position: -253px -42px;
	height: 7px;
	overflow: hidden;
}

.cart-info-close {
	background-image: url(img/bgs.png);
	background-repeat: no-repeat;
	font: 0/0 a;
	color: transparent;
	display: block;
	text-shadow: none;
	border: 0;
	display: block;
	background-color: transparent;
	background-position: -253px -75px;
	border: 0;
	width: 184px;
	height: 32px;
	padding: 0;
}

.tu {
	margin-top: 20px;
}
</style>
<body>

	<div class="header">
		<div class="headercenter">
			<a href="#"><img id="logo" src="img/d679258.png"></a>


			<div class="login">
				<a href="#">登录</a> <span style="font-size: 18px; color: red">|</span>
				<a href="#">注册</a>
			</div>


			<ul class="menu">
				<li class="first"></li>
				<li class=" menua "><a href="">首页</a></li>
				<li class="line"></li>
				<li class="menua"><a href="">订单查询</a></li>
				<li class="line"></li>
				<li class="menua"><a href="">会员中心</a></li>
				<li class="line"></li>
				<li class="menua"><a href="">帮助中心</a></li>
			</ul>

		</div>


	</div>


	<div class="container-fluid ">
		<div id="mycarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">

				<div class="item  active">
					<img src="img/pc-首页轮播－土鸡汤.jpg" alt="">
				</div>
				<div class="item ">
					<img src="img/20151105115329_4446_2.jpg" alt="">
				</div>
				<div class="item ">
					<img src="img/栗子焖土鸡饭猪骨汤套配西兰花.jpg" alt="">
				</div>
			</div>


		</div>



		<div class="sidebar-left">
			<div class="sidebar-block">
				<h3 class="block-title">
					<img src="img/caidan.png" alt="" width="110" height="26">
				</h3>
				<div class="content">
					<ul class="menuaa">
						<li><a href="#">热卖</a>
							<ul class=" onea onea1">

								<c:forEach items="${hot }" var="h">

									<li><a href="#">${h.categoryname }</a></li>

								</c:forEach>

							</ul>
						</li>

						<li><a href="#">热卖</a>
							<ul class="onea">

								<c:forEach items="${breakfast }" var="h">

									<li><a href="#">${h.categoryname }</a></li>

								</c:forEach>

							</ul>
						</li>

						<li><a href="#">热卖</a>
							<ul class="onea">
								<c:forEach items="${dinner }" var="h">

									<li><a href="#">${h.categoryname }</a></li>

								</c:forEach>
							</ul>
						</li>

						<li><a href="#">热卖</a>
							<ul class="onea">
								<c:forEach items="${tea }" var="h">

									<li><a href="#">${h.categoryname }</a></li>

								</c:forEach>
							</ul>
						</li>
					</ul>
				</div>
				<div class="bottom"></div>
			</div>
		</div>

		<!--购物车-->
		<div id="sidebar-cart" data-toggle="modal" data-target="#myModal">
			<div class="search"></div>
			<div class="inner">
				<a class="cart-info-close"></a>
			</div>
		</div>
		<!--模态框-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2 class="modal-title" style="text-align: center"
							id="myModalLabel">购物车</h2>
					</div>
					<div class="modal-body">
						<p>产品总额：</p>
						<p>外送费：</p>
						<p>应付金额：</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

					</div>
				</div>
			</div>
		</div>
		<!--购物车-->
	</div>

	<div class="tu">
		<img src="img/IJ2KH_(_%7D)7VK5~4WJR_$~7.jpg">
	</div>





</body>
</html>

