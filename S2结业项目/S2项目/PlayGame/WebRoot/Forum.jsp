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
    
    <title>My JSP 'Forum.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	<link rel="stylesheet" href="css/jquery.nouislider.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/innerpage.css">
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
	
	
	<!-- meta -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
		
		<!-- google fonts -->
		<link href='http://fonts.useso.com/css?family=Raleway:500,300' rel='stylesheet' type='text/css'>
		<link rel='stylesheet' href='http://fonts.useso.com/css?family=PT+Sans'>
		<link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="http://fonts.useso.com/css?family=Droid+Serif:regular,bold"/>
		
		<!-- css -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/style.css" media="screen"/>
  </head>
  
  <body class="product-single">
			
	<!-- PAGE WRAPPER -->
<div id="page-wrapper">

	<!-- SITE HEADER -->
	<header id="site-header" role="banner">
		<!-- HEADER TOP -->
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
										<li><a href="#"><i class="iconfont-facebook round-icon"></i></a></li>
										<li><a href="#"><i class="iconfont-twitter round-icon"></i></a></li>
										<li><a href="#"><i class="iconfont-google-plus round-icon"></i></a></li>
										<li><a href="#"><i class="iconfont-pinterest round-icon"></i></a></li>
										<li><a href="#"><i class="iconfont-rss round-icon"></i></a></li>
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
		<!-- // HEADER TOP -->
		<!-- MAIN HEADER -->
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
							<c:if test="${admin_name!=null}"><li>${admin_name} 欢迎您：</li></c:if>
								<li><a href="Trading Center.jsp">我的账户中心</a></li>
								<li><a href="Recharge.jsp">充值</a></li>
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
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=3">地下城与勇士</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=1">英雄联盟</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=2">剑灵</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=4">天龙八部</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=5">御龙在天</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=6">梦幻西游</a></li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<h4 class="menu-title">网页游戏</h4>
											<ul class="mega-sub">
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=8">大天使之剑</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=9">传奇霸业</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=10">黑暗之光</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=11">秦时明月</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=12">火影忍者</a></li>
												<li><a href="saleSQLservlet?action=getAllTwo&gameid=13">热血海贼王</a></li>
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
													<img src="images/men/jacket/LOL-0014_1_t .jpg" alt="" />
													</div>
													<div class="item">
														<img src="images/women/basic/jl-0014_1_t.jpg" alt="" />
													</div>
												</div>
											</div>
											<h5 class="text-semibold uppercase m-b-sm">Featured Products</h5>
											<p>限时热卖游戏金币,限时热卖手游点卷,限时热卖各类游戏账户 限时 特卖 .</p>
											<a href="saleSQLservlet" class="btn btn-default btn-round">点击进去 →</a>
										</div>
										
									</div>
								</div>
								<!-- // MEGA MENU -->
								
							</li>
							<li>
								<a href="ADServlet?action=getAll">购物论坛</a>
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
											<a href="Center.jsp">Clothing</a>
											<ul class="dl-submenu">
												<li><a href="Center.jsp">Casual Wear</a></li>
												<li><a href="Center.jsp">Evening Wear</a></li>
												<li><a href="Center.jsp">Formal Attire</a></li>
												<li><a href="Center.jsp">Womens Jeans</a></li>
												<li><a href="Center.jsp">Mens Jeans</a></li>
												<li><a href="Center.jsp">Fall Styles</a></li>
											</ul>
										</li>
										<li>
											<a href="Center.jsp">Accessories</a>
											<ul class="dl-submenu">
												<li><a href="Center.jsp">Casual Wear</a></li>
												<li><a href="Center.jsp">Evening Wear</a></li>
												<li><a href="Center.jsp">Formal Attire</a></li>
												<li><a href="Center.jsp">Womens Jeans</a></li>
												<li><a href="Center.jsp">Mens Jeans</a></li>
												<li><a href="Center.jsp">Fall Styles</a></li>
											</ul>
										</li>
										<li>
											<a href="Center.jsp">Brands</a>
											<ul class="dl-submenu">
												<li><a href="Center.jsp">Casual Wear</a></li>
												<li><a href="Center.jsp">Evening Wear</a></li>
												<li><a href="Center.jsp">Formal Attire</a></li>
												<li><a href="Center.jsp">Womens Jeans</a></li>
												<li><a href="Center.jsp">Mens Jeans</a></li>
												<li><a href="Center.jsp">Fall Styles</a></li>
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
	<!-- // SITE HEADER -->
	
	
		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index-2.html">论坛</a></li>
						<li class="active">论坛中心</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
		
				<div class="container portfolio-sec">
		
						<div class="row">
						<c:forEach var="go" items="${ad}">
							<div class="col-sm-4">
								<a href="#" class="recent-work" style="background-image:url(${go.ad_url})">
									<span class="btn btn-o-white">${go.ad_name}</span>
								</a>
							</div>
							</c:forEach>
						</div>						
					
				</div>
			</div>
			
  </body>
</html>
