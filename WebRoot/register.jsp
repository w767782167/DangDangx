<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="css/register.css">
<link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.css">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
  <script type="text/javascript" src="js/reg.js"></script>

   <script type="text/javascript">
	  function changeRandomCode(){
	  //alert(1);
	      document.getElementById("randomCodeImg").src="${url}/randomCode?"+new Date().getTime();
	  }
	   function changeRandomCode1(){
	  //alert(1);
	      document.getElementById("randomCodeImg1").src="${url}/randomCode?"+new Date().getTime();
	  }
	  function hideLab(){
	  	   document.getElementById("lab").style.visibility="hidden";
	  }
	</script> 
    
  </head>
  
  <body>
   	<!-- 头部 -->
    <div id="header">
    <img class="imglog" src="img/logo.jpg">
    <div class="header-reg">欢迎光临当当网，请<a href="${url}/login.jsp">登录</a>&emsp;<a href="#">免费注册</a>
    </div>
    <div id="divhr"></div>
    </div>
    
    <!-- 中部 -->
    <div id="wrap">
    <ul id="nav" class="nav nav-tabs">
    <li role="presentation" class="active"><a>新用户注册</a></li>
    <li role="presentation"><a>企业用户注册</a></li>
    </ul>
    <span class="glyphicon glyphicon-home"><a href="${url}/index.jsp">当当首页</a>&emsp;<a>注册帮助</a></span>
     	<!-- 显示区 -->
         <div id="tagContent"> 
    	 <div class="usertab">
    	 <form action="${url}/regservlet" method="post" onsubmit="return checkForm();" id="frm">
    	 <!--   用户注册面板 -->
    	 <div class="userpanel">
    	    <!-- 	手机号码 -->
    	  <div id="mobnum">
    	  <!-- <label>手机号码</label> -->
    	  <label>&emsp;用户名</label>
    	  <input type="text"class="num" id="username1" placeholder="请输入你的手机号码" name="num" onblur="checkUserName()">
    	  <label id="tipId" style="color:red;width:140px;margin-right:-140px"></label>
    	  <p>手机号可用于登录、找回密码、接收订单通知等服务 </p>
    	   </div>
    		 <!--  密码 -->
    	    <div id="pasword">
    	  <label>&emsp;&emsp;密码</label>
    	  <input type="password" class="pwd" name="password" placeholder="请输入你的密码">
    	  <p>密码为6到20个字符，可由英文、数字及符号组成</p>
    	   </div>
    	   <div id="pasword">
    	  <label>&emsp;&emsp;密码</label>
    	  <input type="password" class="pwd2" placeholder="请再次输入你的密码">
    	   </div>
    	    	<!-- 验证码 -->
    	    		<p id="lab" style="padding-right:120px"><font style="color:red;font-size:14px">&emsp;&emsp;&emsp;${errorMsg}</font></p>
    	     <div>
    	    
    	     	<label>验证码</label>
    	     	<input class="randomCode" name="randomCode" placeholder="请输入验证码" onfocus="hideLab()"><img alt="验证码" src="${url}/randomCode"
    	     	 id="randomCodeImg" onclick="return changeRandomCode()">
    	     </div>
    	     			 <!-- 规则提示 -->
    	            <lable><input type="checkbox" class="lab" checked="checked"><font>我已阅读并同意
    	              《当当交易条款》和《当当社区条款》</font></label>
    	              		<!--  提交  -->
    	             <div class="subpanel"><input type="submit" class="sub" value="立即注册"></div>		
    	     </div>
         
    	 </form>
         </div>
         <!-- 企业注册 -->
         <div class="comtab"> 
         	<form action="#">
         	<div class="companel">
         	  <!-- 	帐户信息-->
    	    <div class="cominfo">
    	    <p class="glyphicon glyphicon-inbox"><font style="color:gray;font-size:20px">帐户信息&emsp;&emsp;&emsp;&emsp;</font></p>
			<label>&ensp;&ensp;用户名</label>
			<input id="username" placeholder="请输入你的用户名">
    	     </div>
    		 <!--  密码 -->
    	    <div id="pasword">
    	  	<label>设置密码</label>
    	  		<input type="password" class="pwd" placeholder="请输入你的密码">
    	   </div>
    	   <div id="pasword">
    	  	<label>确认密码</label>
    	  		<input type="password" class="pwd" placeholder="请再次输入你的密码">
    	   </div>
    	  <p class="glyphicon glyphicon-home"><font style="color:gray;font-size:20px">企业及联系人信息</font></p>
    	  <label>公司名称</label>
    	  <input id="company" placeholder="请输入你的公司名称">
    	  <div class="comaddr">
    	  <label>公司地址</label>
    	  <select>
    	  	<option>请选择</option>
    	  	<option>北京</option>
    	  	<option>厦门</option>
    	  </select>
    	   <select>
    	  	<option>请选择</option>
    	  	<option>北京市</option>
    	  	<option>厦门市</option>
    	  </select>
    	   <select>
    	  	<option>请选择</option>
    	  	<option>东城区</option>
    	  	<option>翔安区</option>
    	  </select>
    	  </div>
    	  <input class="addr" placeholder="请填写街道地址">
    	  <div>
    	  <label>固定电话</label>
    	  <input id="areanum" placeholder="请输入区号" style="width:90px">
    	  <input id="areanum" placeholder="请输入坐机" style="width:110px">
    	  <input id="areanum" placeholder="请输入分机号" style="width:110px">
    	  </div>
    	  <label>联系人姓名</label>
    	  <input class="name" placeholder="请输入联系人姓名">
    	  <div>
    	  <label>手机号</label>
    	  <input class="num" placeholder="请输入手机号">
    	  </div>
    	   <div>
    	  <label>验证码</label>
    	  <input class="yzm" placeholder="请输入验证码" style="width:110px">
    	  <img alt="验证码" src="${url}/randomCode" title="看不清，点击切换"
    	  id="randomCodeImg1" onclick="return changeRandomCode1()"
    	  >
    	  </div>
    	  
    	   <!-- 规则提示 -->
    	            <lable><input type="checkbox" class="labinfo" checked>我已阅读并同意
    	              <font>《当当交易条款》和《当当社区条款》</font></label>
    	              		<!--  提交  -->
    	        <div class="subpanel"><input type="submit" class="sub" value="立即注册"></div>
         </form>
        </div>
       </div>
    <!-- <hr> -->
   	<!-- 底部 -->
   <div id="footer">
   <a>公司简介</a>&emsp;|
   &emsp;<a>诚聘英才</a>&emsp;|
   &emsp;<a>手机当当</a>&emsp;|
   &emsp;<a>网站联盟</a>&emsp;|
   &emsp;<a>当当招商</a>&emsp;|
   &emsp;<a>机构销售</a>&emsp;|
   &emsp;<a>官方Blog</a>
   <div id="footer1"><font class="font-footer">Copyright(C)当当网2004-2013，All Rights Reserved<img align="center" src="img/validate.gif">
   京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font></div>
   </div>
  </body>
     
    <script type="text/javascript">
		 var tag=document.getElementById("nav").children;//获取Tag下的li，即Tag标签
		 var content=document.getElementById("tagContent").children; //获取Tag标签对应的内容 
		 content[1].style.display = "none"; //默认显示第一个标签的内容 
		 var len= tag.length; 
		 for(var i=0; i<len; i++) 
		 { 
        tag[i].index=i; //设置对象的INDEX属性，方便下面调用 
        tag[i].onclick = function() { 
        for(var n=0; n<len; n++) {
        tag[n].className="";
        content[n].style.display="none"; 
       }
       tag[this.index].className = "current"; //className属性可以设置和返回元素的class属性
       content[this.index].style.display = "block";
       }
     }
</script>
</html>
