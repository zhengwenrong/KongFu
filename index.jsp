<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<style type="text/css">
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
	top: 74px;
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
	padding-bottom: 5px;
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
	padding-bottom:20px;
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

.viewpager {
	overflow: hidden;
}

.viewpager>img {
	width: 100%;
	height: 100%;
	display: none;
	float: left;
}

.viewpager>img:nth-child(1) {
	display: block;
}

.carousel-inner {
	position: relative;
}

.points {
	position: absolute;
	bottom: 20px;
	left: 50%;
}

.points>i {
	display: block;
	width: 10px;
	margin-right: 5px;
	height: 10px;
	float: left;
	border-radius: 10px;
	cursor: pointer;
	background-color: #626262;
}

.point-normal {
	background-color: #626262;
}

.point-actived {
	background-color: #E60012;
}

.points>i:hover {
	background-color: #E60012;
}

.clearfix:before, .clearfix:after {
	content: "";
	display: table;
}

.clearfix:after {
	clear: both;
}

.clearfix {
	*zoom: 1; /*IE/7/6*/
}
</style>

<script src="js/jquery-1.12.4.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script>
	$(function() {

		$(".menuaa li ").click(
				function() {
					// $(".onea").slideToggle().parent().siblings().find(".onea").slideUp();
					$(this).find(".onea").slideDown().parent().siblings().find(
							".onea").slideUp();

				});
	});

	var imgUrls = [ "img/pc-首页轮播－土鸡汤.jpg", "img/栗子焖土鸡饭猪骨汤套配西兰花.jpg",
			"img/20151105115329_4446_2.jpg" ];

	var currentIndex = 0;

	function changImg(index) {

		var $pic = $("#pic");
		$pic.hide();
		$pic.attr("src", imgUrls[index]);
		$pic.fadeIn("slow");
		currentIndex++;
	}

	window.setInterval("changImg(currentIndex%imgUrls.length)", "5000");
	
	
	
</script>

<style type="text/css">
.menuaa>li>a {
	display: block;
	text-align: left;
	line-height: 26px;
	color: white;
}

.menuaa>li:nth-child(1)>a {
	background: url("img/bgs.png") 0 -155px;
	margin-top: 10px;
	border-radius: 10px;
	padding-left: 30px;
}

.menuaa>li:nth-child(2)>a {
	background: url("img/bgs.png") 0 -182px;
	margin-top: 10px;
	border-radius: 10px;
	padding-left: 30px;
}

.menuaa>li:nth-child(3)>a {
	background: url("img/bgs.png") 0 -208px;
	margin-top: 10px;
	border-radius: 10px;
	padding-left: 30px;
}

.menuaa>li:nth-child(4)>a {
	background: url("img/bgs.png") 0 -234px;
	margin-top: 10px;
	border-radius: 10px;
	padding-left: 30px;
}

.onea>li {
	background-image: none;
	width: 100%;
	line-height: 21px;
	font-size: 15px;
	margin-left: 20px;
}

#sidebar-cart {
	width: 184px;
	background-color: #E60012;
	border-radius: 20px;
}

#sidebar-cart .title {
	margin-top: 5px;
}

#sidebar-cart .title>p:nth-child(1) {
	text-align: center;
	font-size: 16px;
	color: white;
	cursor: pointer;
}

#sidebar-cart .title>p>i {
	margin-right: 5px;
}

#sidebar-cart .cart-content {
	width: 180px;
	background-color: white;
	margin: 0 auto;
	border-radius: 10px;
	margin-top: 5px;
	overflow: hidden;
	margin-top:10px;
	display: none;
	padding-bottom: 10px;
}

#sidebar-cart .cart-content .content-title {
	width: 170px;
	background-color: #E60012;
	margin: 0 auto;
	border-radius: 10px;
	text-align: center;
	line-height: 20px;
	color: white;
	margin-top: 10px;
}

#sidebar-cart .title {
	position: relative;
}

#moreunfold {
	position: absolute;
	bottom: 5px;
	left: 50%;
}

.cart-info>div>span:nth-child(1) {
	float: left;
	margin-left: 10px;
	color: #6a3301;
	font-size: 13px;
	line-height: 160%;
}

.cart-info>div>span:nth-child(2) {
	color: #6a3301;
	float: right;
	font-size: 13px;
	margin-right: 10px;
	line-height: 160%;
}

.enter-paypage>span {
	display: block;
	width: 116px;
	height: 37px;
	margin: 20px auto;
	cursor: pointer;
	background: url("img/bgs.png") -253px -195px;
}

.cartItem {
	padding-left: 10px;
	margin-top: 5px;
}

