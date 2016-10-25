<%@page import="per.sun.lol.entity.Cart"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>购物车</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/cart.css">
<script type="text/JavaScript">
	function check() {
		var oInput = document.getElementsByName("product");
		for ( var i = 0; i < oInput.length; i++) {
			if (document.getElementById("all").checked == true) {
				oInput[i].checked = true;
			} else {
				oInput[i].checked = false;
			}
		}
	}
	function delRow(rowId) {
		var row = document.getElementById(rowId).rowIndex;
		document.getElementById("main-talble-one").deleteRow(row);
	}
</script>
</head>
<body>
	<!-- 
	<iframe src="head.html" frameborder="0" height="260px" width="100%" scrolling="no" ></iframe>
 -->
	<%@ include file="head.jsp"%>
	<div id="main">
		<div id="main-top">
			<table>
				<tr>
					<td><img src="images/pay/car.png">
						<h2>拍下商品</h2>
					</td>
					<td><img src="images/pay/pen.png">
						<h2>填写订单</h2>
					</td>
					<td><img src="images/pay/card.png">
						<h2>付款</h2>
					</td>
					<td><img src="images/pay/t.png">
						<h2>支付成功</h2>
					</td>
				</tr>
			</table>
		</div>
		<form>
			<table id="main-talble-one" cellspacing="0" width="100%">
				<tr id="main-tr-one">
					<th id="main-all"><input type="checkbox" id="all" value="全选"
						onclick="check();" />全选</th>
					<th id="main-shoopNum">商品图片</th>
					<th id="main-shoopNum">商品信息</th>
					<th id="main-money">单价(元)</th>
					<th id="main-number">数量
					<th>
					<th id="main-total">小计
					<th>
					<th id="main-opetate">操作
					<th>
				</tr>
				<c:if test="${not empty cartList }">
					<c:forEach var="cart" items="${cartList }" varStatus="status">
						<tr id="del1" style="color:black">
							<td id="main-checkbox-middle"><input type="checkbox"
								name="product" value="1" />
							</td>
							<td>
							<img
					width="260px" height="164px" src="images/poster/active/bp1.png" />
							</td>
							<td>
								<div id="main-message">
									<span>${cart.name }<br /> </span> <span>颜色：${cart.color
										}<br /> </span> <span>尺寸：${cart.sizes }</span>
								</div>
							</td>
							<td class="main-center">￥${cart.price }</td>
							<td class="main-center">
								<dl>
									<dt>
										<input id="num" type="text" style="width:30px" name="num"
											value="${cart.num }">
									</dt>
									<dt>修改
											<input id="cartId" type="button" value="${cart.id }" style="width:40px"
											onclick="modifyNum();">
									</dt>
								</dl></td>

							<td></td>
							<td class="main-center">￥${cart.total }</td>
							<td></td>
							<td class="main-center"><a
								href="${contextPath }/shop?action=doDeleteCart&id=${cart.id}">删除</a>
								<!-- 
								<input name="rowdel" type="button"
								value="删除" onclick='delRow("del1")' />

							 -->
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty cartList }">
					<tr>
						<td colspan="7" align="center">您的购物车空空如也，快去购物吧！</td>
					</tr>
				</c:if>

			</table>
			<table frame="hsides" width="100%">
				<tr>
					<td id="main-checkbox-bottom"><a
						href="${contextPath }/shop?action=toOrder-address">立即结算</a>
					</td>
					<td id="main-clear-cart"><a href="#">清空购物车</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 
	<%@ include file="foot.jsp"%>
	 -->
	<!-- 
	<iframe src="foot.html" frameborder="0" height="260px" width="100%" scrolling="no" ></iframe>
	 -->
	<script type="text/javascript">
		function modifyNum() {
			var num = document.getElementById('num').value;
			var cartId = document.getElementById('cartId').value;
			location.href = "${contextPath}/shop?action=doModifyCart&cartId="
					+ cartId + "&num=" + num;
		}
	</script>
</body>
</html>