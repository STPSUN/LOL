<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/tianjiawenti.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="manageindex.html">主页</a><a href="wentiguanli.html">&gt问题管理</a>&gt添加问题
	</h2>
	<form action="#" method="post">
		<div class="one">
			常见问题ID：<input type="text" value="" />
		</div>
		<div class="two">常见问题内容：</div>
		<textarea cols="50" rows="10" value="" name="comments"></textarea>
		<br>
		<div class="three">
			<input type="image" src="images/querentianjia.png" />
		</div>
	</form>
</body>
</html>
