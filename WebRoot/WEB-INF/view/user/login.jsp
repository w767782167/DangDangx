<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%String prop=(String)request.getAttribute("res");
     if(prop==null){
      prop="";
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
	<!-- 头部 -->
	<div id="header">
		<img src="img/logo.jpg">
	</div>
	<!-- 左边图片区 -->
	<div id="nave">
		<img src="img/log.png">
	</div>
	<!--右边登录区 -->
	<div id="content">
		<!-- 面板 -->
		<div class="panel">
			<form action="${pageContext.request.contextPath}/login" method="post">
			<div class="group">
				<label>帐户</label> <input placeholder="邮箱/昵称/手机号码" id="count" name="username">
			</div>
			<font style="color:red;font-size:14px">&emsp;&emsp;&emsp;<%=prop%></font>
			<div class="group">
				<label>密码</label> <input type="password" placeholder="密码" id="pwd" name="password">
			</div>
			<!--       提示信息 -->
			<label><input type="checkbox" checked><font
				style="color:gray">&nbsp;请勿在公用电脑上勾选此选项&emsp; &emsp;&emsp;</font><a
				href="#"><font>忘记密码？</font>
			</a>
			</label>
			<!-- 登录 -->
			<div>
				<a href="index.html"><input type="submit" class="sub" value="登  录" onclick="return check()">
				</a>
			</div>
			<div class="aset">
				<a href="${pageContext.request.contextPath}/register.jsp"><font style="color:gray">立即注册</font>
				</a>
			</div>
			</form>
		</div>
	</div>
	<!-- <hr> -->
	<!-- 底部 -->
	<div id="footer">
		<a>公司简介</a>&emsp;| &emsp;<a>诚聘英才</a>&emsp;| &emsp;<a>手机当当</a>&emsp;|
		&emsp;<a>网站联盟</a>&emsp;| &emsp;<a>当当招商</a>&emsp;| &emsp;<a>机构销售</a>&emsp;|
		&emsp;<a>官方Blog</a>
		<div id="footer1">
			<font class="font-footer">Copyright(C)当当网2004-2013，All Rights
				Reserved<img align="center" src="img/validate.gif">
				京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
		</div>
	</div>
</body>
</html>
