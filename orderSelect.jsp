<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<c:forEach items="${orders}" var="order" >
		
		
		
		<div class="order-info">
			<div class="order-baseinfo clearfix">
				<span>订单号:${order.id }</span> <span>下单时间：${order.ordertime }
					</span> <span onclick="showDetalInfo('${order.id}')">订单详情</span>
			</div>
			<div class="order-content" id="${order.id }">
				<div class="order-detail clearfix">

					<div class="order-left">
						<ul>
							<li>送餐地址:${order.receiverinfo }</li>
							<li>联系人：${order.linkman }</li>
							<li>联系电话：${order.phone }</li>
						</ul>
					</div>
					<div class="order-center">
						<ul>
							<li>应付金额:￥${order.money+5 }</li>
							<li>餐品总额：￥${order.money }</li>
							<li>外送费：￥5.00</li>
							<li>优惠金额：￥0.00</li>
						</ul>
					</div>
					<div class="order-right">
						<ul>
							<li>订单状态：配送中</li>
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
						
						<c:forEach items="${order.items }" var="item">
						
							<div class="clearfix">

								<div class="item-left">
									<img src="${item.memu.memuimageurl }" width="69px" height="69px" alt="" /> <span>栗子焖土鸡饭</span>
								</div>

								<div class="item-center">${item.memu.memuprice }</div>
								<div class="item-right">${item.buynum }</div>

							</div>
						</c:forEach>

						</div>

					</div>

				</div>
			</div>

		</div>
		
		</c:forEach>

	</div>

	<jsp:include page="bottom.html"></jsp:include>

</body>

</html>