<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set scope="page" var="url" value="${pageContext.request.contextPath}"></c:set>
<% String str;
 String user=request.getSession().getAttribute("user").toString();
  if(user.equals("")){
	str="匿名评论";
	}else{
	str=user;
	}
	request.setAttribute("str",str);
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/bookinfo.css">
	<link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.css">
	<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
	<script type="text/javascript" src="js/bookinfo.js"></script>
	<script>
		$(function(){
		    
		 /*   setInterval(function(){
		     	 var data=new Date();
		     	 $("#pinglun .timer").html(data.toLocaleString());
		     	},1000
		     );  */
			//$("#pinglun .timer").html(data.toLocaleString());
		});
	
		var iBound = true;
		function openDiv(){
			/* $("#write").toggle(function(){
				$("#write").show()});
				
				$("#sub").toggle(function(){
				$("#write").show});
				  */
				 var aEL = document.getElementById("oDiv").getElementsByTagName("*");
     if(iBound){
         
        for(var i = 0;i<aEL.length;i++){
            aEL[i].style.display="none";
        }
        iBound = false;
    }else{
        for(var i = 0;i<aEL.length;i++){
            aEL[i].style.display="block";
        }
        iBound = true;
    }
      
  }
		
		function fabiao(){
			var b=$("#pinglun .star").html();
			console.debug(b);
			var con=$("#write").val();//文本框是用val()来获取值 ，容器是用html(),text();
			console.debug(con);
			//var mytime=$("#pinglun .timer").html();
			var nickname=$("#nickname").val();
			$("#pinglun").prepend("<div style='text-align:left'>"+b+"</div>"+"<div style='text-align:left'>"+
			"</div>"+"<div style='text-align:left;color:#666'>"+con+"</div>"
			+"<div style='color:#646464;text-align:left'>"+new Date().toLocaleString()+"&emsp;"+nickname+"</div>");
		}
	</script>

  </head>
  
 <body onload="showBook()"> 
    <!--头部-->
    <div id="header">
    <div class="header-title"><img class="imglog" src="img/logo.jpg">
    <img class="icon" src="img/icon_count.png">
    <font style="color:red">${user}</font>欢迎光临当当！</label>