.cartItem>div {
	float: left;
	line-height: 50px;
	margin-right: 10px;
}

.cartItem>div:nth-child(2) {
	width: 40px;
	font-size: 10px; overflow : hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.cartItem>div:nth-child(3) {
	float: right;
}

#shou {
	position: absolute;
	bottom: 0px;
	left: 50%;
	cursor:pointer;
	color:white;
	font-weight: 700;
	display: none;
}

#fang {
	position: absolute;
	bottom: 0px;
	left: 50%;
	cursor:pointer;
	color:white;
	font-weight: 700;
}

</style>

<script type="text/javascript">
	
	function upCart(){
		
		$("#title").slideDown("slow");
		$("#cart-detail").slideUp("slow");
		$("#fang").show();
		$("#shou").hide();
		
	}
	
	function downCart(){
		
		$("#title").slideUp("slow");
		$("#cart-detail").slideDown("slow");
		$("#fang").hide();
		$("#shou").show();
		
	}
	
	function listProduct(categoryId){
		
		window.location="${pageContext.request.contextPath}/listProduct.action?categoryId="+categoryId;
		
	}
	
</script>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid ">
		<div id="mycarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">

				<div class="viewpager clearfix">
					<img id="pic" src="img/pc-首页轮播－土鸡汤.jpg" alt="">
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
							<ul class="onea onea1">

								<c:forEach items="${hot }" var="h">

									<li><a href="javaScript:void(0);" onclick="listProduct('${h.categoryId}')">${h.categoryname }</a></li>

								</c:forEach>

							</ul></li>

						<li><a href="#">营养早餐 8:00-10:30</a>
							<ul class="onea">

								<c:forEach items="${breakfast }" var="h">

									<li><a href="javaScript:void(0);" onclick="listProduct('${h.categoryId}')">${h.categoryname }</a></li>

								</c:forEach>

							</ul></li>

						<li><a href="#">丰富主食 10:30-22:00</a>
							<ul class="onea">
								<c:forEach items="${dinner}" var="h">

									<li><a href="javaScript:void(0);" onclick="listProduct('${h.categoryId}')">${h.categoryname }</a></li>

								</c:forEach>
							</ul></li>

						<li><a href="#">轻松下午茶 14:00-17:00</a>
							<ul class="onea">
								<c:forEach items="${tea }" var="h">

									<li><a href="javaScript:void(0);" onclick="listProduct('${h.categoryId}')">${h.categoryname }</a></li>

								</c:forEach>
							</ul></li>
					</ul>
				</div>
				<div class="bottom"></div>
			</div>
		</div>

		<!--购物车-->
		<div id="sidebar-cart">

			<div id="title" class="title">

				<p onclick="downCart()">
					<i class="iconfont icon-cart"></i>购物车
				</p>

			</div>

			<i id="shou" onclick="upCart()" class="iconfont icon-less"></i>
			<i id="fang" onclick="downCart()" class="iconfont icon-moreunfold"></i>


			<div id="cart-detail" class="cart-content">

				<div class="content-title">
					<p>
						<i class="iconfont icon-edit"></i> 订餐信息
					</p>
				</div>

				<p style="padding: 5px 10px;">
					下单<font color="red">45分钟</font>左右送达
				</p>

				<div class="cart-info">

					<div class="clearfix">
						<span>餐品总额:</span> <span>0元</span>
					</div>

					<div class="clearfix">
						<span>优惠金额:</span> <span>0元</span>
					</div>

					<div class="clearfix">
						<span>外送费:</span> <span>0元</span>
					</div>

					<div class="clearfix">
						<span><font color="red">应付金额:</font></span> <span><font
							color="red">0元</font></span>
					</div>

				</div>

				<div class="enter-paypage">
					<span></span>
				</div>

				<h2 style="padding: 5px 10px;">购物车详情</h2>


				<div class="cartItem clearfix">

					<div class="box-img">
						<img src="img/logo.png" width="50px" height="50px">
					</div>

					<div class="box-name">真功夫asdfsdafsdafasdf</div>

					<div class="box-price">
						<font color="red">￥20.00</font>
					</div>


				</div>


				<div class="cartItem">

					<div class="box-img">
						<img src="img/logo.png" width="50px" height="50px">
					</div>

					<div class="box-name">真功夫asdfsdafsdafasdf</div>

					<div class="box-price">
						<font color="red">￥20.00</font>
					</div>


				</div>



			</div>


		</div>

	</div>

	<div class="tu">
		<img src="img/IJ2KH_(_%7D)7VK5~4WJR_$~7.jpg">
	</div>
</body>
</html>

