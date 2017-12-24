<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body>
	<!--头部-->
	<div id="header">
		<div class="header-title">
			<img class="imglog" src="img/logo.jpg"> <img class="icon"
				src="img/icon_count.png"> <label><font style="color:red">${user}</font>欢迎光临当当！</label>
			<div class="title">
				<a href="#">尾品汇</a> <a href="#">当当优品</a> <a href="#">数字馆</a> <a
					href="#">都看阅器</a>
			</div>
		</div>
		<div class="header-middle">
			<a href="#">首页&emsp;&emsp;</a> <a href="#">图书&emsp;&emsp;</a> <a
				href="#">音像&emsp;&emsp;</a> <a href="#">童装&emsp;&emsp;</a> <a
				href="#">服装&emsp;&emsp;</a> <a href="#">鞋靴&emsp;&emsp;</a> <a
				href="#">运动&emsp;&emsp;</a> <a href="#">箱包&emsp;&emsp;</a> <a
				href="#">美妆&emsp;&emsp;</a> <a href="#">珠宝&emsp;&emsp;</a> <a
				href="#">家居&emsp;&emsp;</a> <a href="#">食品&emsp;&emsp;</a> <a
				href="#">酒&emsp;&emsp;</a> <a href="#">手机&emsp;&emsp;</a> <a
				href="#">数码&emsp;&emsp;</a> <a href="#">电脑&emsp;&emsp;</a> <a
				href="#">家电</a>
		</div>
		<div id="header-bottom">
			<img src="img/banner.png">
		</div>
	</div>
	<!--内容  -->

	<div id="list">
		<div class="titleimg">
			<img src="img/bg_bang.gif">
		</div>
		

		 <c:forEach items="${books}" var="bk">
         <div class="item">
  		 <div id="booksize">
          <a href="${url}/commentshow?book_id=${bk.book_id}"><img alt="####" src="${bk.book_img}"></a>
  	   	 </div>
  	   		<h6 style="color:red">${bk.book_price}￥</a></h6>
			<p style="border:0px solid gray;width:242px; height:82px;overflow:hidden">[当当自营]${bk.book_name}:${bk.book_info}</p>
			    <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star">
                </span><span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
			
  	   </div>
  	 </c:forEach> 
  </div>

		<!--底部 -->
		<div id="footer">
			<font class="font-footer">Copyright(C)当当网2004-2013，All Rights
				Reserved<img align="center" src="img/validate.gif">
				京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
		</div>
</body>
</html>
