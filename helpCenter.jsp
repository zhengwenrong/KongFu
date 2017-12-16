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
	height: 423.667px;
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

.main .all .sidebar_left>.content>ul>li:nth-child(1), .main .all .sidebar_left>.content>ul>li:nth-child(2)
	{
	margin-bottom: 5px;
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

.main .all .content_right>.FAQ .label>.l, .main .all .content_right>.FAQ .label>.r
	{
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
</style>
<!--<link rel="stylesheet" href="css/helpCenter"/>-->
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="main">
		<div class="all">
			<div class="sidebar_left">
				<h3>
					<img src="img/help.png" /><strong>帮助中心</strong>
				</h3>
				<div class="content">
					<ul>
						<li class="label label-active"><span>新手入门</span></li>
						<li class="label label-"><span>常见问题</span></li>
						<li class="label label-"><span>真功夫会员</span></li>
					</ul>
				</div>
				<div class="bottom"></div>
			</div>
			<div class="content_right">
				<img src="img/定餐步骤.jpg" width="749px" height="256px" />
				<div class="FAQ">
					<div class="FAQ_1 labels-kf">
						<span class="label label-active" value="0"><i class="l"></i><span
							class="in">现在有哪些优惠活动</span><i class="r"></i></span> <span
							class="label label-" value="1"><i class="l"></i><span
							class="in">在哪里输入优惠代码</span><i class="r"></i></span> <span
							class="label label-" value="2"><i class="l"></i><span
							class="in">怎么输送餐地址</span><i class="r"></i></span> <span
							class="label label-" value="3"><i class="l"></i><span
							class="in">不在送餐范围内</span><i class="r"></i></span> <span
							class="label label-" value="4"><i class="l"></i><span
							class="in">设置/忘记密码</span><i class="r"></i></span> <span
							class="label label-" value="5"><i class="l"></i><span
							class="in">送餐时间</span><i class="r"></i></span> <span
							class="label label-" value="6"><i class="l"></i><span
							class="in">如何点餐</span><i class="r"></i></span> <span
							class="label label-" value="7"><i class="l"></i><span
							class="in">订单提交成功了吗？</span><i class="r"></i></span> <span
							class="label label-" value="8"><i class="l"></i><span
							class="in">查询我的订单</span><i class="r"></i></span> <span
							class="label label-" value="9"><i class="l"></i><span
							class="in">订餐何时送达？</span><i class="r"></i></span> <span
							class="label label-" value="10"><i class="l"></i><span
							class="in">修改/取消订餐</span><i class="r"></i></span> <span
							class="label label-" value="11"><i class="l"></i><span
							class="in">支持网上支付吗？</span><i class="r"></i></span> <span
							class="label label-" value="12"><i class="l"></i><span
							class="in">电话确认</span><i class="r"></i></span> <span
							class="label label-" value="13"><i class="l"></i><span
							class="in">起送金额/外送费</span><i class="r"></i></span> <span
							class="label label-" value="14"><i class="l"></i><span
							class="in">网页出错/无法打开</span><i class="r"></i></span> <span
							class="label label-" value="15"><i class="l"></i><span
							class="in">产品/价格查询</span><i class="r"></i></span> <span
							class="label label-" value="16"><i class="l"></i><span
							class="in">其他</span><i class="r"></i></span>
					</div>
					<div class="FAQ_2 labels-kf">
						<span class="label label-active" value="0"><i class="l"></i><span
							class="in">注册会员</span><i class="r"></i></span> <span
							class="label label-" value="1"><i class="l"></i><span
							class="in">账户充值</span><i class="r"></i></span> <span
							class="label label-" value="2"><i class="l"></i><span
							class="in">会员账户问题</span><i class="r"></i></span> <span
							class="label label-" value="3"><i class="l"></i><span
							class="in">其他问题</span><i class="r"></i></span> <span
							class="label label-" value="4"><i class="l"></i><span
							class="in">绑定实体卡</span><i class="r"></i></span> <span
							class="label label-" value="5"><i class="l"></i><span
							class="in">获得和使用会员优惠</span><i class="r"></i></span> <span
							class="label label-" value="6"><i class="l"></i><span
							class="in">获得和使用积分</span><i class="r"></i></span> <span
							class="label label-" value="7"><i class="l"></i><span
							class="in">积分/账户余额查询</span><i class="r"></i></span>
					</div>
					<div class="FAQ_detal_1">
						<div id="question_1" value="1" class="active panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>现在有哪些优惠活动？
								</dt>
								<dd class="animations">在首页菜单“热卖”板块，我们提供正在开展的促销活动供您选择。</dd>
							</dl>
						</div>
						<div id="question_2" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何使用网上订餐的优惠代码？在哪里输入？
								</dt>
								<dd class="animations">真功夫功夫送会不定期举办网上订餐的促销或互动活动，如果参与活动或在活动中获奖，就有机会得到网上订餐优惠代码。您可先根据页面提示进行网上订餐，在"确认订餐内容"页面，有一个醒目的"使用优惠代码"区域，您可以在此输入或者直接点选您参加活动得到的优惠代码，点击"使用"即可。</dd>
							</dl>
						</div>
						<div id="question_3" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何输入正确的送餐地址？
								</dt>
								<dd class="animations">请按如下介绍填写您的送餐地址：
									●送餐城市：输入送餐城市的中文或汉语拼音首字母，然后在弹出的滚动框中的点选该城市名。如未找到，则表示该城市目前还无法提供订餐服务；
									●路名/小区名：请在空白框内输入送餐地址路名或小区名中的关键字（如：天河路、骏景花园等），在弹出的滚动框中直接点选。如果送餐地址超出我们的送餐范围，系统将自动提示。
									●在点餐结算后，请继续填全您的详细送餐地址，如：天河南一街1号101室等。输入内容里不含空格。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>送餐地址是否可以输入英文/繁体中文/拼音？
								</dt>
								<dd class="animations">很抱歉，我们只接受简体中文输入。</dd>
							</dl>
						</div>
						<div id="question_4" value="3" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>为什么网站显示我的送餐地址不在送餐范围内？
								</dt>
								<dd class="animations">可能有以下原因： ●您的送餐地址确实超出我们的送餐范围，造成无法送餐；
									●送餐地址输入有误，建议您： 1、尝试缩短或更改路名/小区名的关键字进行查询（例：将“天河路10号”改为“天河”）；
									2、检查您输入的地址是否有以下错误：输入地址不全、输入内容里含空格、错别字等；
									3、我们的送餐范围有所变更，导致您的送餐地址确实超出我们的送餐范围，造成无法送餐；
									您可致电4006-927-927人工核查您的送餐地址是否在送餐范围内。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我们家地址你们送过，为什么这次却显示说超出送餐范围呢？
								</dt>
								<dd class="animations">可能有以下原因：
									我们的送餐范围有所变更，导致您的送餐地址确实超出我们的送餐范围，造成无法送餐；
									您可致电4006-927-927人工核查您的送餐地址是否在送餐范围内。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>为什么我只超出你们的送餐范围一条马路，就不送？
								</dt>
								<dd class="animations">很抱歉，为了保证食物质量，我们有严格的外送范围规定，如果您的送餐地址超出了我们的外送范围，我们将无法提供真功夫功夫送服务。敬请谅解。</dd>
							</dl>
						</div>
						<div id="question_5" value="6" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>怎么设置登录密码？
								</dt>
								<dd class="animations">点击“登录|注册”，在页面输入使用过的手机帐号，然后点击“真功夫会员”，然后点击“帐号安全”。可看到“登录密码设置”选项，再根据提示完成密码设置。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>怎么设置支付密码？
								</dt>
								<dd class="animations">登录成功后，点击“真功夫会员”。再进入帐号安全界面，选择“支付密码修改”，设置您的支付密码。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>我忘了密码怎么办？
								</dt>
								<dd class="animations">点击“登录|注册”，出现登录弹框，然后点击“忘记密码”，根据提示进行设置。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>开启免密码订餐怎么使用？
								</dt>
								<dd class="animations">点击开启免密码订餐后，在登录真功夫网上订餐时，可免除输入登录密码。您可以在真功夫会员-帐号安全版块设置“开启免密码订餐”</dd>
							</dl>
							<dl value="4">
								<dt>
									<span><img src="img/V.png" />展开</span>登录密码和支付密码有什么区别？
								</dt>
								<dd class="animations">登录密码是您登录您的订餐帐号时所需填写的密码；而支付密码，则是您支付订单时所需要填入的密码，建议您设置支付密码，以保护您的账户安全。</dd>
							</dl>
							<dl value="5">
								<dt>
									<span><img src="img/V.png" />展开</span>支付密码有什么用？
								</dt>
								<dd class="animations">支付密码，即结算支付/积分商城兑换商品时所需要填入的密码。在您的账户有余额的情况下，建议您设置支付密码，以保护您的财产安全。</dd>
							</dl>
						</div>
						<div id="question_6" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span> 真功夫功夫送什么时间提供送餐服务？
								</dt>
								<dd class="animations">真功夫功夫送服务时间：
									1、广东省,广西省,福建省,四川省,湖南省,湖北省的功夫送餐厅电话和网络订餐的餐品供应时段：早餐：8:00-10:30，下午茶：14:00-17:00，正餐：10:30-22:00
									2、北京市, 上海市,天津市,
									江苏省,浙江省,河北省、山东省、辽宁省、吉林省、黑龙江省的功夫送餐厅电话和网络订餐的餐品供应时段：正餐：10:30-20:30，下午茶：14:00-17:00
									注意：受商圈限制，部分餐厅的服务时间与以上有所差异，具体以各真功夫功夫送餐厅营业时间为准。如对功夫送服务时间有疑问，您可致电4006-927-927人工查询。
									如果不在服务时间内，无法进行订餐。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>送餐时间多久？
								</dt>
								<dd class="animations">当您下单成功后，餐品会在45分钟左右送达。</dd>
							</dl>
						</div>
						<div id="question_7" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何点餐？
								</dt>
								<dd class="animations">请进入“帮助中心”，点击“新手入门“查看订餐步骤。</dd>
							</dl>
						</div>
						<div id="question_8" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何确定网上订餐的订单已经提交成功？
								</dt>
								<dd class="animations">在您成功提交订单后，页面上会即时出现“订单提交成功”的提示。此外，您也可以在“订单查询”中查询本次订餐的所有信息。</dd>
							</dl>
						</div>
						<div id="question_9" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何查询我的订单？
								</dt>
								<dd class="animations">您可以在“订单查询”中看到本次订餐的所有信息，需要提醒的是，由于订单数量众多，我们只能为您保留“未完成”的订单查询。如需查询您的全部历史订单，请在“真功夫会员中心”？“我的订单”中查看。</dd>
							</dl>
						</div>
						<div id="question_10" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>我订的餐什么时候能送达？
								</dt>
								<dd class="animations">我们承诺的最快送餐时间，一般为您成功提交订单的时间加45分钟左右（在提交订单前，系统将与您确认送餐时间），如遇恶劣天气，交通拥堵或送餐高峰，送餐时间略有增加，敬请谅解。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我想知道我的订餐送出来了吗？
								</dt>
								<dd class="animations">您可以在“订单查询”中可查询到本次订餐的预估送达时间及送餐状态。如果超出我们的预估送达时间，您还没有收到餐点，请致电4006-927-927查询。</dd>
							</dl>
						</div>
						<div id="question_11" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>我想修改/取消我的订餐内容怎么办？
								</dt>
								<dd class="animations">网络订餐不提供订单修改和取消功能，请提交前仔细核对订单内容。订单提交之后，我们会立即安排制作您的餐点。如有任何修改或要取消订餐，请致电4006-927-927寻求帮助。</dd>
							</dl>
						</div>
						<div id="question_12" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>使用真功夫网络订餐，可以用网上支付吗？
								</dt>
								<dd class="animations">暂未开通，敬请期待。</dd>
							</dl>
						</div>
						<div id="question_13" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>为什么我在订餐后，你们还要打电话来确认？
								</dt>
								<dd class="animations">如果您的订餐金额较大，我们可能会致电给您再次确认点餐内容和送餐时间，敬请谅解。</dd>
							</dl>
						</div>
						<div id="question_14" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>网络订餐有最低起送金额限制吗？
								</dt>
								<dd class="animations">不设最低起送金额。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>真功夫功夫送网络订餐收取外送费吗？
								</dt>
								<dd class="animations">只要您的送餐地址在送餐范围内，不限最低起送金额，每单均收取5元外送费，如遇免外送费活动，具体请查看购物车内“免外送费”提示。</dd>
							</dl>
						</div>
						<div id="question_15" value="1" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>为什么我打不开你们的网页或看到网页出错？
								</dt>
								<dd class="animations">很抱歉，可能由于系统繁忙、网速过慢、网络掉线、或在访问受限制的局域网内等网络通信故障，导致您暂时无法通过网站订餐，您可以尝试稍后再次访问，或致电4006-927-927电话订餐，敬请谅解。</dd>
							</dl>
						</div>
						<div id="question_16" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>为什么有些在真功夫门店堂食可以买到的食物，网上订餐却不能订购？
								</dt>
								<dd class="animations">为保证产品质量，部分真功夫餐厅售卖的产品我们暂时无法提供外送服务，敬请谅解。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我想了解产品的详细信息怎么办？
								</dt>
								<dd class="animations">您可点击产品图片，即可看到详细的产品介绍。</dd>
							</dl>
						</div>
						<div id="question_17" value="2" class=" panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>我在你们网站提交的个人信息会不会被泄露出去？
								</dt>
								<dd class="animations">请放心，本网站将对于您的个人资料和隐私权予以尊重和保密。</dd>
							</dl>
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如果我对订餐有其他要求，在哪填写备注说明？
								</dt>
								<dd class="animations">如果您有其他送餐需要求，请在结算页面的购物车详情下方“补充说明“中填写您的需求，我们将竭诚满足您的要求。</dd>
							</dl>
						</div>
					</div>
					<div class="FAQ_detal_2">
						<div id="member_1" value="2" class="panel-content-item active">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何成为真功夫会员？
								</dt>
								<dd class="animations">您可以通过真功夫会员官方网络渠道的“会员中心”入口，填写个人信息，完成注册后即可成为真功夫会员，享受全国网上订餐和电话订餐积分优惠。如果您同时绑定了实体会员卡，还可以在堂食时享受会员积分优惠。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>注册会员的真功夫官方网络渠道有哪些？
								</dt>
								<dd class="animations">真功夫会员官方网络渠道指的是真功夫微信服务号/“zkungfu1990/”、真功夫官网www.zkungfu.cn、真功夫订餐网www.zkungfu.com、真功夫订餐wap、真功夫订餐APP。真功夫可能对官方网络渠道做出调整，并通过官网www.zkungfu.cn进行公告。</dd>
							</dl>
						</div>
						<div id="member_2" value="4" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>如何为我的账户充值？
								</dt>
								<dd class="animations">您可以通过官方网络渠道登录您的账户，使用“充值”功能为您的账户进行充值；如果您已绑定会员实体卡，您还可以在全国真功夫餐厅柜台进行充值。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我在充值时已经扣款成功，但充值金额（赠送金额）未到账，我该怎么办？
								</dt>
								<dd class="animations">因为网络通讯等原因，可能会出现充值后已扣款但实际充值金额（赠送金额）未到账的情况，请您及时致电400-600-9900，由专人客服为您解决。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>充值有优惠吗？
								</dt>
								<dd class="animations">会员充值将不定期推出优惠活动，请您留意真功夫餐厅或官方网络渠道的相关说明。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>如何获得发票？
								</dt>
								<dd class="animations">会员卡充值时不提供发票，消费时提供发票。</dd>
							</dl>
						</div>
						<div id="member_3" value="4" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>我的账户金额/积分被盗用，我该怎么办？
								</dt>
								<dd class="animations">请您妥善保管您的会员账号及密码。如发现账户金额/积分被盗用，请立即致电400-600-9900，由专人客服为您解决。请您理解真功夫采取措施所需的合理时间，在采取措施冻结账户之前，真功夫不承担因丢失而造成的损失。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>如果我的个人资料有变动，可以更新吗？
								</dt>
								<dd class="animations">您可以通过真功夫官方网络渠道更新部分个人资料，如：手机号码、用户名、所在地、电子邮箱地址、实体卡卡号等，部分资料需要通过验证后才能变更成功。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>会员账户密码丢失了，怎么找回？
								</dt>
								<dd class="animations">请在真功夫官方网络渠道会员登录界面，点击“忘记密码”，系统将促发验证短信到您的注册手机，输入验证码验证通过后重新设置密码即可。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>我的手机号码被冒用注册了，我该怎么办？
								</dt>
								<dd class="animations">如果您在注册时系统提示该手机号已注册，请您在会员登录界面点击“忘记密码”，通过手机验证码验证通过后，重新设置密码要回您的账号。如有疑问，请致电客服热线400-600-9900</dd>
							</dl>
						</div>
						<div id="member_4" value="2" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>真功夫真情卡跟会员卡有什么不一样？
								</dt>
								<dd class="animations">真情卡是真功夫发行的定额预付卡，有100元和200元两种面额，该卡种不记名、不挂失，可在真功夫堂食时使用；
									会员卡是真功夫发行的记名卡，注册会员并绑定/激活该卡后，可以在堂食消费时获得积分，并可以在门店进行充值或在真功夫官方网络渠道自助充值。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我使用会员卡存在问题，可以咨询谁？
								</dt>
								<dd class="animations">您可以拨打客服热线400-600-9900，客服人员将竭诚为您服务。</dd>
							</dl>
						</div>
						<div id="member_5" value="5" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>一个会员账户可以绑定多张会员实体卡吗？
								</dt>
								<dd class="animations">目前一个会员账户只能绑定一张会员实体卡。如果您原先绑定的实体卡丢失或损毁，您可以绑定新的会员实体卡，同时旧卡将作废不可再使用。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>一张会员实体卡可以绑定多个会员账户吗？
								</dt>
								<dd class="animations">不可以。一张会员实体卡只能绑定一个会员账户。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>我新购买的会员实体卡，在绑定时提示已被绑定了，我该怎么办？
								</dt>
								<dd class="animations">您可以凭该卡到购卡餐厅，餐厅经理核实后将为您免费换领1张新的实体卡。在绑定/激活之前，请您妥善保管该卡卡号和激活码，避免被他人窃取使用。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>如果我的会员实体卡丢失了，怎么挂失、补办？
								</dt>
								<dd class="animations">会员实体卡不设密码，请您妥善保管。如有丢失，请立即致电400-600-9900挂失，由客服人员为您处理，请您理解真功夫采取冻结措施所需的合理时间。在完成卡号冻结之前，真功夫不承担因丢失而造成的损失。挂失后，您可以重新购买1张会员实体卡，登录您的会员账户后，在“个人信息”内重新绑定新的会员卡即可。</dd>
							</dl>
							<dl value="4">
								<dt>
									<span><img src="img/V.png" />展开</span>如何绑定会员实体卡？
								</dt>
								<dd class="animations">您可以在真功夫餐厅购买真功夫实体会员卡，按卡背面指引或通过真功夫官方网络渠道的“会员中心”入口绑定实体卡，凭实体卡在餐厅就餐可享受会员积分优惠。</dd>
							</dl>
						</div>
						<div id="member_6" value="6" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>餐厅堂食如何享受会员优惠？
								</dt>
								<dd class="animations">您需要在真功夫餐厅购买1张实体会员卡，按卡背面指引绑定到您的会员账户上，下次消费时嘀卡，该订单的消费金额将计入会员积分。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我在真功夫餐厅消费时忘记携带会员卡，可以享受会员权益吗？
								</dt>
								<dd class="animations">不可以。会员实体卡是餐厅对会员身份识别的唯一途径，您需要绑定会员实体卡，并且凭实体卡在门店消费才能享受会员权益。如果您是会员但没有实体卡，您只能在网上订餐或电话订餐时才能享受会员权益。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>真功夫会员有什么优惠？
								</dt>
								<dd class="animations">真功夫将在不同时期推出不同会员优惠。目前真功夫会员享有新会员完善个人资料赠送200积分、消费1元积1分、指定产品倍积分、会员日/会员生日倍积分、充值反额等会员优惠。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>真功夫会员可以在什么地方享受会员优惠？
								</dt>
								<dd class="animations">会员在真功夫网上订餐、电话订餐时使用会员身份订餐，享受会员相关优惠；如果绑定了会员实体卡，在全国任意餐厅凭卡消费，享受会员相关优惠。</dd>
							</dl>
							<dl value="4">
								<dt>
									<span><img src="img/V.png" />展开</span>网上订餐如何享受会员优惠？
								</dt>
								<dd class="animations">您需要使用注册会员时的手机号和密码登陆真功夫订餐网，您的订餐金额将计入会员积分。同时，如果您的会员账户有适用于网络订餐的优惠券，您可以在订餐时使用。</dd>
							</dl>
							<dl value="5">
								<dt>
									<span><img src="img/V.png" />展开</span>电话订餐如何享受会员优惠？
								</dt>
								<dd class="animations">您在拨打4006-927-927订餐电话后，客服人员将向您确认订餐联系电话，如果您提供的联系电话是您注册会员时的手机号，则该订单的消费金额将计入会员积分，否则不计入会员积分。</dd>
							</dl>
						</div>
						<div id="member_7" value="6" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>我消费后，积分未计入我的账户，我该怎么办？
								</dt>
								<dd class="animations">因为网络通讯等原因，可能会出现消费后积分未到账的问题，请您及时致电400-600-9900，由专人客服为您解决。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>积分是否具有有效期？
								</dt>
								<dd class="animations">是的。积分有效期为您注册会员之日起至次年的12月31日，请您在有效期内使用。逾期积分将自动清零。</dd>
							</dl>
							<dl value="2">
								<dt>
									<span><img src="img/V.png" />展开</span>如何获得会员积分？
								</dt>
								<dd class="animations">如果您已注册成为真功夫会员，在使用注册手机号订餐或使用会员实体卡堂食消费时，均可获得消费1元积1分的权益。积分按实收金额计算，不足1元不计算积分。如果您参与了当期的会员积分活动，还可以获得额外的积分。现在注册真功夫会员并完善个人信息，还有额外的200积分赠送。</dd>
							</dl>
							<dl value="3">
								<dt>
									<span><img src="img/V.png" />展开</span>如何使用会员积分？
								</dt>
								<dd class="animations">目前，会员可以通过真功夫官方网络渠道会员入口的“积分商城”进行积分兑换。我们将陆续开发更多的积分兑换渠道跟兑换方式，请您留意真功夫餐厅或官方网络渠道的相关信息。</dd>
							</dl>
							<dl value="4">
								<dt>
									<span><img src="img/V.png" />展开</span>如果我在堂食消费时忘记带卡，是否可以凭消费小票后补积分呢？
								</dt>
								<dd class="animations">不可以。积分只能在结算时获得，不能事后凭小票后补积分。</dd>
							</dl>
							<dl value="5">
								<dt>
									<span><img src="img/V.png" />展开</span>不同的会员账户积分/余额可以转移、合并使用吗？
								</dt>
								<dd class="animations">不可以，每个会员只能使用自己的会员卡。</dd>
							</dl>
						</div>
						<div id="member_8" value="2" class="panel-content-item">
							<dl value="0">
								<dt>
									<span><img src="img/V.png" />展开</span>哪里可以查询积分/账户余额？
								</dt>
								<dd class="animations">您可以到真功夫官方网络渠道自助查询积分/账户余额，也可以在餐厅营业时间的非繁忙时段（12:00-14:00，17:00-19:00以外的时间）到餐厅查询积分/账户余额。建议您使用网上自助查询。</dd>
							</dl>
							<dl value="1">
								<dt>
									<span><img src="img/V.png" />展开</span>我对会员账户充值记录、消费记录、积分使用情况等信息不清楚或有异议，我该如何处理？
								</dt>
								<dd class="animations">如果您有这方面的疑问，请致电我们的服务热线400-600-9900</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="bottom.html"></jsp:include>


</body>

<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var sidebar_left_menu = document
			.querySelectorAll(".main .all .sidebar_left>.content>ul>li");
	var content_right_img = document
			.querySelector(".main .all>.content_right>img");
	var content_right_FAQ = document
			.querySelector(".main .all>.content_right>.FAQ");
	var content_right_FAQ_1 = document
			.querySelector(".main .all>.content_right>.FAQ>.FAQ_1");
	var content_right_FAQ_2 = document
			.querySelector(".main .all>.content_right>.FAQ>.FAQ_2");
	var content_right_FAQ_detal_1 = document
			.querySelector(".main .all>.content_right>.FAQ>.FAQ_detal_1");
	var content_right_FAQ_detal_2 = document
			.querySelector(".main .all>.content_right>.FAQ>.FAQ_detal_2");
	var img = document.querySelector(".main .all .content_right>img");
	var FAQ_1_span = document
			.querySelectorAll(".main .all .content_right>.FAQ>.FAQ_1>span");
	var FAQ_2_span = document
			.querySelectorAll(".main .all .content_right>.FAQ>.FAQ_2>span");
	var FAQ_detal_1_questions = document
			.querySelectorAll(".main .all>.content_right>.FAQ>.FAQ_detal_1>div");
	var FAQ_detal_2_questions = document
			.querySelectorAll(".main .all>.content_right>.FAQ>.FAQ_detal_2>div");

	var sidebar_left_menu_reset = function() {
		for (var i = 0; i <= 2; i++) {
			sidebar_left_menu[i].className = "label label-";
		}
	}
	var FAQ_1_span_reset = function() {
		for (var i = 0; i <= 16; i++) {
			FAQ_1_span[i].className = "label label-";
		}
	}
	var FAQ_2_span_reset = function() {
		for (var i = 0; i <= 7; i++) {
			FAQ_2_span[i].className = "label label-";
		}
	}
	var FAQ_detal_1_questions_reset = function() {
		for (var i = 0; i <= 16; i++) {
			FAQ_detal_1_questions[i].className = "panel-content-item"
		}
	}
	var FAQ_detal_2_questions_reset = function() {
		for (var i = 0; i <= 7; i++) {
			FAQ_detal_2_questions[i].className = "panel-content-item"
		}
	}
	sidebar_left_menu[0].addEventListener("click", function() {
		sidebar_left_menu_reset();
		sidebar_left_menu[0].className = "label label-active";
		content_right_FAQ.style.display = "none";
		img.style.display = "block";
	});
	sidebar_left_menu[1].addEventListener("click", function() {
		sidebar_left_menu_reset();
		sidebar_left_menu[1].className = "label label-active";

		content_right_FAQ.style.display = "block";
		content_right_FAQ_1.style.display = "block";
		content_right_FAQ_2.style.display = "none";
		content_right_FAQ_detal_1.style.display = "block";
		content_right_FAQ_detal_2.style.display = "none";
		img.style.display = "none";
	});
	sidebar_left_menu[2].addEventListener("click", function() {
		sidebar_left_menu_reset();
		sidebar_left_menu[2].className = "label label-active";
		content_right_FAQ.style.display = "block";
		content_right_FAQ_1.style.display = "none";
		content_right_FAQ_2.style.display = "block";
		content_right_FAQ_detal_1.style.display = "none";
		content_right_FAQ_detal_2.style.display = "block";
		img.style.display = "none";
	});
	for (var i = 0; i <= 16; i++) {
		FAQ_1_span[i]
				.addEventListener(
						"click",
						function(e) {
							var index = this.getAttribute("value");
							var dls = document
									.querySelectorAll(".main .all>.content_right>.FAQ>.FAQ_detal_1>#question_"
											+ (index * 1 + 1) + ">dl");

							console.log(dls);
							console.log(dls.length);
							var value = "0";
							var flag = "";
							for (var i = 0; i < dls.length; i++) {

								dls[i].onclick = function(ee) {

									var child = this.children[0].children[0];
									child.eventFromFather = ee;
									for (var j = 0; j < dls.length; j++) {
										dls[j].className = "";
										dls[j].children[0].children[0].children[0].src = "img/V.png";
									}
									if (value == this.getAttribute("value")
											&& flag != "open") {
										this.className = "open";
										this.children[0].children[0].children[0].src = "img/^.png";
									} else if (value == this
											.getAttribute("value")
											&& flag == "open") {
									} else {
										this.className = "open";
										this.children[0].children[0].children[0].src = "img/^.png";
									}
									value = this.getAttribute("value");
									flag = this.getAttribute("class");
									console.log(value);
								}

								console.log(dls[i].children[0].children[0]);
								(dls[i].children[0].children[0]).onclick = function(
										eee) {

									this.parentNode.parentNode
											.onclick(this.eventFromFather);
									eee.stopPropagation();
								};

								(dls[i].children[1]).onclick = function(eeee) {
									eeee.stopPropagation();
								};

							}

							FAQ_1_span_reset();
							FAQ_detal_1_questions_reset();
							FAQ_1_span[index].className = "label label-active";
							FAQ_detal_1_questions[index].className = "active panel-content-item";
						});

	}

	for (var i = 0; i <= 7; i++) {
		FAQ_2_span[i]
				.addEventListener(
						"click",
						function(e) {

							var index = this.getAttribute("value");

							console.log(index);
							var dls = document
									.querySelectorAll(".main .all>.content_right>.FAQ>.FAQ_detal_2>#member_"
											+ (index * 1 + 1) + ">dl");

							console.log(dls);
							console.log(dls.length);

							var value = "0";
							var flag = "";
							for (var i = 0; i < dls.length; i++) {

								dls[i].onclick = function(ee) {

									var child = this.children[0].children[0];
									child.eventFromFather = ee;
									for (var j = 0; j < dls.length; j++) {
										dls[j].className = "";
										dls[j].children[0].children[0].children[0].style.src = "img/V.png";
									}
									//						console.log(ee.target.innerHTML);
									if (value == this.getAttribute("value")
											&& flag != "open") {
										this.className = "open";
										this.children[0].children[0].children[0].src = "img/V.png";
									} else if (value == this
											.getAttribute("value")
											&& flag == "open") {
									} else {
										this.className = "open";
										this.children[0].children[0].children[0].src = "img/V.png"
									}

									value = this.getAttribute("value");
									flag = this.getAttribute("class");
								}

								console.log(dls[i].children[0].children[0]);
								(dls[i].children[0].children[0]).onclick = function(
										eee) {

									this.parentNode.parentNode
											.onclick(this.eventFromFather);
									eee.stopPropagation();
								};

								(dls[i].children[1]).onclick = function(eeee) {
									eeee.stopPropagation();
								};
							}

							FAQ_2_span_reset();
							FAQ_detal_2_questions_reset();
							FAQ_2_span[index].className = "label label-active";
							FAQ_detal_2_questions[index].className = "active panel-content-item";
						});
	}

	var ev = document.createEvent('HTMLEvents');
	ev.initEvent('click', false, true);
	FAQ_1_span[0].dispatchEvent(ev);
	FAQ_2_span[0].dispatchEvent(ev);
</script>

</html>