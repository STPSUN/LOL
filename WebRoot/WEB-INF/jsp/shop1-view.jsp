<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>商品1</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.Spinner.js"></script>
<link href="css/description.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">
	$(function() {
		$("#b").Spinner({
			value : 1,
			name : "pn"
		});
	});
</script>

</head>
<body>
	<%@ include file="head.jsp"%>
	<div id="left">
		<img width="" height="" src="images/poster/active/bp1.png" />
	</div>
	<form method="post" action="${contextPath }/shop"
		onsubmit="return checkForm(this)">
		<input type="hidden" name="action" value="doCart" />
		<p>
			<font size="12" style="margin-left:-66px; color:black;">决战</font>
		</p>
		<div class="pcs">
			<p style="color: black">
				价格:<span style="color:red;"><font size="18">￥40</font> </sapn>
			</p>
			<p style="color: black">颜色:</p>
			<div class="color">
				<img src="images/poster/active/bc1.png"
					style="margin-left: 40px;margin-top: -10px;" />
				</color>
				<p style="color: black">尺码:</p>
				<div class="color">
					<img src="images/poster/bz.png"
						style="margin-left: 40px;margin-top: -4px;" />
				</div>
				<p style="color: black">数量:</p>
				<div class="center">
					<div id="b" class="Spinner"></div>
				</div>
				<div class="goumai">
					<input type="submit" name="buy" value=""
						style="background:url(images/poster/goumai.png) no-repeat;width: 159px;height: 47px;border: none;" />
					<a href="${contextPath }/shop?action=addCart"> <input
						type="button" name="cart" value=""
						style="background:url(images/poster/gouwuche.png) no-repeat;width: 159px;height: 47px;border: none;" />
					</a>
				</div>
			</div>
	</form>
	<div id="shangping">
		<h2>
			<font color="white" style="margin-left: 449px;"><div id="xiangqing">商&nbsp;&nbsp;品&nbsp;&nbsp;详&nbsp;&nbsp;情</div></font>
		</h2>
	</div>
	<div id="photointroduce">
		<img src="images/poster/active/bg1-1.jpg"
			style="margin-left: 188px;margin-top: 43px" /> <img
			src="images/poster/active/bg1-2.jpg" style="margin-left: 188px;" /> <img
			src="images/poster/active/bg1-3.jpg" style="margin-left: 188px;" /> <img
			src="images/poster/bg04.jpg" style="margin-left: 188px;" /> <img
			src="images/poster/bg05.jpg" style="margin-left: 188px;" />
	</div>
	<%@ include file="foot.jsp"%>
</body>
</html>