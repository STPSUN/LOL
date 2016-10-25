<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>确认订单</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/orderConfirmation.css">
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<!-- 
		<iframe src="head.html" frameborder="0" height="300px"  width="100%" scrolling="no" ></iframe>
		 -->
	<div height="300px">
		<%@ include file="head.jsp"%>
	</div>
	<div id="main">
		<div id="main-top">
			<table>
				<tr>
					<td><img src="images/pay/dingdangqueren.png"></td>
				</tr>
			</table>
		</div>

		<div id="main-aling1">
			<h2 style="color:black">配送至</h2>
		</div>
		<div class="main-aling2">
			<form method="post" action="${contextPath }/shop"
				onsubmit="return checkForm(this)">
				<input type="hidden" name="action" value="toPay">
				<table id="table1">
					<tr>
						<td style="color:black" class="table1"><a class="a1">*</a>收货人：</td>

						<td><input style="width:100px" type="text" /></td>
					</tr>
					<tr>
						<td height="50" style="text-align:right;color:black">居住地：</td>

						<td><select name="province" id="province"
							onchange="getCity()">
								<option value="0">请选择所在省份</option>
								<option value="直辖市">直辖市</option>
								<option value="江苏省">江苏省</option>
								<option value="福建省">福建省</option>
								<option value="广东省">广东省</option>
								<option value="甘肃省">甘肃省</option>
						</select> <select id="city" name="city">
								<option value="0">请选择所在城市</option>
						</select></td>
					</tr>
					<td style="color:black" class="table1"><a class="a1">*</a>详细地址：</td>
					<td><input style="width:200px" type="text" /><a class="a2">（请填写详细的地址，确保能准确送达）</a>
					</td>
					</tr>
					<tr>
						<td style="color:black" class="table1"><a class="a1">*</a>手机：</td>
						<td><input style="width:200px" type="text" /><a class="a2">（手机是为了确保能够联系到，必填）</a>
						</td>
					</tr>
					<tr>
						<td style="color:black" class="table1">邮政编码：</td>
						<td><input style="width:200px" type="text" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" class="button" value="确认下单" />
						</td>
					</tr>
					</tr>
				</table>
			</form>
		</div>
		<div id="main-aling1">
			<h2 style="color:black">商品信息</h2>
		</div>
		<div id="main-aling2">
			<table id="table3">
				<tr class="tr3">
					<td style="color:black" class="td3">商品</td>
					<td style="color:black">颜色/尺寸</td>
					<td style="color:black">数量</td>
					<td style="color:black">小计</td>
				</tr>
				<tr>
					<td colspan="4"><hr></td>
				</tr>
				<c:if test="${not empty cart }">
					<c:forEach var="c" items="${cart }">
						<tr class="tr3">
							<td><img id="main-img" width="260px" height="164px" src="images/poster/active/bp1.png">
								<div id="main-message">
									<span style="color:black">${c.name }<br> </span> <span
										style="color:black">颜色：${c.color }<br> </span> <span
										style="color:black">尺寸：${c.sizes }</span>
								</div>
							</td>

							<td style="color:black">${c.color }/${c.sizes }</td>
							<td style="color:black">${c.num }</td>
							<td style="color:black">${c.price }</td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<td colspan="4"><hr></td>
				</tr>
				<tr class="t2">
					<td colspan="4"><a href="${contextPath }/shop?action=cartList">返回购物车修改</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!--  
	<iframe src="foot.html" frameborder="0" height="300px" width="100%"
		scrolling="no"></iframe>
	-->
	<%@ include file="foot.jsp"%>
	<script type="text/javascript" src="js/order.js"></script>
	</script>
</body>
</html>