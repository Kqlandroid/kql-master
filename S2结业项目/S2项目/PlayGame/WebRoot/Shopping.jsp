<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
										<span>您的车是空的。</span>
										<small><a href="Shopping.jsp">(See All)</a></small>
									</div>
									<ul class="cart-items product-medialist unstyled clearfix"></ul>
									<div class="cart-footer">
										<div class="cart-total clearfix">
											<span class="pull-left uppercase">总计：</span>
											<span class="pull-right total">￥ 0</span>
										</div>
										<div class="text-right">
											<a href="Shopping.jsp" class="btn btn-default btn-round view-cart">查看购物车</a>
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
							<c:if test="${admin_name!=null}"><li>${admin_name} 欢迎您：</li></c:if>
								<li><a href="yellowServlet?action=yellow">我的账户中心</a></li>
								<li><a href="Recharge.jsp">充值</a></li>		
								<c:if test="${admin_name==null}"><li><a href="login.jsp">登录</a><></c:if><c:if test="${admin_name!=null}"><li><a href="login.jsp">注销</a></c:if>
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
								<a href="saleSQLservlet?action=getAllTwo&gameid=3">交易分类</a>
								
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
											<h5 class="text-semibold uppercase m-b-sm">掌柜热卖</h5>
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
	<!-- // SITE HEADER -->
	
		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc unstyled clearfix">
						<li><a href="#">购物车</a></li>
						<li class="active">订单信息</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
		
		<!-- SITE MAIN CONTENT -->
		
		<main id="main-content" role="main">
				
			<section class="section">
				<div class="container">
					
					<table class="tbl-cart">
						<thead>
							<tr>
								<th>商品信息</th>
								<th style="width: 15%;">单价（元）</th>
								<th style="width: 15%;">数量</th>
								<th class="hidden-xs" style="width: 15%;">金额（元）</th>
								<th class="hidden-xs" style="width: 10%;">操作</th>
							</tr>
						</thead>
						
						<tbody id="pro_lists">
						
							<tr class="hide empty-cart">
								<td colspan="5">
									您的购物车还是空的，赶紧行动吧！<a href="saleSQLservlet">最新特惠</a>.
								</td>
							</tr>
						
							<!--  购物车默认值
							<tr>
								<td>
								
									<a class="entry-thumbnail" href="images/men/jacket/LOL-0014_1_t .jpg" data-toggle="lightbox">
										<img src="images/men/jacket/LOL-0014_1_t .jpg" alt="" />
									</a>
									<a class="entry-title" href="product.jsp">英雄联盟25元点卡 英雄联盟25元2500点券 LOL点卷在线自动充值</a>
								</td>
								<td><span class="unit-price">$50.00</span></td>
								<td>
									<div class="qty-btn-group">
										<button type="button" class="down"><i class="iconfont-caret-down inline-middle"></i></button>
										<input type="text" value="1" />
										<button type="button" class="up"><i class="iconfont-caret-up inline-middle"></i></button>
									</div>
								</td>
								<td class="hidden-xs"><strong class="text-bold row-total">$50.00</strong></td>
								<td class="hidden-xs"><button type="button" class="close" aria-hidden="true">×</button></td>
							</tr>
							购物车默认值 -->
						</tbody>
					</table>
					
					<div class="pull-left coupon m-b">
						<div class="input-group">
							<label for="apply-coupon" class="placeholder">请输入任意关键字...</label>
							<input type="text" id="apply-coupon" name="coupon" class="form-control" required />
							<span class="input-group-btn">
								<button class="btn btn-primary">搜索</button>
							</span>
						</div>
					</div>
					
					<div class="shopcart-total pull-right clearfix">
						<div class="cart-subtotal text-xs m-b-sm clearfix">
							<span class="pull-left">次总</span>
							<span class="pull-right">￥0</span>
						</div>
						<div class="cart-total text-bold m-b-lg clearfix">
							<span class="pull-left">合计:</span>
							<span id="zong" class="pull-right">￥0</span>
						</div>
						<div class="text-center">
						<!--结算-->
						<form  method="post" action="shoppingServel?action=shopping" >
							<input class="btn btn-round btn-default uppercase" type="submit" value="结算"  onClick="getTotal();" >
							<input id="id_proids" type="hidden" name="proids"/>
							<input id="id_pronums" type="hidden" name="pronums"/>
							<input id="id_zong" type="hidden" name="zong">
						</form>
					</div>
					
				</div>
				
			</section>
			

			<!-- RELATED PRODUCTS -->
			<section class="section visible-items-4">
				<div class="container">
					<div class="row">
						<header class="section-header clearfix col-sm-offset-3 col-sm-6">
							<h3 class="section-title">诚信名店每日上新</h3>
							<p class="section-teaser">【名店官方证】，绿色商品，安全迅速、邮寄交易，快速发货</p>
						</header>
						
						<div class="clearfix"></div>
						
						<!-- BEGIN CAROUSEL -->
						<div id="featured-products" class="add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">
						
							<div class="owl-controls clickable top">
								<div class="owl-buttons">
									<div class="owl-prev"><i class="iconfont-angle-left"></i></div>
									<div class="owl-next"><i class="iconfont-angle-right"></i></div>
								</div>
							</div>
							
							<div class="owl-carousel owl-theme" data-visible-items="4" data-navigation="true" data-lazyload="true" >
								<div class="product" data-product-id="1" >
									<div class="entry-media">
										<img data-src="images/women/LOL/lol_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=1" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">特惠</div>
												</li>
												<li>
													<a href="images/women/LOL/lol_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing1" />
												<div class="rateit" data-rateit-backingfld="#backing1" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">英雄联盟店铺</a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">￥ 350.00</s>
											<strong class="accent-color price">￥ 250.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">aaaa</a>
											<a href="#" class="pull-right">英雄联盟</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="2">
									<div class="entry-media">
										<img data-src="images/wangluo/dnf/dnf_fenlei_2.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=3" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangluo/dnf/dnf_fenlei_2.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing2" />
												<div class="rateit" data-rateit-backingfld="#backing2" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">地下城与勇士活动</a>
										</h5>
										<div class="entry-price">
											<strong class="price">￥ 350.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">aaaa</a>
											<a href="#" class="pull-right">地下城勇士</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="3">
									<div class="entry-media">
										<img data-src="images/wangluo/jl/jl_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=2" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">超值</div>
												</li>
												<li>
													<a href="images/wangluo/jl/jl_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing3" />
												<div class="rateit" data-rateit-backingfld="#backing3" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">剑灵 </a>
										</h5>
										<div class="entry-price">
											<strong class="price">￥ 50.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">Nancy</a>
											<a href="#" class="pull-right">剑灵</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="4">
									<div class="entry-media">
										<img data-src="images/wangluo/tlbb/tlbb_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=16" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangluo/tlbb/tlbb_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing4" />
												<div class="rateit" data-rateit-backingfld="#backing4" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">天龙八部永远的经典</a>
										</h5>
										<div class="entry-price">
											<strong class="price">￥ 40.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">Jake</a>
											<a href="#" class="pull-right">天龙八部</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="5">
									<div class="entry-media">
										<img data-src="images/wangluo/ylzt/ylzt_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=17" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">特惠</div>
												</li>
												<li>
													<a href="images/wangluo/ylzt/ylzt_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing5" />
												<div class="rateit" data-rateit-backingfld="#backing5" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">御龙在天</a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">$ 34.00</s>
											<strong class="accent-color price">$ 30.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">Lucky</a>
											<a href="#" class="pull-right">御龙在天</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="6">
									<div class="entry-media">
										<img data-src="images/wangluo/mhxy/mhxy_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=18" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangluo/mhxy/mhxy_fenlei_1.jpg" style="height: 10px" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing6" />
												<div class="rateit" data-rateit-backingfld="#backing6" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">梦幻西游</a>
										</h5>
										<div class="entry-price">
											<strong class="price">￥ 70.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">bdqn</a>
											<a href="#" class="pull-right">梦幻西游</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="7">
									<div class="entry-media">
										<img data-src="images/wangluo/sfcq/sfcq_fenlei_3.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=19" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">超值</div>
												</li>
												<li>
													<a href="images/wangluo/sfcq/sfcq_fenlei_3.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing7" />
												<div class="rateit" data-rateit-backingfld="#backing7" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">私服传奇</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 30.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">Flame</a>
											<a href="#" class="pull-right">私服传奇</a>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="8">
									<div class="entry-media">
										<img data-src="images/wangye/hazg/hazg_fenlei_2.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=22" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangye/hazg/hazg_fenlei_2.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing8" />
												<div class="rateit" data-rateit-backingfld="#backing8" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">黑暗之光</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 40.00</strong>
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">admin</a>
											<a href="#" class="pull-right">黑暗之光</a>
										</div>
									</div>
								</div>
							
							</div>
								
						</div>
						<!-- // END CAROUSEL -->
						
					</div>
				</div>
			</section>
			<!-- // RELATED PRODUCTS -->
			
		</main>
		<!-- // SITE MAIN CONTENT -->
		
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
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							facebook
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
								<h5 class="widget-title">联系方式</h5>
								<div class="widget-content">
									<ul class="menu iconed-list unstyled">
										<li>
												<span class="list-icon"><i class="round-icon text-sm iconfont-map-marker"></i></span>
												<div class="list-content">南京市雨花台区北大青鸟新中博T06</div>
											</li>
											<li>
												<span class="list-icon"><i class="round-icon text-sm iconfont-phone"></i></span>
												<div class="list-content">(+86)18552830958</div>
											</li>
											<li>
												<span class="list-icon"><i class="round-icon text-sm iconfont-envelope-alt"></i></span>
												<div class="list-content">649876712@qq.com</div>
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
												<img src="images/demo/images-footer.jpg" alt="" />
											</a>
											<div class="ads-caption bottom-right">
												<a href="#" class="btn btn-default btn-round">
													<i class="round-icon iconfont-angle-right"></i>
													<span class="inline-middle">查看详情</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-subscription">
								<h5 class="widget-title">订阅</h5>
								<div class="widget-content">
									<p>订阅是第一个知道的销售，活动和独家提供！!</p>
									<form action="#" method="post">
										<div class="input-group">
											<label for="subscription-email" class="placeholder">输入您的电子邮件</label>
											<input type="email" id="subscription-email" name="email" class="form-control" required />
											<span class="input-group-btn">
												<button class="btn btn-primary">订阅</button>
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
							    <a href="#"><img src="img/visacard.png" alt="" width="40" /></a>
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

