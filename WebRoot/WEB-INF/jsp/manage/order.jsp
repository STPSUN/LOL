<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dingdangguanli.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="manageindex.html">主页</a>&gt订单管理
	</h2>
	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<td colspan="10" align="center";>订单ID:<input type="text"
						value="" name="quesion" /> 购买者姓名:<input type="text" value=""
						name="quesion" /></td>
				</tr>
				<tr>
					<th>订单ID</th>
					<th>购买者姓名</th>
					<th>发货地址</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td></td>
					<td></td>
					<td>发货</td>
					<td class="w1 c"><a href="tianjiadingdang.html">添加</a> <a
						href="xiugaidingdang.html">修改</a> 删除</td>
				</tr>


				<tr>
					<td>1</td>
					<td></td>
					<td></td>
					<td>审核通过</td>
					<td class="w1 c"><a href="tianjiadingdang.html">添加</a> <a
						href="xiugaidingdang.html">修改</a> 删除</td>
				</tr>

			</table>
		</div>
	</form>
	<div id="yema">上一页&nbsp;&nbsp;1&nbsp;&nbsp;下一页</div>
</body>

</html>