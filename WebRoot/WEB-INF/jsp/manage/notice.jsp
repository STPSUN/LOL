<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("contextPath", path);
%>
<<script type="text/javascript">
	function deleteNotice(id)
	{
		if(confirm("确定要删除吗？"))
			{
				location.href = "${contextPath}/notice?action=delete&id="
						+ id;
			}
	}
</script>
<!DOCTYPE html>
<html>
<head>
<link href="css/dingdangguanli.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="${contextPath }/manageHome">主页</a>&gt公告管理
	</h2>
	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<td colspan="10" align="center";>公告ID:<input type="text"
						value="" name="quesion" /></td>
				</tr>
				<tr>
					<th>公告ID</th>
					<th>公告标题</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<c:if test="${not empty noticeList }">
					<c:forEach var="notice" items="${noticeList }">
						<tr>
							<td>${notice.id }</td>
							<td>${notice.title }</td>
							<td>${notice.state }</td>
							<td class="w1 c"><a
								href="${contextPath }/notice?action=toModify&id=${notice.id}">修改</a>
								<a href="${contextPath }/notice?action=toAdd">添加</a>
								<a href="javascript:deleteNotice(${notice.id});">删除</a>
							 </td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty noticeList }">
					<tr>
						<td colspan="4" align="center">暂无数据</td>
					</tr>
				</c:if>
			</table>
		</div>
	</form>
</body>

</html>
