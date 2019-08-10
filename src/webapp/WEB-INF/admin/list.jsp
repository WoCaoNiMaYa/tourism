<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>旅游列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/tourism/css/table.css" />

<style type="text/css">
a {
	text-decoration: none;
}

.logo {
	width: 400px;
	height: 60px;
}

.head_info {
	width: 200px;
	height: 50px;
	float: right;
}
#content{
	margin-top: 20px;
}
</style>

</head>
<body style="background: url(./public/images/background02.jpg);">
	<div id="box" style="background: #eaedee;">
		<div class="logo">
			<h1>旅游浏览——管理员</h1>
		</div>
		<div class="head_info">
			<b><a href="/tourism/user/logout">退出</a></b>&emsp;<a
				href="/tourism/display/getAll">景点发布</a>
		</div>
	</div>
	<div id="content">
		<table border="1" cellspacing="1" id="content_table">
			<thead>
				<tr>
					<th>留言者</th>
					<th>电话</th>
					<th>性别</th>
					<th>内容</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.messageList}" var="msg">
					<tr>
						<td>${msg.txtName}</td>
						<td>${msg.txtTell}</td>
						<td>${msg.sex?"女":"男"}</td>
						<td>${msg.message}</td>
						<td>${msg.inputTime}</td>
						<td><a href="/tourism/message/delete?id=${msg.id }">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
