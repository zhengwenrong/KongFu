<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/base.css" />
<style type="text/css">
.main {
	width: 100%;
	height:740px;
	border-top: 3px solid #E60012;
}

.main .all {
	width: 1000px;
	height: 421px;
	margin: 0 auto;
}

.main .all .sidebar_left {
	width: 253px;
	height: 140px;
	float: left;
}

.main .all .sidebar_left>h3 {
	width: 253px;
	height: 42px;
	background: url(img/bgs.png);
	background-position: 0 0;
	background-repeat: no-repeat;
	text-align: center;
	line-height: 28px;
	font-size: 16px;
	color: #FFF;
	letter-spacing: 1px
}

.main .all .sidebar_left>h3>img {
	margin-right: 3px;
	width: 20px;
	height: 18px;
	position: relative;
	transform: translateY(-3px);
}

.main .all .sidebar_left>.content {
	margin: 0 23px;
	border-left: 2px solid #E60012;
	border-right: 2px solid #E60012;
	z-index: 1;
}

.main .all .sidebar_left>.content>ul {
	margin: -4px auto;
	position: relative;
}

.main .all .sidebar_left>.content>ul>.label {
	width: 193px;
	height: 26px;
	text-align: center;
	margin: 0 auto;
	margin-top: 5px;
	line-height: 26px;
	background: url(img/bgs.png);
	background-position-y: -64px;
	color: #6a3301;
	font-size: 15px;
}

.main .all .sidebar_left>.content>ul>.label-active {
	color: #fff;
	background-position-y: -95px;
}

.main .all .sidebar_left>.content>ul>li {
	cursor: pointer;
}

.main .all .sidebar_left>.content>ul>li {
	margin-bottom: 5px;
	margin-top: 5px;
	background-color: blue;
}

.main .all .sidebar_left>.content>ul>li:hover {
	color: #fff;
	background-position-y: -95px;
}

.main .all .sidebar_left>.bottom {
	width: 253px;
	height: 18px;
	background: url(img/bgs.png);
	background-position-y: -42px;
	background-repeat: no-repeat;
	display: block;
}

.main .all .content_right {
	width: 747px;
	margin-top: 21px;
	float: left;
	min-height: 400px;
}

.main .all .content_right>.FAQ {
	display: none;
}

.main .all .content_right>.FAQ .label {
	cursor: pointer;
	display: block;
	float: left;
	margin: 0 10px 10px 0;
	white-space: nowrap;
}

.main .all .content_right>.FAQ .label>.l,
.main .all .content_right>.FAQ .label>.r {
	background-image: url(img/buttons.jpg);
	background-repeat: no-repeat;
	width: 9px;
	height: 31px;
	display: block;
	overflow: hidden;
	float: left;
}

.main .all .content_right>.FAQ .label .l {
	background-position: 0 -124px;
}

.main .all .content_right>.FAQ .label-active .l {
	background-position: 0 0;
}

.main .all .content_right>.FAQ .label .r {
	background-position: right -155px;
}

.main .all .content_right>.FAQ .label-active .r {
	background-position: right -31px;
}

.main .all .content_right>.FAQ .label .in {
	overflow: visible;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	word-wrap: break-word;
	height: 31px;
	line-height: 29px;
	display: block;
	float: left;
	border-top: 1px solid #c9c9c9;
	border-bottom: 1px solid #c9c9c9;
	background-color: #c9c9c9;
	color: #333;
}

.main .all .content_right>.FAQ .label-active .in {
	background-color: #fff;
	border-top: 1px solid #e60012;
	border-bottom: 1px solid #e60012;
	color: #e60012;
}

.main .all .content_right>.FAQ .panel-content-item {
	display: none;
}

.main .all .content_right>.FAQ .active {
	display: block;
}

.labels-kf {
	padding-bottom: 15px;
}

.labels-kf:after {
	content: "";
	display: block;
	height: 0;
	clear: both;
}

.main .all .content_right>.FAQ .panel-content-item dl {
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
}

.main .all .content_right>.FAQ .panel-content-item dl dt {
	color: #e60012;
	cursor: pointer;
	border-bottom: 1px solid #e5e5e5;
	padding-bottom: 6px;
	line-height: 120%;
	font-size: 13px;
}

