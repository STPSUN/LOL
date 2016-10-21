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
		<a href="manageindex.html">主页</a>&gt管理员管理
	</h2>
	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<td colspan="10" align="center";>工号ID:<input type="text"
						value="" name="quesion" /></td>
				</tr>
				<tr>
					<th>工号ID</th>
					<th>账户名</th>
					<th>密码</th>
					<th>等级</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td></td>
					<td></td>
					<td>S</td>
					<td class="w1 c"><a href="tianjiaguanliyuan.html">添加</a> <a
						href="xiugaiguanliyuan.html">修改</a> 删除</td>
				</tr>


				<tr>
					<td>2</td>
					<td></td>
					<td></td>
					<td>A</td>
					<td class="w1 c"><a href="tianjiaguanliyuan.html">添加</a> <a
						href="xiugaiguanliyuan.html">修改</a> 删除</td>
				</tr>

			</table>
		</div>
	</form>
</body>

</html>