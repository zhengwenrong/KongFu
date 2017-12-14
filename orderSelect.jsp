<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/orderSelect.css" />

<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>

<script>
	var isShow = false;

	function showDetalInfo(id) {

		if (!isShow) {
			var $detail = $("#" + id);

			$detail.slideDown("slow");
			;

		} else {

			$("#" + id).slideUp("slow");
		}

		isShow = !isShow;
	}
</script>

</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="order-select">
		<div class="order-top">

			<h4>订单信息</h4>

		</div>

		<div class="order-info">
			<div class="order-baseinfo clearfix">
				<span>订单号:GFS20171213163228795</span> <span>下单时间：2017-12-13
					16:32:28</span> <span onclick="showDetalInfo('orderId')">订单详情</span>
			</div>
			<div class="order-content" id="orderId">
				<div class="order-detail clearfix">

					<div class="order-left">
						<ul>
							<li>送餐地址:江门市广东省江门市蓬江区胜利路116号江门市工贸职业技术学校1栋710室</li>
							<li>联系人：郑文荣</li>
							<li>联系电话：15018159367</li>
						</ul>
					</div>
					<div class="order-center">
						<ul>
							<li>应付金额:￥25.00</li>
							<li>餐品总额：￥20.00</li>
							<li>外送费：￥5.00</li>
							<li>优惠金额：￥0.00</li>
						</ul>
					</div>
					<div class="order-right">
						<ul>
							<li>订单状态：已取消</li>
							<li>支付方式：货到付款</li>
						</ul>

					</div>

				</div>

				<div class="orderItem">

					<div class="orderItem-content-outer">

						<div class="orderItem-content-inner">

							<div class="clearfix">
								<ul>
									<li>品名</li>
									<li>单价(元)</li>
									<li>数量</li>
								</ul>
							</div>

							<div class="clearfix">

								<div class="item-left">
									<img src="img/help.png" width="69px" height="69px" alt="" /> <span>栗子焖土鸡饭</span>
								</div>

								<div class="item-center">3</div>
								<div class="item-right">1</div>

							</div>

						</div>

					</div>

				</div>
			</div>

		</div>

	</div>

	<jsp:include page="bottom.html"></jsp:include>

</body>

</html>