<!--     <label>欢迎光临当当，请<a href="login.html">登录</a>成为&nbsp;会员</label> -->
    <div class="title">
    <a href="#">尾品汇</a>
    <a href="#">当当优品</a>
    <a href="#">数字馆</a>
    <a href="#">都看阅器</a>
    </div>
    </div>
    <div class="header-middle">
    <a href="${url}/index.jsp">首页&emsp;&emsp;</a>
    <a href="#">图书&emsp;&emsp;</a>
    <a href="#">音像&emsp;&emsp;</a>
    <a href="#">童装&emsp;&emsp;</a>
    <a href="#">服装&emsp;&emsp;</a>
    <a href="#">鞋靴&emsp;&emsp;</a>
    <a href="#">运动&emsp;&emsp;</a>
    <a href="#">箱包&emsp;&emsp;</a>
    <a href="#">美妆&emsp;&emsp;</a>
    <a href="#">珠宝&emsp;&emsp;</a>
    <a href="#">家居&emsp;&emsp;</a>
    <a href="#">食品&emsp;&emsp;</a>
    <a href="#">酒&emsp;&emsp;</a>
    <a href="#">手机&emsp;&emsp;</a>
    <a href="#">数码&emsp;&emsp;</a>
    <a href="#">电脑&emsp;&emsp;</a>
    <a href="#">家电</a>
    </div>
    <img src="img/banner.png">

   <!-- 	 内容 -->
   	   <div id="content">
   	   		<!-- 左边书籍信息 -->
   	   		<img src="img/book.png"/>
   	   		<div class="books">
   	   		<ul>
   	   			<li><a href="#" style="color:black;weight:bold">图书></a></li>
   	   			<li><a href="#" style="color:#646464">小说></a></li>
   	   			<li><a href="#" style="color:#646464">情感></a></li>
   	   			<li><a href="#" style="color:#646464">其他></a></li>
   	   			<li><a href="#" style="color:#646464">偷影子的人</a></li>
   	   		</ul>
   	   		</div>
   	   		<form action="${url}/shoppingcarservlet" method="post">
   	   		<div id="navbook">
   	   			<input type="hidden" name="book_id" value="${bookinfo.book_id}">
   	   			<img src="${bookinfo.book_img}">
   	   			<input type="hidden" name="book_img" value="${bookinfo.book_img}">
   	   			<div style="color:gray;width:150px;height:200px;border:0px solid green;display:inline-block">
   	   			</div>
   	   			<div style="color:gray;width:150px;height:200px;border:0px solid green;display:inline-block">
   	   			</div>
   	   		</div>
   	   		<!-- 右边书籍信息 -->
   	   		<div id="bookinfo">
   	   		     <h3>${bookinfo.book_name}</h3> 
   	   		     <input type="hidden" name="book_name" value="${bookinfo.book_name}">
   	   			${bookinfo.book_info}
   	   			 <input type="hidden" name="book_info" value="${bookinfo.book_info}">
   	   			 <font>${bookinfo.book_class} 每满100减40 上不封顶</font><br><br>
   	   			 <input type="hidden" name="book_class" value="${bookinfo.book_class}">
   	   			<p><font style="color:gray;font-size:14px"> 作者:<a href="#">${bookinfo.book_autor}</a>
   	   			 <input type="hidden" name="book_autor" value="${bookinfo.book_autor}">&emsp;&emsp;出版社:<a href="#">${bookinfo.book_publish}
   	   			  <input type="hidden" name="book_publish" value="${bookinfo.book_publish}"></a>
   	   			&emsp;&emsp;时间:${bookinfo.book_publishtime}
   	   			<input type="hidden" name="book_publishtime" value="${bookinfo.book_publishtime}">
                                                在<a href="#">当当小说榜</a>排名13位&emsp;&emsp;
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star">
                </span><span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <a href="#">815903</a>条评论 </font>
              <span class="pingbtn"><a href="#">我要评分</a></span></p>
               	<span class="panel">当当价   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
               	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;电子书价<br>
               	  <font style="color:red;font-size:23px">¥${bookinfo.book_price}</font>
               	  <input type="hidden" name="book_price" value="${bookinfo.book_price}">
               	  <font style="color:red;font-size:12px">(8.9折)</font>定价 <font style="text-decoration: line-through;color:#969696;"
               	  >¥29.80</font> &emsp;&emsp;&emsp;<a href="#">￥<font style="font-size:23px">${bookinfo.book_eprice}</font></a></span>
               	  <input type="hidden" name="book_eprice" value="${bookinfo.book_eprice}">
               	  促&emsp;销 &emsp;<span class="bookbuy">电子书加价购</span>&emsp;<label><input type="checkbox">+1.4元换购《人间失格(电子书)》作者：【日】太宰治</label>
               	 &nbsp;&nbsp;&nbsp;&emsp; &emsp;&emsp; <span class="bookbuy">满额减</span>&emsp;每满¥100减¥40  <font style="color:gray"><a href="#" style="color:gray">详情</a></font><br> 
               	 &nbsp;&nbsp;&nbsp;&nbsp;&emsp; &emsp;&emsp;<span class="bookbuy">加价购</span>&emsp;购买本商品可加价换购以下任意一件商品
               	 <input type="button" value="选购商品" id="selbtn" onclick="showImg()"> 
               	  <div class="picshow">
               	 <img alt="###" src="img/1.png" id="img1" 
               	 onmouseover="stopShowImg()" onmouseout="showImg()"/> 
               	  </div>
               	  <sapn>
               	  	<select name="num">
               	  	<%for(int i=1;i<20;i++){ %>
               	  		<option value="<%=i%>"><%=i%></option>
               	  		<%}%>
               	  		
               	  	</select>
               	  </sapn>
               	  配送至&emsp;&emsp; <select id="myprovice">
               	  	   <option>请选择</option>
                       <option value="bj">北京</option>
                       <option value="sh">上海</option>
                       <option value="tj">天津</option>
                       <option value="cq">重庆</option>
                       <option value="hn">河南</option>
                       <option value="hlj">黑龙江</option>
               	  </select>
               	  <select id="mycity">
               	  	<option>请选择</option>
               	 </select>	 <br>
               	  <input type="submit" class="btn1" value="加入购物车">
               	  <a href="gobuy.html"><button class="btn2">立即购买</button></a>
               	  <button class="btn3">购买电子书</button>
               	<div style="color:gray;width:500px;height:50px;border:0px solid green;display:inline-block"></div>
             
   	   		</div> 
   	   		  	</form>
   	   		 <!-- 下边图片轮播区 -->
   	   		
   	   		 <div id="books">
   	   		 	<img alt="###" src="books/1.png" id="bk1"
               	  onmouseover="stopShow()" onmouseout="showBook()"/>
               	  <ul>
               	  	<li id="li1"><a href="#">1</a></li>
               	  	<li id="li2"><a href="#">2</a></li>
               	  	<li id="li3"><a href="#">3</a></li>
               	  	<li id="li4"><a href="#">4</a></li>
               	  	<li id="li5"><a href="#">5</a></li>
               	  	<li id="li6"><a href="#">6</a></li>
               	  	<li id="li7"><a href="#">7</a></li>
               	  	<li id="li8"><a href="#">8</a></li>
               	  	<li id="li9"><a href="#">9</a></li>
               	  	<li id="li10"><a href="#">10</a></li>
               	  	
               	  </ul>
   	   		 </div>
   	   		
   	     </div>
   	     	<div id="pinglun1">
   	       <span><button class="pbt" onclick="openDiv()">写评论赚积分</button></span>
   	   		<div class="ptitle"><ul>
   	   			<li><a href="#"><font style="color:red">全部(809900)</font></a></li>
   	   			<li><a href="#">好评(799990)</a></li>
   	   			<li><a href="#">中评(2926)</a></li>
   	   			<li><a href="#">差评(327)</a></li>
   	   			<li><a href="#">晒图(1155)</a></li>
   	   		</ul>
   	   		</div>
   	   			<!-- 发表评论区 -->
   	   			<div id="oDiv">
   	   			<!-- 解决表单刷新重复提交 -->
   	   			<%
   	   				//生成随机数
   	   				String token=UUID.randomUUID().toString();
   	   				//把随机数放在session中
   	   				request.getSession().setAttribute("TOKEN_IN_SESSION", token);
   	   			 %>
   	   			<form action="${url}/comment" method="post">
   	   			<!-- 隐藏域传值  -->
   	   			<input type="hidden" name="token" value="${sessionScope.TOKEN_IN_SESSION}">
   	   			
   	   			<input type="hidden" name="book_id" value="${bookinfo.book_id}">
   	   			<p style="text-align:left;display:none"><textarea id="write" name="comment" rows="3" cols="152" placeholder="请输入评论"></textarea></p>
   	   			<p style="text-align:left;display:none"><input type="text" id="nickname" name="user" value="${str}">
   	   			<input type="text" name="timer" value="<%=new java.util.Date().toLocaleString()%>">
   	   			<input type="text" name="user_id" value="${user_id}">
   	   		   <!--  <input type="button" value="发表评论" id="sub" style="display:none" onclick="fabiao()"></p> -->
   	   		     <input type="submit" value="发表评论" id="sub" style="display:none"></p>
   	   		    </form>
   	   			</div>
   	   		</div>	
   	   			
   	        <!-- 下边追评区 -->
   	   		   <div id="pinglun" align="center" >
  <!--  	   		  <div class="star"><span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  </div>
   	   		 <div class="pingyu">
   	   		   很喜欢，突然很想打一大通电话，给童年的玩伴，少年的初恋，壮年的伴侣，桃李满园的老师，
   	   		   已经赋闲在家的父母……我们活得浑浑噩噩，
   	   		   而时间却又走得太快，如果在你的心底还有对他们的爱，请现在就让他们知道。
   	   		  </div>
   	   		  <div style="color:#646464;text-align:left">2017/10/17 下午8:19:36 西门吹雪</div> -->
   	   		<!--   <div class="timer">
   	   		  </div>  -->
   	   		  
   	   		  
   	   		<%--   <c:forEach></c:forEach> --%>
   	   		<c:forEach items="${comments}" var="comment">
   	   		  <div class="star"><span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  		<span style="display:inline-block;
		color:#ff9c43;border:0" class="glyphicon glyphicon-star"></span>
   	   		  </div>
   	   		 <div class="pingyu">
   	   		${comment.comment_context}
   	   		  </div>
   	   		  <div style="color:#646464;text-align:left">${comment.comment_time}&emsp;&emsp;&emsp;&emsp;${comment.user_id}</div>
   	   		  
   	   		  </c:forEach>
   	   		 </div>
   	   		
   	  <!--  尾部 -->
   <div id="footer"><font class="font-footer">Copyright(C)当当网2004-2013，All Rights Reserved<img align="center" src="img/validate.gif">
   京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
   </div> 
   </body>
</html>
