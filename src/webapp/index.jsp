<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>天府之国-成都</title>
<meta content="天府之国-成都" name="keywords" />
<meta content="天府之国-成都" name="description" />
<link href="/tourism/css/base.css" rel="stylesheet" type="text/css">
<link href="/tourism/css/pagename.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/tourism/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="/tourism/js/jquery.SuperSlide.2.1.js"></script>
</head>
<body>
<!--header开始--> 
<div class="header"> 
	<div class="w1000">
        <div class="contact"><a href="/tourism/log.html">登录</a> <a href="/tourism/regist.html">注册</a></div>
	</div>
</div>
<div class="w1000">
	<div class="header_bottom">
			<a href="/tourism/index.jsp"><img src="/tourism/images/logo.jpg" width="294" height="49" alt="" title="绿城之都-南宁"></a>
       		<ul>
            	<li><a href="/tourism/index.jsp">首页</a></li>       
                <li><a href="/tourism/template/culture.html">文化历史</a></li>   
               <li><a href="/tourism/template/beautiful.html">风景名胜</a></l>     
                <li><a href="/tourism/template/tourism.html">旅游攻略</a></li>    
                <li><a href="/tourism/template/delicacy.html">美食休闲</a></li>
    
                <li><a href="/tourism/message/getList">留言板</a></li>   		
     		</ul>  
    </div>       
</div>
<!--header结束--> 
<div class="container"> 		
		<!--banner开始-->
		<div class="banner"> 
            <div class="bd">
                <ul>
                    <li style="background:url(/tourism/images/banner_4.jpg) no-repeat center top;"></li>
                    <li style="background:url(/tourism/images/banner_2.jpg) no-repeat center top;"></li>
                </ul>
            </div>
            <div class="hd">
                <ul>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
		 <!--调用JS模块图片滚动--> 
        <script type="text/javascript">jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",delayTime:1000,interTime:5000,autoPlay:true, autoPage:true, trigger:"click" });</script>
		<!--banner结束--> 
		<!--content开始-->
		<div class="content"> 
			<p class="p_tit1">蓉城</p>
			<%-- <c:forEach items="${sessionScope.pictureList }" varStatus="" var="p">	
			<ul class="ul_jishu clearfix">
            	<li class="fl" >
                	<a href="${pageContext.request.contextPath }${p.picpath}"><img src="${pageContext.request.contextPath }${p.picpath}" width="291" height="126" alt="" title=""></a>
					<p>
                    	<a href="${pageContext.request.contextPath }${p.picpath}">${p.spotName }简介</a>
                    	${p.spotIntro }
                   </p>
                   <a href="/tourism/message/getList">留言</a>
                </li>
            </ul>
            </c:forEach> --%>
			<table class="ul_jishu clearfix" cellspacing="2" style="margin-left: 40px;">
				<c:forEach items="${sessionScope.pictureList }" var="p" varStatus="s">
					<c:if test="${(s.count-1)%3==0 }">
						<tr>
					</c:if>
					<th class="fl" width="300">
						<a href="${pageContext.request.contextPath }${p.picpath}"><img src="${pageContext.request.contextPath }${p.picpath}" width="250" height="126" alt=""></a>
					<p>
                    	<a href="${pageContext.request.contextPath }${p.picpath}">${p.spotName }简介</a><br/>
                    	${p.spotIntro }
                   </p>
                   <a href="/tourism/message/getList">留言</a>
					</th>
					<c:if test="${s.count%3==0 }">
						</tr>
					</c:if>
				</c:forEach>
			</table>            	
            <div class="feilei">
            	<div class="fl1 fldiv">
                	<a href="#"><img src="/tourism/images/pic_4.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">人民公园</a></p>
                </div>
                <div class="fl2 fldiv">
                	<a href="#"><img src="/tourism/images/pic_5.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">成都海底世界</a></p>
                </div>
                <div class="fl3 fldiv">
                	<a href="#"><img src="/tourism/images/pic_6.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">国色天香</a></p>
                </div>
                <div class="fl4 fldiv">
                	<a href="#"><img src="/tourism/images/pic_7.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">天府广场</a></p>
                </div>
                <div class="fl5 fldiv">
                	<a href="#"><img src="/tourism/images/pic_8.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">青城山顶</a></p>
                </div>
                <div class="fl6 fldiv">
                	<a href="#"><img src="/tourism/images/pic_9.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">宽窄巷子</a></p>
                </div>
                <div class="fl7 fldiv">
                	<a href="#"><img src="/tourism/images/pic_10.jpg" width="75" height="76" alt="" title=""></a>
                    <p><a href="#">植物园</a></p>
                </div>
            </div>
            <div class="zjfc">
            	<p class="p_tit1">天府之国</p>
                <div class="picScroll-left">
                    <div class="hd">
                        <a class="next"><</a>
                        <a class="prev">></a>
                    </div>
                    <div class="bd">
                        <ul class="picList">
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301619396038.jpg" width="231" height="151" /></div>
                            </li>
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301618110413.jpg" width="231" height="151" /></div>
                            </li>
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301611286194.jpg" width="231" height="151" /></div>
                            </li>
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301613498694.jpg" width="231" height="151" /></div>
                            </li>
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301614494319.jpg" width="231" height="151" /></div>
                            </li>
                   <li>
                                <div class="pic"><img src="/tourism/images/201410301615449632.jpg" width="231" height="151" /></div>
                            </li>
                        </ul>
                    </div>
                </div>
        		<!--为秀丽南宁模块图片向左滚到--> 
                <script type="text/javascript">
                jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
                </script>
            </div>
		</div>
		<!--content 结束--> 
</div>

<!--footer开始-->
<div class="footer"> 

	<p><a href="/tourism/index.jsp">首页</a> | <a href="/tourism/template/beautiful.html">风景</a> | <a href="/tourism/template/tourism.html">旅游</a> | <a href="/tourism/template/delicacy.html">美食</a> | <a href="/tourism/template/new.html">动态</a> | <a href="/tourism/template//tourism/message/getListjsp">旅游</a>| <a href="/tourism/template/connection.html">联系我们</a></p>

<p>旅游网站的设计 &copy; 2019-6  版权所有 项目小组</p>
  <p>地址：四川工商职业技术学院  来源:<a href="http://www.mycodes.net/" target="_blank">毕业设计</a> </p>
</div>
	
<!--footer 结束--> 
</body>
</html>

    