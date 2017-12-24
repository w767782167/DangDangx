<%@page import="com.etcxm.page.pageResult"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/car.css"> 
<script src="bookstrap/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'car.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function goPage(currentPage){
		document.getElementById("currentPageInput").value=currentPage;
		document.getElementById("advanceForm").submit();
	}
	function checkChange(ele){
		$("[name=hobby]").prop('checked',ele.checked);
	}
	function goAddrPage(){
		window.open ("myOrderAddr.jsp","收货地址","height=400, width=560, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
	
</script>
  </head>
  
  <body>
  	<!-- 头部 -->
  <div id="header">
    <div id="operator">
 <ul>
   <li><a href="${url}/myOrder.jsp">我的订单</a></li>
  <li><a href="${url}/car.jsp"><span style="color:red" class="glyphicon glyphicon-shopping-cart"></span>购物车2</a>&nbsp;|&nbsp;</li>
  
  <li style="float:left;"><font style="color:red">Hi,<a href="${url}/login.jsp" style="color:red">${user}</font>&nbsp;<font style="color:#646464">[退出]</a>
 </li>
  
  </ul></div>  </div>
  <img src="img/header.jpg">
 	  <!-- 购物车图片区 -->
 	  <div id="car">
 	  	<img src="img/dang.png">
 	  	<span>我的购物车</span>
 	  	<span>填写订单</span>
 	  	<span>完成订单</span>
 	  </div>
 	  <!-- 分隔线 -->
 	  		<div id="space">
 	  			<div id=dp_address>
 	  			<span class="img"><img src="img/icon.png">配送地址:</span>
 	  			
 	  			<div class="select_add">
 	  				<span class="address">北京市顺义区</span>
 	  				<div class="area_pop" style="display:none"></div>
 	  			</div>
 	  		
 	  			</div>
 	  		</div>
  	<!-- 中部 -->
  	<div id="content">
  			<div class="success">
  				<h4 style="display:inline-block"><input type="checkbox" onchange="checkChange(this)" id="checkAll">全选 </h4>
  				<span>商品信息</span>
  				<span>单价（元）</span>
  				<span>数量</span>
  				<span>金额（元）</span>
  				<span>操作</span>
  				<input type="checkbox"><h5><input type="checkbox"><a href="#"><img src="img/dtitle.png">当当自营</a></h5>
  		</div>
  		<table>
  			<c:forEach items="${pageResult.listData}" var="car">
  			<tr>
  				<td><input type="checkbox" name="hobby"></td>
  				<td><div id="imgdiv"><img src="${car.img}" class="img"></div></td>
  				<td><a id="prop" href="#">${car.name}</a></td>
  				<td><span id="price1">¥${car.price}</span></td>
  				<td><input id="num" type="text" value="${car.num}" readonly="true"></td>
  				<td><span id="price">¥${car.total}</span></td>
  				<td><span class="remove-pro"><a href="#">移入收藏</a></span><br>
  				<span class="del-pro"><a href="${url}/carservlet?cmd=del&id=${car.id}">删除</a></span>
  				</td>
  			</tr>
  			</c:forEach>
  			<c:if test="${empty pageResult.listData}">
  				<tr>
  					<td><img src="img/tbody.png"></td>
  				</tr>
  			</c:if>
  			<tr>
  				<td colspan="7"><input type="checkbox" onchange="checkChange(this)" id="checkAll">全选
  				 <a href="#">批量删除</a>
  				<!--  <span>总计（不含运费）：¥254.50</span> -->
  				<span>总计（不含运费）：¥${totalPrice}</span>
  				 <a href="javascript:goAddrPage()"><input class="subpay" type="button" value="结算">
  				</td></a>
  			</tr> 
  			<div style="padding-left:500px;">
  <form action="${url}/carservlet" id="advanceForm" method="post">
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
  		</table>
	</div>
 	<!-- 为你推荐 -->

  	<!--  一本书模型  -->
  <!--  尾部 -->
  <div id="hh"></div>
   <div id="footer"><font class="font-footer">Copyright(C)当当网2004-2013，All Rights Reserved<img align="center"src="img/validate.gif">
   京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
   </div> 
  </body>
</html>
