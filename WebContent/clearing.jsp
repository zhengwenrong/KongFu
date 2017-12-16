<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		
		<link rel="stylesheet" href="css/clearing.css" />
		<link rel="stylesheet" href="css/iconfont.css" />
		<script type="text/javascript" src="js/jquery-1.12.4.min.js" ></script>
		
		<script>
			
			function closeAddress(){
				
				$("#newAddress").fadeOut("slow");
				
			}
			
			function showAddress(){
			
				$("#newAddress").fadeIn("slow");
			}
			
			function divide(memuid){
				
				window.location = "reducememu.action?memuid="+memuid;
				
			}
			
			function plus(memuid){
				
				window.location = "addmemu.action?memuid="+memuid;
			}
			
			function deletem(memuid){
				
				window.location = "deletememu.action?memuid="+memuid;
			}
			
		</script>
	
	</head>

	<body>
		
		<jsp:include page="header.jsp"></jsp:include>

		<div class="progress ww">

			<div class="pro-top">
				<ul>
					<li>浏览餐单</li>
					<li>确认订餐内容</li>
					<li>估算并提交订单</li>
				</ul>
			</div>

			<div class="pro-bottom">

				<ul>
					<li>
						<ii>1</ii>
					</li>
					<li>
						<ii>2</ii>
					</li>
					<li>
						<ii>3</ii>
					</li>
				</ul>

				<i></i>

			</div>

		</div>

		<form action="commitOrder.action" method="post">
		
		

		<div class="time ww">

			<p>送餐时间：成功提交订单后，预计
				<font color="#E60012">45</font>分钟左右送达</p>

		</div>

		<div class="address ww">

			<div class="new-address clearfix">

				<span>送餐地址：</span>
				<span onclick="showAddress()">新增/更换地址</span>
			</div>

		</div>
		
		<c:forEach items="${addresss }" var="address">
	
			<div class="address-list ww clearfix">
				
				<ul>
					<li><input type="radio" name="addressId" value="${address.addressid }"></li>
					<li>${address.linkman }</li>
					<li>${address.phone }</li>
					<li>${address.alias }</li>
					<li>${address.city }</li>
					<li>${address.plot }${address.address }</li>
				</ul>
	
			</div>
		
		</c:forEach>

		<div class="cart-outer ww">

			<div class="cart-title clearfix">
				<p><i class="iconfont icon-cart"></i>购物车详情</p>
				<p><a href="index.action">返回继续点餐</a></p>
			</div>
			<div class="cart-inner ww">

				<div class="table-head clearfix">

					<ul>
						<li>品名</li>
						<li>详情</li>
						<li>单价(元)</li>
						<li>数量</li>
						<li>优惠方式</li>
						<li>小计</li>
						<li>取消</li>
					</ul>

				</div>

				<c:forEach items="${cart }" var="cartItem">
				
					<div class="cartItem clearfix">
	
						<ul>
							<li>
								<img src="${cartItem.key.memuimageurl }" width="69" height="65" alt="" />${cartItem.key.memuname }
							</li>
							<li>
								${cartItem.key.memuname }×${cartItem.value }
							</li>
							<li>￥${cartItem.key.memuprice }</li>
							<li><i onclick="divide('${cartItem.key.memuid}')" id="divide"></i>${cartItem.value }<i onclick="plus('${cartItem.key.memuid}')" id="plus"></i></li>
							<li>无优惠</li>
							<li>￥${cartItem.key.memuprice*cartItem.value }</li>
							<li>
								<i onclick="deletem('${cartItem.key.memuid}')" id="delete"></i>
							</li>
						</ul>
	
					</div>
				</c:forEach>
			</div>

		</div>

		<div class="money ww">

			<div class="box1 clearfix">
				<span><c:if test="${not empty cart }">
							
							${totalMomey + 5}
							
							</c:if> <c:if test="${empty cart }">
								0
							</c:if>元</span>
				<span>应付总额：</span>
			</div>

			<div class="box2 clearfix">
				<span>${totalMomey }元</span>
				<span>餐品总额：</span>
			</div>

			<div class="box3 clearfix">
				<span>5.00元</span>
				<span>外送费：</span>
			</div>

			<div class="box4 clearfix">
				<span>0.00元</span>
				<span>优惠金额：</span>
			</div>

		</div>


		<hr class="ww" style="margin-top: 20px;" />

		<div class="pay-type ww">

			<div class="type clearfix">

				<span><input name="payType" type="radio">会员卡结帐</span>
				<span><input name="payType" type="radio">货到付款</span>
				<span>支付方式</span>
			</div>
		</div>

		<div class="submit-bottom ww">

			<div class="btn clearfix">

				<span><input type="submit" value="提交订单" class="btn btn-submit"></span>
				<span>应付总额：<c:if test="${not empty cart }">
							
							${totalMomey + 5}
							
							</c:if> <c:if test="${empty cart }">
								0
							</c:if>元</span>
				<span><a href="index.action">返回继续购买></a></span>
			</div>

			<p style="margin-top: 10px; text-align: right;">点击"提交订单"后，您的订单会立即下到我们的餐厅开始制作食品，因此我们将无法接受修改或取消订单 ，请提交前仔细核对订单内容。</p>

		</div>

		</form>

		<!-- 新建地址 -->
		<div id="newAddress" class="alert-newaddress">

			<div class="alert-box">

				<span class="alert-box-title">
					<i class="iconfont icon-edit"></i>
					配送信息
					
				</span>
				
				<span onclick="closeAddress()" id="close">关闭</span>

				<div class="alert-box-white clearfix">

					<p>配送信息:</p>

					<form action="saveaddress.action" method="post">
					
						
				
					<div class="alert-left clearfix">
					
						<div>
							<label>送餐城市:</label>
							<input name="city" type="text" value="江门市">
						</div>
						<div>
							<span>大厦名/小区名：</span>
							<input name="plot" placeholder="请输入关键字" id="keyword" type="text">
							<p>缩短或者更改大厦名/小区名的关键字进行查询，</p>
							<p>例:将“虹桥路2号”改为“虹桥”。</p>
						</div>
						<div>
							<label>详细地址：</label>
							<input name="address" placeholder="请继续补全,例如3单元1011室" type="input"><br>
						</div>
					</div>
					<div class="alert-right clearfix">

						<div>
							<label>联系人:</label>
							<input name="linkman" placeholder="请输入联系人" id="keyword" type="text">
						</div>
						<div>
							<span>手机号码:</span>
							<input name="phone" placeholder="请输入手机号码" id="keyword" type="text">
							<p>您的手机号码用于订餐联系</p>
					
						</div>
						<div>
							<label>地址别名</label>
							<input name="alias" placeholder="请输入地址别名" type="input"><br>
							<p>设置一个易记的名称，如：“家”，“公司”</p>
						</div>
					</div>
					
					<div class="alert-bottom">
						
						<input type="submit" value="保存地址"/>
					</div>
					
					</form>
					
				</div>

			</div>

		</div>
		
		<jsp:include page="bottom.html"></jsp:include>

	</body>

</html>