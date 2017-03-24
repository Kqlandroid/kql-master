<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link rel="stylesheet" href="css/jquery.nouislider.css">
	<link rel="stylesheet" href="css/isotope.css">
	<link rel="stylesheet" href="css/innerpage.css">
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
</head>
<body class="products-view">
			
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
						<li><a href="index-2.html">购物</a></li>
						<li class="active">商品分类</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
		
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
			<div class="container">
				<div class="row">
					
					<div class="m-t-b clearfix">
						<!-- SIDEBAR -->
						<aside class="col-xs-12 col-sm-4 col-md-3">
							<section class="sidebar push-up">
							
								<!-- CATEGORIES -->
								<section class="side-section bg-white">
									<header class="side-section-header">
										<h3 class="side-section-title">购买分类</h3>
									</header>
									<div class="side-section-content">
										<ul id="category-list" class="vmenu unstyled">
											<li>
												<input type="checkbox" id="check-women" class="prettyCheckable" data-label="网络游戏" data-labelPosition="right" value="wangluo" />
												<ul>
													<li><input type="checkbox" id="check-women-accessories" class="prettyCheckable" data-label="英雄联盟" data-labelPosition="right" value="英雄联盟" /></li>
													<li><input type="checkbox" id="check-women-swimwear" class="prettyCheckable" data-label="地下城与勇士" data-labelPosition="right" value="地下城勇士" /></li>
													<li><input type="checkbox" id="check-women-basics" class="prettyCheckable" data-label="剑灵" data-labelPosition="right" value="剑灵" /></li>
													<li><input type="checkbox" id="check-women-dresses" class="prettyCheckable" data-label="天龙八部" data-labelPosition="right" value="天龙八部" /></li>
													<li><input type="checkbox" id="check-women-jeans" class="prettyCheckable" data-label="御龙在天" data-labelPosition="right" value="御龙在天" /></li>
													<li><input type="checkbox" id="check-women-skirt" class="prettyCheckable" data-label="梦幻西游" data-labelPosition="right" value="梦幻西游	" /></li>
													<li><input type="checkbox" id="check-women-legging" class="prettyCheckable" data-label="私服传奇" data-labelPosition="right" value="私服传奇" /></li>
												</ul>
											</li>
											<li>
												<input type="checkbox" id="check-men" class="prettyCheckable" data-label="网页游戏" data-labelPosition="right" value="wangye" />
												<ul>
													<li><input type="checkbox" id="check-men-accessories" class="prettyCheckable" data-label="大天使之剑" data-labelPosition="right" value="大天使之剑" /></li>
													<li><input type="checkbox" id="check-men-jacket" class="prettyCheckable" data-label="传奇霸主" data-labelPosition="right" value="传奇霸主" /></li>
													<li><input type="checkbox" id="check-men-jumper" class="prettyCheckable" data-label="黑暗之光" data-labelPosition="right" value="黑暗之光" /></li>
													<li><input type="checkbox" id="check-men-jean" class="prettyCheckable" data-label="秦时明月" data-labelPosition="right" value="秦时明月" /></li>
													<li><input type="checkbox" id="check-men-shoe" class="prettyCheckable" data-label="火影忍者" data-labelPosition="right" value="火影忍者" /></li>
													<li><input type="checkbox" id="check-men-tshirt" class="prettyCheckable" data-label="热血海贼王" data-labelPosition="right" value="热血海贼王" /></li>
													<li><input type="checkbox" id="check-men-blazers" class="prettyCheckable" data-label="傲剑2" data-labelPosition="right" value="傲剑2" /></li>
												</ul>
											</li>
											
										</ul>
									</div>
									<footer class="side-section-footer text-center hide">
										<button type="button" id="btn-filter-cat" class="btn btn-primary btn-round uppercase">Clear Filters</button>
									</footer>
								</section>
								<!-- // CATEGORIES -->
								
								<!-- BRANDS -->
								
								<!-- // BRANDS -->
								
								<!-- PRODUCT FILTER -->
								<section class="side-section bg-white">
									<header class="side-section-header">
										<h3 class="side-section-title">价格排序</h3>
									</header>
									
									<!-- PRICE RANGE SLIDER -->
									<div id="filter-by-price" class="side-section-content">
										<h4 class="side-section-subheader">按价格筛选</h4>
										<div class="range-slider-container">
											<div class="range-slider" data-min="0" data-max="2000" data-step="10" data-currency="$"></div>
											<div class="range-slider-value clearfix">
												<span>Price: &ensp;</span>
												<span class="min"></span>
												<span class="max"></span>
											</div>
										</div>
									</div>
									<!-- // PRICE RANGE SLIDER -->
									
									<!-- FILTER BY SIZE -->
									<div id="filter-by-size" class="side-section-content">
										<h4 class="side-section-subheader">Filter By Size</h4>
										<ul class="inline-li li-m-lg text-center unstyled">
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="X-Small / UK 8"><small>网通</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="XS" />
											</li>
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="Small / UK 10"><small>电信</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="S" />
											</li>
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="Medium / UK 12"><small>全区</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="M" />
											</li>
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="Large / UK 14"><small>点卡</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="L" />
											</li>
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="X-Large / UK 16"><small>账户</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="XL" />
											</li>
											<li>
												<a href="#" class="round-icon" dat-toggle="tooltip" data-title="XX-Large"><small>金币</small></a>
												<input type="checkbox" class="filter-checkbox filter-size" value="XXL" />
											</li>
										</ul>
									</div>
									<!-- // FILTER BY SIZE -->
									
									<!-- FILTER BY COLOR -->
									
									<!-- // FILTER BY COLOR -->
								</section>
								<!-- // PRODUCT FILTER -->
								
								<!-- BEST SELLERS -->
								<section class="side-section bg-white">
									<header class="side-section-header">
										<h3 class="side-section-title">销售排行</h3>
									</header>
									<div class="side-section-content" >
										<ul class="product-medialist li-m-t unstyled clearfix">
											<li>
												<div class="item clearfix" data-product-id="11">
													<a href="images/wangluo/lol/lol_fenlei_1.jpg" data-toggle="lightbox" class="entry-thumbnail">
														<img src="images/wangluo/lol/lol_fenlei_1.jpg" alt="Inceptos orci hac libero" />
													</a>
													<h5 class="entry-title"><a href="saleSQLservlet?action=getByid&saleid=13">英雄联盟店铺</a></h5>
													<s class="entry-discount m-r-sm"><span class="text-sm">￥ 350.00</span></s>
													<span class="entry-price accent-color">￥ 100.00</span>
												</div>
											</li>
											<li>
												<div class="item clearfix" data-product-id="15">
													<a href="images/wangluo/jl/jl_fenlei_1.jpg" data-toggle="lightbox" class="entry-thumbnail">
														<img src="images/wangluo/jl/jl_fenlei_1.jpg" alt="Inceptos orci hac libero" />
													</a>
													<h5 class="entry-title"><a href="saleSQLservlet?action=getByid&saleid=15">剑灵充值中心</a></h5>
													<span class="entry-price">￥ 20.00</span>
												</div>
											</li>
										</ul>
									</div>
								</section>
								<!-- // BEST SELLERS -->
								
								<!-- PROMO -->
								<div class="promo inverse-background" style="background: url('images/women/basic/ylzt-0014_1_t.jpg') no-repeat; background-size: auto 100%;">
									<div class="inner text-center np">
										<div class="ribbon">
											<h6 class="nmb">超值体验闪速发货</h6>
											<h5 class="text-semibold uppercase nmb">御龙在天</h5>
											<div class="space10"></div>
											<a href="saleSQLservlet?action=getAllTwo&gameid=5" class="with-icon prepend-icon"><i class="iconfont-caret-right"></i><span> 进入专区</span></a>
										</div>
									</div>
								</div>
								<!-- // PROMO -->
								
							</section>
						</aside>
						<!-- // SIDEBAR -->
						<section class="col-xs-12 col-sm-8 col-md-9">
							
							<section class="products-wrapper">
								<!-- DISPLAY MODE - NUMBER OF ITEMS TO BE DISPLAY - PAGINATION -->
								<header class="products-header">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
											<!-- DISPLAY MODE -->
											<ul class="unstyled inline-li li-m-r-l-sm pull-left">
												<li><a class="round-icon active" href="#" data-toggle="tooltip" data-layout="grid" data-title="网络模式"><i class="iconfont-th"></i></a></li>
												<li><a class="round-icon" href="#" data-toggle="tooltip" data-layout="list" data-title="列表模式"><i class="iconfont-list"></i></a></li>
											</ul>
											<!-- // DISPLAY MODE -->
											
											<!-- NUMBER OF ITEMS TO BE DISPLAY -->
											<div class="pull-right m-l-lg">
												<span class="inline-middle m-r-sm text-xs">Show</span>
												<div class="inline-middle styled-dd">
													<select>
														<option value="9">9</option>
														<option value="12" selected>12</option>
														<option value="24">24</option>
														<option value="36">36</option>
													</select>
												</div>
											</div>
											<!-- // NUMBER OF ITEMS TO BE DISPLAY -->
										</div>
										<div class="space30 visible-xs"></div>
										<!-- PAGINATION -->
										<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
											<ul class="paginator li-m-r-l pull-right">
												<li><a class="round-icon" href="#" data-toggle="tooltip" data-title="Previous Page"><i class="iconfont-angle-left"></i></a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a class="round-icon" href="#" data-toggle="tooltip" data-title="Next Page"><i class="iconfont-angle-right"></i></a></li>
											</ul>
										</div>
										<!-- // PAGINATION -->
									</div>
								</header>