.main .all .content_right>.FAQ .panel-content-item dl dt:after {
	content: "";
	display: block;
	height: 0;
	clear: both;
}

.main .all .content_right>.FAQ .panel-content-item dl dt span {
	display: inline-block;
	float: right;
}

.main .all .content_right>.FAQ .panel-content-item dl dt span>img {
	width: 13px;
	height: 13px;
	margin-right: 5px;
	position: relative;
	transform: translateY(-2px);
}

.main .all .content_right>.FAQ .panel-content-item dl dd {
	display: none;
	margin: 0;
	line-height: 200%;
	padding: 7px 0 14px 0;
}

.main .all .content_right>.FAQ .panel-content-item .open dd {
	display: block;
}

.content_right>p {
	
	color: #6a3301;
	background-color: #FCF3EB;
	padding-left: 20px;
	font-size: 14px;
	border-radius: 10px;
	line-height: 40px;
}
	
	.user-info  {
		
		margin-top: 30px;;
		margin-left: 20px;;
	}
	
.user-info .head {
	
	float: left;
	
}

.user-info .info {
	
	float: left;
}

.info>ul>li {
	
	margin-bottom: 30px;
	margin-left: 20px;
	
}

.info>ul>li:nth-child(3)>a,.info>ul>li:nth-child(4)>a,.info>ul>li:nth-child(5)>a {
	
	display: inline-block;
	padding: 2px 15px;
	border-radius: 10px;
	color: white;
	margin-left: 5px;
	margin-right: 5px;
	background-color: #e60012;
}
	
.panel-card {
	
	width: 380px;
	height: 260px;
	background-color: #e60012;
	border-radius: 10px;
}

.panel-card>p {
	
	padding-left: 10px;
	line-height: 30px;
	color: white;
}

.panel-card .panerl-content {
	
	margin: 0 auto;
	background-color: white;
	width: 374px;	
	border-radius: 10px;
	padding: 9px 0;
}

.panel-card .panerl-content>img {
	margin-left: 9px;	
}

	
</style>
		<!--<link rel="stylesheet" href="css/helpCenter"/>-->
	</head>

	<body>
	
		<jsp:include page="header.jsp"></jsp:include>

		<div class="main">
			<div class="all">
				<div class="sidebar_left">
					<h3><img src="img/help.png" /><strong>帮助中心</strong></h3>
					<div class="content">
						<ul>
							<li class="label label-active"><span>账号信息</span></li>
							<li class="label label-"><span>绑定实体卡</span></li>
							<li class="label label-"><span>真享卡</span></li>
							<li class="label label-"><span>会员钱包</span></li>
							<li class="label label-"><span>积分商城</span></li>
							<li class="label label-"><span>我的优惠</span></li>
							<li class="label label-"><span>我的订单</span></li>
							<li class="label label-"><span>地址管理</span></li>
							<li class="label label-"><span>账号安全</span></li>
							<li class="label label-"><span>关于会员</span></li>
						</ul>
					</div>
					<div class="bottom"></div>
				</div>
				<div class="content_right">
					
					<p>账号信息</p>
					
					<div class="user-info clearfix">
						
						<div class="head">
							
							<img src="img/defaultheader.jpg" alt="" />
							
						</div>
						
						<div class="info">
							
							<ul>
								<li>姓名:${user.phone }</li>
								<li>手机:${user.phone }</li>
								<li>可兑换积分:0<a herf="javaScript:void(0);">兑换好礼</a>`</li>
								<li>账户余额： ￥0<a herf="javaScript:void(0);">充值</a></li>
								<li><a herf="javaScript:void(0);">查看/完善个人信息</a>新会员完善个人信息,赠送200积分!</li>
							</ul>
							
							
						</div>
						
					</div>
					
					<div class="panel-card clearfix">
						
						<p>精彩活动</p>
						
						<div class="panerl-content">
							
							<img src="img/completely.png" width="356px" height="203px" alt="" />
							
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		
		<jsp:include page="bottom.html"></jsp:include>
		
	</body>
 
    

</html>