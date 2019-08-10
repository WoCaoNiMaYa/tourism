<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>旅游列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/tourism/css/table.css" />
<style type="text/css">
.logo {
	width: 400px;
	height: 60px;
}

.head_info {
	width: 200px;
	height: 50px;
	float: right;
}
a {
	text-decoration: none;
}
#tourismForm{
	margin-top: 20px;
}
#tourismTable{
	margin-top: 20px;
}
#btn{
background: #e8e8ff;
border-radius: 5px;
width: 80px;
height: 30px;
}
#btn:HOVER {
	cursor: pointer;
}
#photo:HOVER {
	cursor: pointer;
}
</style>
</head>
<body style="background: url(./public/images/background02.jpg);">
	<!-- header&头部元素 -->
	<div id="box" style="background: #eaedee;">
		<div class="logo">
			<h1>景点发布</h1>
		</div>
		<div class="head_info">
			<b><a href="/tourism/user/logout">退出</a></b>
		</div>
	</div>

	<!-- 景点发布表单 -->
	<div id="tourismForm">
		<form action="${pageContext.request.contextPath }/display/upload" method="post" enctype="multipart/form-data">
			<div class="modal-body">
				<div class="form-group" >
					<label for="fileImg">景点图片</label> 
					<input type="file" id="fileImg"	name="fileImg" id="photo" />
				</div>
			</div>
			<!--  -->
			<div class="modal-body" style="margin-top: 10px;">
				<div class="form-group">
					<label for="spotName">景点名称</label> 
					<input type="text" id="spotName" name="spotName" style="border-radius: 5px;" />
				</div>
			</div>
			<!--  -->
			<div class="modal-body" style="margin-top: 10px;">
				<div class="form-group">
					<label for="spotIntro">景点简述</label>
					<textarea rows="5" cols="10" id="spotIntro" name="spotIntro"></textarea>
				</div>
			</div>
			<!-- 按钮 -->
			<div class="modal-footer" style="margin-top: 10px;">
				<button id="btn" type="submit">保存</button>
			</div>
		</form>
	</div>
	<!-- 表格 -->
	<div id="tourismTable">
		<table border="1" cellspacing="0" id="content">
			<thead>
				<tr>
					<th>景点编号</th>
					<th>景点图片</th>
					<th>景点名字</th>
					<th>景点描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.pageList}" var="pic">
					<tr>
						<td>${pic.id}</td>
						<td><img alt="景点"
							src="${pageContext.request.contextPath }${pic.picpath}"
							width="60px"></td>
						<td>${pic.spotName}</td>
						<td>${pic.spotIntro}</td>
						<td><a href="/tourism/display/delete?id=${pic.id }">删除</a> <a
							href="/tourism/message/getList">留言</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div style="width: 100%;height: 80px;"></div>
</body>
<!-- 插件引入--富文本框 -->
<script type="text/javascript"
	src="/tourism/plugins/ckeditor/ckeditor.js"></script>
<!-- 富文本框引入 -->
<script type="text/javascript">
	CKEDITOR.replace('spotIntro');
</script>
</html>