<div class="products-layout grid m-t-b add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">
  
  <!----><c:forEach items="${getAll}" var="g">
  			<div class="product" data-product-id="${g.sl_id}" data-category="${g.sl_gamename}" data-brand="brand1" data-price="${g.sl_price}" data-colors="red|blue|black|white" data-size="S|M|L">
  
									<div class="entry-media">
										<img src="${g.sl_url}" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
										<!-- 跳转页面 -->
											<a href="saleSQLservlet?action=getByid&saleid=${g.sl_id}" class="entry-url"></a>
											<ul class="icons unstyled">
												
												<li>
													<a href="${g.sl_url}" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">${g.sl_title}</a>
										</h5>
										<div class="entry-description visible-list">
												<p>${g.sl_Content}</p>
											</div>
										<div class="entry-price">										
											<strong class="price">￥${g.sl_price}</strong>	
											<a href="#" class="btn btn-round btn-default add-to-cart visible-list">购买</a>										
										</div>
										<div class="entry-links clearfix">
											<a href="#" class="pull-left m-r">${g.admin_name}</a>
											<a href="#" class="pull-right">${g.sl_gamename}</a>
											
										</div>
									</div>
								</div>
	</c:forEach>
	</div>
    	
								</div>
								<!-- // PRODUCT LAYOUT -->
							</section>
							
						</section>
					</div>
					
				</div>
			</div>
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
													<span class="inline-middle">查看详细</span>
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
	<!-- Particular Page Javascripts -->
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/products.js"></script>
	<!-- // Particular Page Javascripts -->
</body>
</html>