<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>天府之国-成都</title>

<meta content="天府之国-成都" name="keywords" />

<meta content="天府之国-成都" name="description" />

<link href="../css/base.css" rel="stylesheet" type="text/css">

<link href="../css/pagename.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/tourism/js/jquery-1.6.2.min.js"></script>
<style type="text/css">
	.list td{
		line-height:20px;
		font-size: 14px;
		color:blank;
		letter-spacing:1px;
        padding:8px;
        family:"微软雅黑";
		
	}
	.list-tr{
		font-style:italic;
		padding-right:20px;
		color:#9c9c9c;
	}
	.list-tr-two{
		color:#4b4b4b;
	}
</style>

</head>

<body>
	<!--header-->

	<div class="header">

		<div class="w1000">

			<p>你好，欢迎光临天府之国成都！</p>
		</div>

	</div>

	<div class="w1000">

		<div class="header_bottom">

			<a href="../index.jsp"><img src="../images/logo.jpg" width="294"
				height="49" alt="" title="天府之国-成都"></a>

			<ul>

				<li><a href="../index.jsp">网站首页</a></li>

				<li><a href="historic.html">历史</a></li>

				<li><a href="beautiful.html">风景</a></li>

				<li><a href="tourism.html">旅游</a></li>

				<li><a href="delicacy.html">美食</a></li>

				<li><a href="/tourism/message/getListjsp">留言</a></li>

			</ul>

		</div>

	</div>
	<!--header结束-->
	
	<div class="container">

		<!--banner-->

		<div class="banner_erji">

			<img src="../images/banner_erji6.jpg" width="1000" height="187"
				alt="" title="">
		</div>

		<!--banner end-->

		<!--content-->

		<div class="content clearfix">

			<div class="leftbar">

				<div class="leftnav">

					<h1>其他目录</h1>

					<ul class="ul_left">

						<li>
							<h3>
								<a href="/tourism/message/getListjsp">给我留言</a>
							</h3>

						</li>

						<li>
							<h3>
								<a href="/tourism/index.jsp">联系我们</a>
							</h3>

						</li>

					</ul>

				</div>

				<div class="left_lx">
					<h1>联系方式</h1>

					<p>地址：四川工商职业技术学院</p>

					<p>联系人：项目小组</p>

					<p>电话：123456789</p>

					<p>QQ：987654321</p>

					<p>网址：wwXXXcom</p>

					<p>邮编：xxxxxx</p>

				</div>

			</div>

			<div class="rightbar">

				<div class="bread">
					<a href="/tourism/index.jsp">首页</a> >给我留言
				</div>

				<div class="contact_nei">
					<form id="feedback_form" name="feedback_form" action="/tourism/message/add" method="post">
						<ul>
							<li><label>您的称呼：</label><input id="txtUserName"
								name="txtName" type="text" class="yuyue_in" /></li>
							<li><label>您的电话：</label><input id="txtUserTel"
								name="txtTell" type="text" class="yuyue_in" /></li>
							<li><label>您的性别：</label><input type="radio" class="yuyue_ra"
								name="sex" value="0" /> <em>男</em> <input
								name="sex" value="1" type="radio" class="yuyue_ra" /> <em>女</em></li>
							<li><label>你的留言：</label>
							<textarea id="message" name="message" cols="" rows=""
									class="yuyue_te"></textarea></li>
							<li><label>验证码：</label><input id="txtCode" name="txtCode"
								type="text" class="yuyue_in" style="width: 100px;" /> <a><img
									src="#" width="80" height="22" align="absmiddle" /> 看不清楚？</a></li>
							<li><input name="btnSubmit" id="btnSubmit" type="submit"
								value="提交" class="btn" /> <input name="" type="reset"
								value="重置" class="btn" /></li>
						</ul>
					</form>

				</div>
			</div>
			
			<div style="width:694px; padding:10px;margin-top:10px; min-height:400px;float: right;background: white;">
				<!-- 列表 -->
				<div class="list">
					<table cellpadding="0" cellspacing="0" >
						<tbody>
							<c:forEach items="${requestScope.messageList}" var="msg">
							<tr >
								<td class="list-tr">${msg.inputTime}</td>
								<td class="list-tr-two">${msg.txtName}</td>
								<td class="list-tr-two">${msg.txtTell}</td>
								<td class="list-tr-two">${msg.sex?"女":"男"}</td>
								<td class="list-tr-two">${msg.message}</td>
							</tr>
							</c:forEach>	
						</tbody>
					</table>
				</div>
				
			</div>
			
			
		
		</div>


		<!--content end-->

	</div>

	<!--footer开始-->

	<div class="footer">


		<p>
			<a href="../index.jsp">首页</a> | <a href="historic.html">历史</a> | <a
				href="beautiful.html">风景</a> | <a href="tourism.html">旅游</a> | <a
				href="delicacy.html">美食</a> | <a href="new.html">动态</a> | <a
				href="/tourism/message/getList">旅游</a>| <a href="connection.html">联系我们</a>
		</p>

		<p>旅游网站的设计 &copy; 2019-6 版权所有 项目小组</p>
		<p>
			地址：四川工商职业技术学院 来源:<a href="http://www.mycodes.net/" target="_blank">毕业设计</a>
		</p>
	</div>

	<!--footer 结束-->

</body>
</html>

</html>
