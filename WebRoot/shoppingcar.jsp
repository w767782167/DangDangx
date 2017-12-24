<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shoppingcar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/shoppingcar.css">
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
	<script type="text/javascript">
	/*  function goPage(currentPage){
		document.getElementById("currentPageInput").value=currentPage;
		document.getElementById("advanceForm").submit(); 
	} */
	function goPage(currentPage){
			$("#currentPageInput").val(currentPage);
		    $("#advanceForm").submit();
	}
	//自动刷新
	/* window.location.href=window.location.href; */
	
</script>
  </head>
  
  <body>
  	<!-- 头部 -->
  <div id="header"><div id="operator"><span>欢迎<font style="color:red">${user}</font>光临当当</span>
  <ul>
  
  <li><a href="${url}/myOrder.jsp">我的订单</a></li>
  <li><a href="${url}/car.jsp"><span style="color:red" class="glyphicon glyphicon-shopping-cart"></span>购物车${book_num}</a>&nbsp;|&nbsp;</li>
  </ul></div>
  </div>
  	<!-- 中部 -->
  	<div id="content">
  		<div id="content-left">
  			<div class="success">
  				<h4>商品已成功添加至购物车!</h4>
  			</div>
  			<div id="ver-mid">
  				<p style="border:0px solid gray;width:442px; height:82px;overflow:hidden">
  				<a title="${book_name}${book_info}">${book_name}${book_info}</a>
  				<span class="redtip">${book_price}</span>
  				<span class="orgtip">x${book_num}</span>
  				</p>
  			</div>
  		</div>
  		<div id="content-right">
  			<h4>
  			购物车已有<span style="color:red">${cartitem.num}</span>件商品</h4>
  			<h6>
  				应付总额(不含运费)：
  				<span>¥${total}</span>
  			</h6>
  			<p>
  				<a class="pay" href="${url}/carservlet">去购物车结算</a>
  				<a class="shoping" href="${url}/index.jsp">继续购物</a>
  			</p>
  		</div>
 	</div>
 	<!-- 为你推荐 -->
  <div id="list">
  	<h4>买过同样商品的顾客还买了</h4>
  	<div class="recoment">
  	</div>
  	<!--  一本书模型  -->
  	  
  	 <c:forEach items="${pageResult.listData}" var="bk">
      <div class="item">
  		<div id="booksize">
 <img alt="####" src="${bk.book_img}">
<!-- <img alt="####" src="upload/466b1f2f-d875-440f-a0c2-efb17d3fd8e9.jpg"> -->
<!-- <img alt="####" src="E:/Workspaces/Webserver/DangDangx/WebRoot/upload/466b1f2f-d875-440f-a0c2-efb17d3fd8e9.jpg">  -->
<!-- <img alt="####" src="E:/tomcat/apache-tomcat-7.0.57-windows-x64/apache-tomcat-7.0.57/webapps/DangDangx/upload/466b1f2f-d875-440f-a0c2-efb17d3fd8e9.jpg"> -->
  	   	</div>
  	   		<h6 style="color:red">${bk.book_price}￥</a></h6>
			<p style="border:0px solid gray;width:242px; height:82px;overflow:hidden">[当当自营]${bk.book_name}:${bk.book_info}</p>
			    <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star">
                </span><span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <a href="#">815903条评论 </a>
			
  	  </div>
  	 </c:forEach> 
  </div>
  <div style="padding-left:500px;">
 <form action="${url}/shoppingcarservlet" id="advanceForm" method="post">
  	<input type="hidden" name="currentPage" id="currentPageInput">
  </form> 
  			当前页${pageResult.currentPage}/${pageResult.totalPage}
  			<a href="javascript:goPage(1)">首页</a>
  			<a href="javascript:goPage(${pageResult.prePage})">上一页</a>
  			<c:forEach begin="${pageResult.index.beginIndex}" end="${pageResult.index.endIndex}" var="index">
  				<a href="javascript:goPage(${index})">${index}</a>
  			</c:forEach>
  			<a href="javascript:goPage(${pageResult.nextPage})">下一页</a>
  			共${pageResult.totalPage}页
  			<a href="javascript:goPage(${pageResult.totalPage})">尾页</a>
  </div>
  <!--  尾部 -->
  <div id="hh"></div>
   <div id="footer"><font class="font-footer">Copyright(C)当当网2004-2013，All Rights Reserved<img align="center" src="img/validate.gif">
   京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
   </div> 
  </body>
</html>