<!-- Essential Javascripts -->
<script src="js/minified.js"></script>
<!-- // Essential Javascripts -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27646173-3', 'themina.net');
  ga('send', 'pageview');

</script>
	<!-- Particular Page Javascripts 
	<script src="js/products.js"></script>
	<script src="js/owl.carousel.js"></script>-->
	
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/products.js"></script>
	<script src="js/owl.carousel.js"></script>
	
	
	<!-- // Particular Page Javascripts -->
	<script type="text/javascript">
							var g_cookie;
							function getTotal(){
							
								var pro_ids = $("#pro_lists .prs .sl_id");
								var pro_nums = $("#pro_lists .prs .prsnum");
								var pro_ids_str  = "";
								var pro_nums_str  = "";
								for(var i=0;i<pro_ids.length;i++){
									pro_ids_str+=$(pro_ids[i]).val()+",";
									pro_nums_str+=$(pro_nums[i]).val()+",";
								}
								$("#id_proids").val(pro_ids_str);
								$("#id_pronums").val(pro_nums_str);
								$("#id_zong").val($("#zong").text().replace("$",""));
								
								
							
							}
							
							
							$(function(){
								//删除商品
								$("#pro_lists .close").click(function(){
									var id = $(this).parent().parent().find(".sl_id").val();
									var cookie = $.cookie('cart');
									if ( cookie === undefined ) return;
									cookie = $.parseJSON(cookie);
									for ( var x in cookie ){
										if(cookie[x].id==id){
											cookie.splice(x,1);
										}
									}
									$.cookie('cart',JSON.stringify(cookie));
								});
							});
						</script>
</body>
</html>