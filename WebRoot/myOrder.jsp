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
    
    <title>My JSP 'myOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <script type="text/javascript" src="bookstrap/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bookstrap/bootstrap/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/myOrder.css">
    <link rel="stylesheet" type="text/css" href="bookstrap/bootstrap/css/bootstrap.min.css">
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
     <script type="text/javascript" src="bookstrap/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bookstrap/bootstrap/js/jquery.min.js"></script>
	
  </head>
  
   <body>
    	<!-- 头部 -->
  <div id="header">
    <div id="operator"><span class="addr">送至：厦门</span>
 <ul>
  <li><a href="${url}/publish.jsp">客户服务</a></li>
  <li><a href="myOrder.html">企业采购</a>|</li>
  <li><a href="myOrder.html">小说投稿</a>|</li>
  <li><a href="myOrder.html">我的当当</a>|</li>
  <li><a href="myOrder.html">我的云书房</a>|</li>
  <li><a href="${url}/login.jsp"><font style="color:#646464">[退出]</font></a>|</li>
  <li><font style="color:red">Hi,<a href="#" style="color:red">${user}</a></font></li>
  </ul>
  </div>  
  </div>
   <!-- 购物车图片区 -->
 	  <div id="car">
 	  	<img class="dang" src="img/dang.png">
 	  	<div  class="two">
 	  	<img src="img/two.png">
 	  	<p><a href="">APP首单减10元</a></p>
 	  	</div>
 	  	<!-- 搜索框 -->
 	  	
  			<div class="form-group">
  			<form role="form">
    		<input type="text" class="form-control" id="name" placeholder="请输入名称">
    		<!-- 搜素按钮 -->
    		<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle btn-lg" 
			data-toggle="dropdown" style="width:108px;height:44px;border:0;background-color:lightgray;border-radius:0">
			全部分类 <span class="caret"></span>
			</button>
				<ul class="dropdown-menu" role="menu">
				<li><a href="#">服装</a></li>
				<li><a href="#">&emsp;&emsp;&emsp;鞋  </a></li>
				<li><a href="#">箱包皮具</a></li>
				<li><a href="#">手表饰品</a></li>
				<li><a href="#">运动户外</a></li>
				<li><a href="#">食品</a></li>
				<li><a href="#">手机通讯</a></li>
				<li><a href="#">数码影音</a></li>
				<li><a href="#">电脑办公</a></li>
				<li><a href="#">大家电</a></li>
				</ul>
				</div>
				<input type="button" class="btnimg">
    		<div class="search">热搜：
    		<a href="#">汇聚金秋</a>&emsp;
    		<a href="#">喀伦坡之狼</a>&emsp;
    		<a href="#">童装99元2件</a>&emsp;
    		<a href="#">创意文具</a>&emsp;
    		<a href="#">满299件减200</a>&emsp;
    		<a href="#">尾品汇</a>&emsp;
    		&emsp;&emsp;&emsp;&emsp;&emsp;
    		<a href="#">高级搜索</a>
    		</div>
    		</form>
  			</div>
  			<span><input class="order" type="button" value="我的订单"></span>
  			<span><input class="cars" type="button" value="购物车"></span>
  			</div>
  			<!-- 导航 -->
  			<div id="nav_top">
  			<span class="btn">全部商品分类</span>
  			<ul>
  				<li><a href="#">尾品汇</a></li>
  				<li><a href="#">图书</a></li>
  				<li><a href="#">电子书</a></li>
  				<li><a href="#">网络文学</a></li>
  				<li><a href="#">服装</a></li>
  				<li><a href="#">运动服外</a></li>
  				<li><a href="#">孕婴童</a></li>
  				<li><a href="#">家居</a></li>
  				<li><a href="#">创意文具</a></li>
  				<li><a href="#">食品</a></li>
  				<li><a href="#">Apple</a></li>
  				<li><a href="#">电器城</a></li>
  			</ul>
  			</div>
  			<div id="nav_btn">
  				<ul>
  					<li><a href="#">图书畅销榜</a></li>
  					<li><a href="#">童书榜</a></li>
  					<li><a href="#">女装热卖</a></li>
  					<li><a href="#">男士服装</a></li>
  					<li><a href="#">童装</a></li>
  					<li><a href="#">运动户外</a></li>
  					<li><a href="#">凉鞋</a></li>
  					<li><a href="#">箱包皮具</a></li>
  					<li><a href="#">奶粉</a></li>
  					<li><a href="#">美妆</a></li>
  					<li><a href="#">生鲜</a></li>
  					<li><a href="#">玩具童装</a></li>
  					<li><a href="#">电子教育</a></li>
  				</ul>
  			</div>
 	<!--  左边导导航 -->
 	<div id="menu">
 		<span class="header"><img src="img/admin.png">我的当当</span>
 		<table border="0" >
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;我的交易</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="color:red">&emsp;我的订单</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">电子书</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;我的帐单</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;我的拍卖</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;参拍/获拍</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">我的保证金</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;我的收藏</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;商品收藏</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">店铺收藏</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;我的钱包</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;我的礼品卡</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">我的礼券</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;我的余额</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;我的积分</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;售后服务</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;申请/查询退换货</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">补开/合并发票</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;个人中心</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;个人信息</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">安全中心</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;收货地址</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;一键购买地址</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">邮件/短信订阅</a></td></tr>
 			
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#" style="font-size:14px"><img src="img/point.png">&nbsp;社区</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;评论/晒单</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">提问/回答</a></td></tr>
 			<tr><td align="center" style="width:200px; height: 35px;" valign="middle"><a href="#">&emsp;我的书架</a></td></tr>
 		</table>
 	</div>
 	<div id="connent">
 		<div class="con_top">
 			<ul>
 				<li><a href="#">待评价<font style="color:red">0</font></a></li>
 				<li><a href="#">待收货<font style="color:red">0</font></a></li>
 				<li><a href="#">待发货<font style="color:red">0</font></a></li>
 				<li><a href="#">待付款<font style="color:red">0</font></a></li>
 				<li><a href="#">全部订单</a></li>
 			</ul>
 			<input class="search" type="text" placeholder="商品名称/订单号/收货人姓名">
 			<input class="searchbtn" type="button" value="搜索">
 		</div>
 		<div class="space"></div>
 		<div class="space2"></div>
 		<div class="timer">
 			<ul>
 			<li>更早订单</li>
 			<li>2016年</li>
 			<li>2017年</li>
 			<li>90天内</li>
 			<li>30天内</li>
 			</ul>
 		</div>
 		<div class="orderinfo">
 			<h5>下单时间</h5><span class="ordertime"></span>
 		</div>
 		<span id="rubish" class="glyphicon glyphicon-trash">订单回收站</span>
 		<div id="conlogo">
 		<span>订单详情</span>
 		<span class="status">订单状态</span>
 		<span class="oper">操作</span>
 		</div>
 		<div id="content_mid">
 		<input type="checkbox">全选 
 		<a>合并支付</a>
 		</div>
 		<div id="tbody">
 		<img src="img/tbody.png">
 		</div>
 		<div id="cont-header">
 			<span>猜你喜欢</span>
 			<span>推广商品</span>
 			<span>24小时特惠</span>
 		</div>
 		<!-- 中间下部 -->
 		<div id="list">
 			<!--  一本书模型  -->
      <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="books/1.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.00元</a></h6>
			<p>浮生六记</p>
			<p>作者:沈复 著;诗人周公度 译</p>
	  </div>
	  <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="books/2.png">
  	     	</div>
  	   		<h6 style="color:red">￥19.50元</a></h6>
			<p>我不</p>
			<p>作者:大冰</p>
	  </div>
	  <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book3.png">
  	     	</div>
  	   		<h6 style="color:red">￥14.30元</a></h6>
			<p>偷影子的人</p>
			<p>作者:(法)马克·李维</p>
	  </div>
 		 <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book4.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.40元</a></h6>
			<p>摆渡人</p>
			<p>作者:[英]克莱儿·麦克福尔</p>
	  </div>
	   <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book5.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.00元</a></h6>
			<p>我在未来等你</p>
			<p>作者:刘同</p>
	  </div>
	   <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book6.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.00元</a></h6>
			<p>星星上的人</p>
			<p>作者:卡罗琳·帕克丝特</p>
	  </div>
	  
	   <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book4.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.40元</a></h6>
			<p>摆渡人</p>
			<p>作者:[英]克莱儿·麦克福尔</p>
	  </div>
	   <div class="item">
  		<div id="booksize">
  	   	<img alt="####" src="bookshopimg/book5.png">
  	     	</div>
  	   		<h6 style="color:red">￥23.00元</a></h6>
			<p>我在未来等你</p>
			<p>作者:刘同</p>
	  </div>
 		</div>
 	</div> 
 	<!-- 下部 -->
 	<div id="spce"><a href="#"><span><img src="bookshopimg/1.png">
 	<h4>正规渠道</h4><h4>正规品牌</h4>
 	</span></a>
 	<a href="#"><span><img src="bookshopimg/1.png">
 	<h4>放心购物</h4><h4>货物付款</h4>
 	</span></a>
 	<a href="#"><span><img src="bookshopimg/1.png">
 	<h4>625城市</h4><h4>次日达到</h4>
 	</span></a>
 	<a href="#"><span><img src="bookshopimg/1.png">
 	<h4>上门退换</h4><h4>购物无忧</h4>
 	</span></a>
 	</div>
 	<div class="addr">
 		<span>购物指南</span>
 		<span>支付方式</span>
 		<span>订单服务</span>
 		<span>配送方式</span>
 		<span>退换货</span>
 		<span>商家服务</span>
 	</div>
 	<div id="info1">
 			<h6><a href="#">购物流程</a></h6>
 			<h6><a href="#">发票制度</a></h6>
 			<h6><a href="#">帐户管理</a></h6>
 			<h6><a href="#">会员优惠</a></h6>
 	</div>
 	<div id="info2">
 			<h6><a href="#">货到付款</a></h6>
 			<h6><a href="#">网上支付</a></h6>
 			<h6><a href="#">礼品卡支付</a></h6>
 			<h6><a href="#">银行转帐</a></h6>
 	</div>
 	<div id="info3">
 			<h6><a href="#">订单配送查询</a></h6>
 			<h6><a href="#">订单状态说明</a></h6>
 			<h6><a href="#">自动取消订单</a></h6>
 			<h6><a href="#">自动修改订单</a></h6>
 	</div>
 	<div id="info4">
 			<h6><a href="#">配送范围免标准</a></h6>
 			<h6><a href="#">当日递/次日达</a></h6>
 			<h6><a href="#">订单自提</a></h6>
 			<h6><a href="#">验货与签收</a></h6>
 	</div>
 	<div id="info5">
 			<h6><a href="#">退货政策</a></h6>
 			<h6><a href="#">自助申请退换货</a></h6>
 			<h6><a href="#">退换货进度查询</a></h6>
 			<h6><a href="#">退款方式和时间</a></h6>
 	</div>
 	<div id="info6">
 			<h6><a href="#">商家中心</a></h6>
 			<h6><a href="#">运营服务</a></h6>
 			<h6><a href="#">加入尾品汇</a></h6>
 	</div>
 	<div style="border:1px solid lightgray;float:left;width:100%"></div>
 	<div id="ulsort">
 		<ul>
 		     <li><a href="#">热词搜索</a></li>
 		     <li><a href="#">官方Blog</a>&nbsp;&emsp;|</li>
 		     <li><a href="#">手机当当</a>&nbsp;&emsp;|</li>
 		    <li><a href="#">机构销售</a>&nbsp;&emsp;|</li>
 		    <li><a href="#">当当招商</a>&nbsp;&emsp;|</li>
 		    <li><a href="#">网站联盟</a>&nbsp;&emsp;|</li>
 		    <li><a href="#">诚聘英才</a>&nbsp;&emsp;|</li>
 		    <li><a href="#">公司简介</a>&nbsp;&emsp;|</li>
 		</ul>
 	</div>
 	<!--  尾部 -->
  <!-- <div id="hh"></div> -->
   <div id="footer"><font class="font-footer">Copyright(C)当当网2004-2013，All Rights Reserved<img align="center"src="img/validate.gif">
   京ICP证041189号出版物经营许可证 新出发京批字第直0673号</font>
   </div> 
  </body>
</html>
