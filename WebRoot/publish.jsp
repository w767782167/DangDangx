<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/publish.css"> 
<script src="bookstrap/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/publish.js"></script>
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
	//上传图片后预览图片
     /*  function viewImage(file) {
		var preview = document.getElementById('preview');
		if (file.files && file.files[0]) {
			//火狐下
			preview.style.display = "block";
			preview.style.width = "121px";
			preview.style.height = "121px";
			preview.src = window.URL.createObjectURL(file.files[0]);
			console.debug(preview.src);
		} else {
			//ie下，使用滤镜
			file.select();
			var imgSrc = document.selection.createRange().text;
			var localImagId = document.getElementById("localImag");
			//必须设置初始大小 
			localImagId.style.width = "121px";
			localImagId.style.height ="121px";
			try {
				localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
				locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
			} catch (e) {
				alert("您上传的图片格式不正确，请重新选择!");
				return false;
			}
			preview.style.display = 'none';
			document.selection.empty();
		}
		return true;
	} */
</script> 
  </head>
  
  <body>
  	<!-- 头部 -->
  <div id="header">
    <div id="operator">
 <ul>
   <li><a href="#">站内信息</a></li>
  <li><a href="#">友情提示</a>&nbsp;|&nbsp;</li>
  
  <li style="float:left;"><font style="color:red">Hi,<a style="color:red">${user}</font>&nbsp;<a href="${url}/login.jsp"><font style="color:#646464">[退出]</a>
 </li>
  
  </ul></div>  </div>
  <img src="img/title.bmp">
 	  <!-- 购物车图片区 -->
 	  <div id="car">
 	  	<img src="img/dang1.png">
 	  </div>
 	  <!-- 分隔线 -->
 	  		<div id="space">
 	  			<div id=dp_address>
 	  			<span class="img">发布图书信息</span>
 	  			</div>
 	  		</div>
  	<!-- 中部 -->
  	<div id="content">
  		<table>
  			<form action="${url}/bookservlet" enctype="multipart/form-data" method="post" name="d_reg_form">
  			<tr>
  				<td>书籍编号 </td>
  				<td>
  				<input type="text" id="bookno" name="book_no" placeholder="ISNB 978-7-121-25136-8" size="23">
  				<p id="prop" style="color:red;font-size:12px;">${errorMsg}</p></td>
  				<td><label class="btn-primary" style="display:inline-block">选择图片<input type="File"
			style="display:none" class="form-control" id="caseImage"
			name="caseImage" onchange="viewImage(this)" /> </label>
			<input type="File" style="display:none"></td>
			<!--  头像显示区 -->
  				<td><div id="localImag" style="display:inline-block">
		     <img id="preview" width=121 height=121 style="display:inline-block border:1px solid gray"/>
	         </div></td>
  			</tr>
  				<tr>
  				<td>书籍名称</td>
  				<td><input type="text" name="bookname" size="23"></td>
  				<td>书籍简介</td>
  				<td>
  				<textarea name="bookinfo" rows="1" cols="40" placeholder="请输入书籍简单介绍"></textarea>
  				</td>
  			</tr>
  				<tr>
  				<td>书籍类型</td>
  				<td><input type="text" name="bookclass" size="23"></td>
  				<td>书籍作者</td>
  				<td><input type="text" name="bookautor" size="23"></td>
  			  </tr>
  				<tr>
  				<td>书籍出版社</td>
  				<td><input type="text" name="bookpublish" size="23"></td>
  				<td>书籍出版时间</td><publishtime>
  				<td><select name="year" size="1" onChange="return checkDay()">
  				   <script language="javascript">   
                        for(i=2050;i>=1980;i--)   
                            {   
                                document.write('<option   value="'+i+'">'+i+'</option>')   
                            }   
                     </script>   
  				</select>年
  					<select name="month"   size="1"   onChange="return CheckDay();">   
                        <option   value="1">1</option>   
                        <option   value="2">2</option>   
                        <option   value="3">3</option>   
                        <option   value="4">4</option>   
                        <option   value="5">5</option>   
                        <option   value="6">6</option>   
                        <option   value="7">7</option>   
                        <option   value="8">8</option>   
                        <option   value="9">9</option>   
                        <option   value="10">10</option>   
                        <option   value="11">11</option>   
                        <option   value="12">12</option>   
          </select>月  
          <select   name="day"   size="1"></select>日
  				</td>
  			</tr>
  			<tr>
  				<td>书籍单价</td>
  				<td><input type="text" name="price" placeholder="23.00" size="23"></td>
  				<td>电子书单价</td>
  				<td><input type="text" name="eprice" placeholder="23.00" size="23"></td>
  			</tr>
  			<tr>
  				<td>库存数量</td>
  				<td><input type="number" min="1" max="10000" name="bookcount"></td>
  			</tr>
  			<tr>
  				<td colspan="2"><span><input type="submit" value="发     布" style="width:150px; margin-left:252px"></span></td>
  				<td colspan="2"><span><input type="reset" value="重置信息" style="width:150px; margin-right:400px"></span>
  				</td>
  			</tr>
  			</form>
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
