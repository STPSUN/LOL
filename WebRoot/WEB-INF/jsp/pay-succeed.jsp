<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>paySuccess</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/paySuccess.css">
<script type="text/javascript">
	var preUrl = document.referrer; //载入本页面文档的地址
	if (preUrl == "") {
		setTimeout("javascript:location.href='" + request.getContextPath() + "/shop'", 3000);//使用setTimeout延迟5秒后自动跳转
	}
</script>
</head>
<body>
	<!-- 
<iframe src="head.html" frameborder="0" height="300px"  width="100%" scrolling="no" ></iframe>
 -->
	<%@ include file="head.jsp"%>
	<div id="main">
	<a href="${contextPath }/shop">
		<img src="images/pay/sucess.png">
	</a>
		<p>页面3秒后自动跳转，请稍后...</p>
	</div>
	<%@ include file="foot.jsp"%>
	<!-- 
<iframe src="foot.html" frameborder="0" height="260px" width="100%" scrolling="no" ></iframe>
	 -->
</body>
</html>
