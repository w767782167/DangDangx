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

	<div id="content">
		<div class="titleimg">
			<img src="img/bg_bang.gif">
		</div>
		<div>

			<div class="book-01">
				<img class="bookno1" src="img/bookNo1.gif"> <a
					href="${url}/bookinfo.jsp"><img src="img/book-01.jpg" />
				</a>
				<div class="label">
					<font>偷影子的人</font><br> 作者：[法]马克.李维(Marclevy)著，段韵灵 译<br>
					出版社：湖南文艺出版社<br> 当当价：<font class="money">&yen;17.90</font><br>
					不知道姓氏的克蕾儿。这就是你在我生命里的角色，我童年时的小女孩，今日蜕变成了女人，一段 青梅竹马的回忆。一个
					时间之神没有应充的愿望。一个老是受班上同学欺负的弱小小男孩，因为有一种特殊的能力而强大：他能偷别人的影子，因 而能看到他
				</div>
			</div>

			<div class="book23">

				<div class="book-02">
					<img class="bookno2" src="img/bookNo2.gif"> <img
						src="img/book-02.jpg">
					<div class="lable2">
						<font>看见央视知名记者、主持人柴静：十年个人<br>成长的告白，中国社会变迁的备忘<br>
						</font>作者：柴静&emsp;著<br> 出版社：广西师范大学出版社<br> <font class="money">&yen;29.40&emsp;</font><font
							class="sale">7.4折</font>
					</div>
				</div>

				<div class="book-03">
					<img class="bookno3" src="img/bookNo3.gif"> <img
						src="img/book-03.jpg">
					<div class="label3">
						<font>改变孩子先改变自己</font><br>作者：贾容韬 &emsp;贾毅&emsp;著 <br>出版社：作家出版社<br>
						<font class="money">&yen;22.20&emsp;</font><font class="sale">7.4折</font>
					</div>
				</div>

			</div>

		</div>

		<!--底部 -->
		<div id="footer">
			<font class="font-footer">Copyright(C)当当网2004-2013，All Rights
				Reserved<img align="center" src="img/validate.gif">
				京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
		</div>
</body>
</html>
