<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>订单详情</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/orderDetails.css">
</head>
<body>
	<!-- 
			<iframe src="head.html" frameborder="0" height="300px"  width="100%" scrolling="no" ></iframe>
	 -->
	<%@ include file="head.jsp"%>
	<div id="main">
		<div id="main-aling1">
			<table id="table1">
				<tr class="tr1">
					<td><h2>订单详情</h2>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<table id="table2">
								<tr>
									<td class="td1">收货信息：</td>
									<td class="td2">福建 福州 仓山区 朝阳路132号XXXX 350007 X先生
										13000004444</td>
								</tr>
								<tr>
									<td class="td1">支付平台：</td>
									<td class="td2">支付宝/微信</td>
								</tr>
								<tr>
									<td class="td1">送货时间：</td>
									<td class="td2">不限送货时间</td>
								</tr>
								<tr>
									<td class="td1">快递方式：</td>
									<td class="td2">顺丰速递</td>
								</tr>
							</table>
						</div></td>
				</tr>
			</table>
		</div>
		<div id="main-aling2">
			<table id="table3">
				<tr class="tr3">
					<td class="td3" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						商品</td>
					<td style="color:black">颜色/尺寸</td>
					<td style="color:black">数量</td>
					<td style="color:black">小计</td>
				</tr>
				<tr>
					<td style="color:black" colspan="4"><hr>
					</td>
				</tr>
				<c:if test="${not empty cart }">
					<c:forEach var="c" items="${cart }">
						<tr style="color:black" class="tr3">
							<td><img id="main-img" src="images/poster/a1.jpg"> <!-- 
									<div id="main-message">
									<span style="color:black"><br> </span> <span
										style="color:black">颜色：${c.color }<br> </span> <span
										style="color:black">尺寸：${c.sizes }</span>
								</div>

							 --></td>
							<td style="color:black">${c.color }/${c.sizes }</td>
							<td style="color:black">${c.num }</td>
							<td style="color:black">${c.price }</td>
						</tr>

						<tr>
							<td colspan="4"><hr>
							</td>
						</tr>
						<tr class="tr4">
							<td colspan="4">
								<div class="t1">
									<table id="table4">
										<tr>
											<td style="color:black">商品数量：</td>
											<c:forEach var="c" items="${cart }">

											</c:forEach>
											<td style="color:black">1</td>
											<td style="color:black">商品金额：</td>
											<td style="color:black">￥40</td>
										</tr>
										<tr>
											<td style="color:black">运费：</td>
											<td style="color:black">￥20</td>
											<td style="color:black">合计金额：</td>
											<td style="color:black">￥40</td>
										</tr>
									</table>
								</div></td>
						</tr>
						<tr>
							<td colspan="4"><hr>
							</td>
						</tr>
					</c:forEach>
				</c:if>

			</table>
		</div>
	</div>
	<%@ include file="foot.jsp"%>
	<!-- 
			<iframe src="foot.html" frameborder="0" height="300px"  width="100%" scrolling="no" ></iframe>
		 -->
</body>
</html>