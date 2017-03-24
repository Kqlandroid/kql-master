<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8" />
	<title>GFashion - Responsive e-commerce HTML Template</title>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Favorite Icons -->
	<link rel="icon" href="img/favicon/favicon.html" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/apple-touch-icon-144x144-precomposed.html">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/apple-touch-icon-72x72-precomposed.html">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/apple-touch-icon-precomposed.html">
	<!-- // Favorite Icons -->
	
	<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	
	<!-- GENERAL CSS FILES -->
	<link rel="stylesheet" href="css/minified.css">
	<!-- // GENERAL CSS FILES -->
	
	<!--[if IE 8]>
		<script src="js/respond.min.js"></script>
		<script src="js/selectivizr-min.js"></script>
	<![endif]-->
	<!--
	<script src="js/jquery.min.js"></script>
	-->
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');</script>
	<script src="js/modernizr.min.js"></script>	
	<!-- PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/innerpage.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
    <title>My JSP 'Trading Center.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  	<!-- PAGE WRAPPER -->
<div id="page-wrapper">

	<!-- SITE HEADER -->
	<header id="site-header" role="banner">
		<!-- 头部  TOP -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-7">
						<!-- CONTACT INFO -->
						<div class="contact-info">
							<i class="iconfont-headphones round-icon"></i>
							<strong>+444 (100) 1234</strong>
							<span>(Mon- Fri: 09.00 - 21.00)</span>
							</div>
						<!-- // CONTACT INFO -->
					</div>
					<div class="col-xs-12 col-sm-6 col-md-5">
						<ul class="actions unstyled clearfix">
							<li>
								<!-- SEARCH BOX -->
								<div class="search-box">
									<form action="#" method="post">
										<div class="input-iconed prepend">
											<button class="input-icon"><i class="iconfont-search"></i></button>
											<label for="input-search" class="placeholder">请输入任意关键字...</label>
											<input type="text" name="q" id="input-search" class="round-input full-width" required />
										</div>
									</form>
								</div>
								<!-- // SEARCH BOX -->
							</li>
							<li data-toggle="sub-header" data-target="#sub-social">
								<!-- SOCIAL ICONS -->
								<a href="javascript:void(0);" id="social-icons">
									<i class="iconfont-share round-icon"></i>
								</a>
								
								<div id="sub-social" class="sub-header">
									<ul class="social-list unstyled text-center">
										<li></li>
										<li></li>
										<li></li>
										<li></li>
										<li>&nbsp;</li>
									</ul>
								</div>
								<!-- // SOCIAL ICONS -->
							</li>
							
							
							<li data-toggle="sub-header" data-target="#sub-cart">
								<!-- SHOPPING CART -->
								<a href="javascript:void(0);" id="total-cart">
									<i class="iconfont-shopping-cart round-icon"></i>
								</a>
								
								<div id="sub-cart" class="sub-header">
									<div class="cart-header">
										<span>Your cart is currently empty.</span>
										<small><a href="Shopping.jsp">(See All)</a></small>
									</div>
									<ul class="cart-items product-medialist unstyled clearfix"></ul>
									<div class="cart-footer">
										<div class="cart-total clearfix">
											<span class="pull-left uppercase">Total</span>
											<span class="pull-right total">$ 0</span>
										</div>
										<div class="text-right">
											<a href="Shopping.jsp" class="btn btn-default btn-round view-cart">View Cart</a>
										</div>
									</div>
								</div>
								<!-- // SHOPPING CART -->
							</li>
						</ul>
					</div>
				</div>
			</div>
			
			<!-- ADD TO CART MESSAGE -->
			<div class="cart-notification">
				<ul class="unstyled"></ul>
			</div>
			<!-- // ADD TO CART MESSAGE -->
		</div>
		<!-- // 头部  TOP -->
		<!-- 标题 -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">
						<div class="center-xs">
							<!-- CURRENCY -->
							<ul class="option-list unstyled">
								<li class="active"><a href="#" data-toggle="tooltip" title="USD - US Dollar">$</a></li>
								<li><a href="#" data-toggle="tooltip" title="GBP - British Pound">£</a></li>
								<li><a href="#" data-toggle="tooltip" title="EUR - Euro">€</a></li>
							</ul>
							<!-- // CURRENCY -->
							<!-- LANGUAGES -->
							<ul class="option-list unstyled">
								<li class="active"><a href="#" data-toggle="tooltip" title="English">EN</a></li>
								<li><a href="#" data-toggle="tooltip" title="French">FR</a></li>
								<li><a href="#" data-toggle="tooltip" title="Deutsch">DE</a></li>
							</ul>
							<!-- // LANGUAGES -->
						</div>
						<div class="clearfix"></div>
						<!-- USER RELATED MENU -->
						<nav id="tiny-menu" class="clearfix">
							<ul class="user-menu">
								<li><a href="Trading Center.jsp">我的账户中心</a></li>
								<li><a href="#">充值</a></li>
								<li><a href="login.jsp">登录</a></li>
								<li><a href="enroll.jsp">注册</a></li>
							</ul>
						</nav>
						<!-- // USER RELATED MENU -->
					</div>
					<!-- // CURRENCY / LANGUAGE / USER MENU -->
					<!-- SITE LOGO -->
					<div class="logo-wrapper">
						<a href="index-2.html" class="logo" title="GFashion - Responsive e-commerce HTML Template">
							<img src="img/logo.png" alt="GFashion - Responsive e-commerce HTML Template" />
						</a>
					</div>
					<!-- // SITE LOGO -->
					<!-- SITE NAVIGATION MENU -->
					<nav id="site-menu" role="navigation">
						<ul class="main-menu hidden-sm hidden-xs">
							<li class="active">
								<a href="index.jsp">首页</a>
							</li>
							<li>
								<a href="saleSQLservlet">交易中心</a>
							</li>
							<li>
								<a href="saleSQLservlet">交易分类</a>
								
								<!-- MEGA MENU -->
								<div class="mega-menu" data-col-lg="9" data-col-md="12">
									<div class="row">
									
										<div class="col-md-3">
											<h4 class="menu-title">网络游戏</h4>
											<ul class="mega-sub">
												<li><a href="saleSQLservlet">地下城与勇士</a></li>
												<li><a href="saleSQLservlet">天涯明月刀</a></li>
												<li><a href="saleSQLservlet">魔兽世界</a></li>
												<li><a href="saleSQLservlet">剑灵</a></li>
												<li><a href="saleSQLservlet">疾风之刃</a></li>
												<li><a href="saleSQLservlet">勇者大冒险</a></li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<h4 class="menu-title">网页游戏</h4>
											<ul class="mega-sub">
												<li><a href="saleSQLservlet">大天使之剑</a></li>
												<li><a href="saleSQLservlet">传奇霸业</a></li>
												<li><a href="saleSQLservlet">苍穹变</a></li>
												<li><a href="saleSQLservlet">三国杀</a></li>
												<li><a href="saleSQLservlet">傲剑绿色版</a></li>
												<li><a href="saleSQLservlet">斩仙</a></li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<h4 class="menu-title">卡类商品</h4>
											<ul class="mega-sub">
												<li><a href="saleSQLservlet">充值中心</a></li>
												<li><a href="saleSQLservlet">诛仙3</a></li>
												<li><a href="saleSQLservlet">魔兽世界</a></li>
												<li><a href="saleSQLservlet">DNF</a></li>
												<li><a href="saleSQLservlet">问道</a></li>
												<li><a href="saleSQLservlet">Y币充值</a></li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<div class="carousel slide m-b" data-ride="carousel">
												<div class="carousel-inner">
													<div class="item active">
														<img src="images/men/slide1.jpg" alt="" />
													</div>
													<div class="item">
														<img src="images/men/slide2.jpg" alt="" />
													</div>
												</div>
											</div>
											<h5 class="text-semibold uppercase m-b-sm">Featured Products</h5>
											<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque.</p>
											<a href="saleSQLservlet" class="btn btn-default btn-round">Go to Shop →</a>
										</div>
										
									</div>
								</div>
								<!-- // MEGA MENU -->
								
							</li>
							<li>
								<a href="components.html">待开放</a>
							</li>
							<li>
								<a href="store-locator.html">待开放</a>
							</li>
							<li>
								<a href="contact-us.html">待开放</a>
							</li>
							<li>
								<a href="#">Buy Me!</a>
							</li>
						</ul>
						
						<!-- MOBILE MENU -->
						<div id="mobile-menu" class="dl-menuwrapper visible-xs visible-sm">
							<button class="dl-trigger"><i class="iconfont-reorder round-icon"></i></button>
							<ul class="dl-menu">
								<li class="active">
									<a href="javsacript:void(0);">Home</a>
								</li>
								<li>
									<a href="javsacript:void(0);">Women</a>
								</li>
								<li>
									<a href="javsacript:void(0);">Men</a>
									
									<ul class="dl-submenu">
										<li>
											<a href="saleSQLservlet">Clothing</a>
											<ul class="dl-submenu">
												<li><a href="saleSQLservlet">Casual Wear</a></li>
												<li><a href="saleSQLservlet">Evening Wear</a></li>
												<li><a href="saleSQLservlet">Formal Attire</a></li>
												<li><a href="saleSQLservlet">Womens Jeans</a></li>
												<li><a href="saleSQLservlet">Mens Jeans</a></li>
												<li><a href="saleSQLservlet">Fall Styles</a></li>
											</ul>
										</li>
										<li>
											<a href="saleSQLservlet">Accessories</a>
											<ul class="dl-submenu">
												<li><a href="saleSQLservlet">Casual Wear</a></li>
												<li><a href="saleSQLservlet">Evening Wear</a></li>
												<li><a href="saleSQLservlet">Formal Attire</a></li>
												<li><a href="saleSQLservlet">Womens Jeans</a></li>
												<li><a href="saleSQLservlet">Mens Jeans</a></li>
												<li><a href="saleSQLservlet">Fall Styles</a></li>
											</ul>
										</li>
										<li>
											<a href="saleSQLservlet">Brands</a>
											<ul class="dl-submenu">
												<li><a href="saleSQLservlet">Casual Wear</a></li>
												<li><a href="saleSQLservlet">Evening Wear</a></li>
												<li><a href="saleSQLservlet">Formal Attire</a></li>
												<li><a href="saleSQLservlet">Womens Jeans</a></li>
												<li><a href="saleSQLservlet">Mens Jeans</a></li>
												<li><a href="saleSQLservlet">Fall Styles</a></li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						<!-- // MOBILE MENU -->

					</nav>
					<!-- // SITE NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER -->
		</header>
		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc unstyled clearfix">
						<li><a href="#">购物车</a></li>
						<li class="active">买家中心</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
		
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">	
		<span style="padding-left: 900px; font-size: 15px;">第${pageYellow.pageNumber}页</span>
							  <span style="font-size: 15px; padding-left: 20px;">共${pageYellow.totalPage}页</span>
						     <a style="font-size: 15px;padding-left: 20px;" href="yellowServlet?action=page&pageNumber=1&pageSize=3" >首页</a>
						     <a style="font-size: 15px;padding-left: 20px;" href="yellowServlet?action=page&pageNumber=${pageYellow.pageNumber-1}&pageSize=3" >上一页</a>
						     <a style="font-size: 15px;padding-left: 20px;" href="yellowServlet?action=page&pageNumber=${pageYellow.pageNumber+1}&pageSize=3" >下一页</a>
						     <a style="font-size: 15px;padding-left: 20px;" href="yellowServlet?action=page&pageNumber=${pageYellow.totalPage}&pageSize=3" >尾页</a>					 
					<div class="container">
										
					 <thead>
					 
							<tr>
								<th><span style="padding-left: 220px;">商品信息</span></th>
								<th style="width: 13%;"><span style="padding-left: 180px;">单价（元）</span></th>
								<th style="width: 13%;"><span style="padding-left: 52px;">数量</span></th>
								<th class="hidden-xs" style="width: 13%;"><span style="padding-left: 60px;">实付款(元)</span></th>
								<th class="hidden-xs" style="width: 13%;"><span style="padding-left: 100px;">交易日期</span></th>
								<th class="hidden-xs" style="width: 10%;"><span style="padding-left: 125px;">交易操作</span></th>
							</tr>
					 </thead>
					 <table class="tbl-cart">	
					<tbody>	
					<tr class="hide empty-cart">
								<td colspan="5">
									您最近未购买宝贝，赶紧行动吧！<a href="index.jsp" style="font-size: 12px; ">最新特惠</a>.
								</td>
							</tr>							
							<!-- 购物列表 -->
							<c:forEach var="go"  items="${pageYellow.newlist}" varStatus="status">			
							<tr>
								<td>
									<a class="entry-thumbnail" href="images/men/jacket/LOL-0014_1_t .jpg" data-toggle="lightbox">
										<img src="${go.sl_url}" alt="" />
									</a>									
									<a class="entry-title" href="product.jsp" style="width: 100px;"><span>${go.sl_title}</span></a>
								</td>
								<td><span class="danjia">￥${go.gy_price}</span></td>
								<td><span class="shuliang">${go.gy_sum}</span></td>
								<td class="jine"><strong class="text-bold row-total">￥${go.gy_price}</strong></td>
								<td><span class="riqi">${go.gy_time}</span></td>								
							<td class="hidden-xs"> <button type="button" class="close" aria-hidden="true" style="width: 50px;">${gain}</button></td>
							</tr>
						</c:forEach>
							<!-- 购物列表
					<td class="hidden-xs"><button type="button" class="btn btn-info">确认收获</button></td>
					<td class="hidden-xs">已收获 <button type="button" class="close" aria-hidden="true">×</button></td>
						-->		
										
						</tbody>						
					</table>
				</div>
		
		<!-- SITE FOOTER -->
	<footer class="page-footer">
		
		<!-- WIDGET AREA -->
		<div class="widgets">
		
			<!-- FIRST ROW -->
			<div class="section">
				<div class="container">
					<div class="row">
					
							<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">新手入门</h5>
								<div class="widget-content">
									<p><a href="#">诚信安全</a></p>
									<p><a href="#">用户注册</a></p>
									<p><a href="#">交易流程</a></p>
								</div>
							</section>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">充值提现</h5>
								<div class="widget-content">
									<p><a href="#">充值方式</a></p>
									<p><a href="#">如何提现</a></p>
									<p><a href="#">交易收费标准</a></p>
									<p><a href="#">提现收费标准</a></p>
									<br/>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">特色服务</h5>
								<div class="widget-content">
									<p><a href="#">保险服务</a></p>
									<p><a href="#">小额交易</a></p>
								</div>
							</section>
						</div>
						
						<div class="space40 visible-sm clearfix"></div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-menu">
								<h5 class="widget-title">客服中心</h5>
								<div class="widget-content">
									<ul class="menu iconed-menu unstyled">
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>XX通行证专线：0579-89185173</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>寄售专线：0579-89185151</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>担保专线：0579-89185111</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>游戏帐号专线：0579-89185129</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>点卡专线：0579-89185188</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>手机游戏专线：0579-89185155</a></li>
									</ul>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
			<!-- // FIRST ROW -->
			
			<!-- SECOND ROW -->
			<div class="section">
				<div class="container">
					<div class="row">
						
						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-menu">
								<h5 class="widget-title">Contact info</h5>
								<div class="widget-content">
									<ul class="menu iconed-list unstyled">
										<li>
											<span class="list-icon"><i class="round-icon iconfont-map-marker"></i></span>
											<div class="list-content">Lorem ipsum maecenas dapibus luctus euismod 133/2 New York City</div>
										</li>
										<li>
											<span class="list-icon"><i class="round-icon iconfont-phone"></i></span>
											<div class="list-content">(+00)1344356-675</div>
										</li>
										<li>
											<span class="list-icon"><i class="round-icon iconfont-envelope-alt"></i></span>
											<div class="list-content">support@themina.net</div>
										</li>
									</ul>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-6">
							<section class="widget widget-ads">
								<div class="widget-content">
									<div class="center-xs">
										<div class="ads">
											<a href="#">
												<img src="images/demo/images-footer.jpg" width="500px;" alt="" />
											</a>
											<div class="ads-caption bottom-right">
												<a href="#" class="btn btn-default btn-round">
													<i class="round-icon iconfont-angle-right"></i>
													<span class="inline-middle" >查看详情</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-subscription">
								<h5 class="widget-title">Newletter</h5>
								<div class="widget-content">
									<p>Subscribe to be the first to know about Sales, Events, and Exclusive Offers!</p>
									<form action="#" method="post">
										<div class="input-group">
											<label for="subscription-email" class="placeholder">Enter Your Email</label>
											<input type="email" id="subscription-email" name="email" class="form-control" required />
											<span class="input-group-btn">
												<button class="btn btn-primary">Subscribe</button>
											</span>
										</div>
									</form>
								</div>
							</section>
						</div>
						
					</div>
				</div>
			</div>
			<!-- // SECOND ROW -->
			
		</div>
		<!-- // WIDGET AREA -->
		
		<div class="footer-sub">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="footer-links center-xs clearfix">
							<ul class="unstyled">
								<li><a href="#">关于我们</a></li>
								<li><a href="#">合作伙伴</a></li>
								<li><a href="#">合作联系</a></li>
								<li><a href="#">隐私保护</a></li>
							</ul>
						</div>
						<div class="space10"></div>
						<div class="copyright center-xs">
							<p>Copyright © 2002-2015 5173.com  <a href="#">（金华比奇网络技术有限公司）</a> 【网络文化经营许可证】 版权所有ICP证：浙B2-20090127 浙网文
							    <a href="#">[2013]0619-067号</a>. All Rights Reserved.
							    <a href="#"><img src="img/visacard.png"  alt="" width="40" /></a>
								<a href="#"><img src="img/mastercard.png" alt="" width="40" /></a>
								<a href="#"><img src="img/paypal.png" alt="" width="40" /></a>
							    </p>
								
						</div>
					</div>
					
					<div class="space40 visible-xs"></div>
					
					
				</div>
			</div>
		</div>
		
	</footer>
	<!-- // SITE FOOTER -->
		
</div>
<!-- // PAGE WRAPPER -->


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27646173-3', 'themina.net');
  ga('send', 'pageview');

</script>
	<!-- Particular Page Javascripts -->
	<script src="js/products.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- // Particular Page Javascripts -->
	
</body>
</html>>