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
		<a href="manageindex.html">主页</a>&gt问题管理
	</h2>

	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<td colspan="10" align="center";>常见问题ID:<input type="text"
						value="" name="quesion" /></td>
				</tr>
				<tr>
					<th>常见问题ID</th>
					<th>常见问题标题</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td></td>
					<td>展示</td>
					<td class="w1 c"><a href="xiugaiwenti.html">修改</a> <a
						href="tianjiawenti.html">添加</a> 删除</td>
				</tr>


				<tr>
					<td>1</td>
					<td></td>
					<td>未展示</td>
					<td class="w1 c"><a href="xiugaiwenti.html">修改</a> <a
						href="tianjiawenti.html">添加</a> 删除</td>
				</tr>

			</table>
		</div>
	</form>
</body>
</html>