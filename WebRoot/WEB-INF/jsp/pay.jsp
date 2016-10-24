<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>pay</title>
	<meta charset="utf-8"> 
	<link rel="stylesheet" type="text/css" href="css/pay.css">
</head>
<body>
<!-- 
<iframe src="head.html" frameborder="0" height="300px"  width="100%" scrolling="no" ></iframe>
 -->
 <%@ include file="head.jsp" %>
	<div id="main">
		<div id="main-top">
			<h2 style="margin-left: 133px;"/>扫描二维码</h2>
		</div>
		<div id="main-middle">
			<div id="main-middle-div-one">
				<a href="${contextPath }/shop?action=toPaySucceed"><img src="images/pay/zhifubao.png"></a>
			</div>
			<div>
				<a href="${contextPath }/shop?action=toPaySucceed"><img src="images/pay/weixing.png"></a>
			</div>
		</div>
		<div id="main-bottom">
			<h3>商品信息</h3>
			<form>
				<table>
					<tr>
						<th id="main-bottom-th-commodity">商品</th>
						<th id="main-bottom-th-commodity">商品信息</th>
						<th id="main-bottom-th-color">颜色/尺寸</th>
						<th id="main-bottom-th-number">数量</th>
						<th id="main-bottom-th-total">小计</th>
					</tr>
					<hr style=" width:900px;margin-left: -1px;"/>
					<tr>
						<td>
							<img src="images/poster/a1.jpg">
							
						</td>
						<td>
						<div id="main-bottom-message">
								<span>致命盛宴<br></span>
								<span>现价：￥40<span>
							</div>
							</td>
						<td class="main-bottom-center">彩色/均码</td>
						<td class="main-bottom-center">2</td>
						<td class="main-bottom-center">￥60</td>
					</tr>
				</table>
			</form>
				<div id="fanhui">
				<a href="cart.html">返回购物车</a>
				</div>
		</div>
	</div>
	<%@ include file="foot.jsp" %>
	<!-- 
	<iframe src="foot.html" frameborder="0" height="260px" width="100%" scrolling="no" ></iframe>
	 -->
</body>
</html>