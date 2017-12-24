<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>收货地址</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	

  </head>
  
  <body>
    <form action="/myorderservlet" method="post">
    	<table cellpadding="10" cellspacing="5">
    	<tr><td>收货人 </td>
    	  <td><input type="text" name="getName"></td>
    	  </tr>
    	<tr><td>手机号码  </td>
    	<td><input type="text" name="moble"> 或固定电话<input type="text" name="tel"></td>
    	</tr>
    	<tr><td>所在地区</td><td><input type="text" name="inArea"></td></tr>
    	<tr><td>详细地址</td><td><input type="text" name="address"></td></tr>
    	<tr><td>邮编</td><td><input type="text" name="pnum"></td></tr>
    	<tr><td><input type="submit" value="确认收货地址"></td>
    	<td><input type="reset" value="取消"></td>
    	</tr>
    	
    	</table>
    </form>
  </body>
</html>
