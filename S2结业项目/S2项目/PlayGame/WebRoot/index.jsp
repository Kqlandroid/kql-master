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
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<link href="css/flexslider.css" rel="stylesheet" />
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
</head>
<body class="home">
			
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
											<span class="pull-left uppercase">总计:</span>
											<span class="pull-right total">￥ 0</span>
										</div>
										<div class="text-right">
											<a href="Shopping.jsp" class="btn btn-default btn-round view-cart">加入购物车</a>
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
								<li><a href="yellowServlet?action=yellow">我的账户中心</a></li>
								<li><a href="Recharge.jsp">充值</a></li>
								<c:if test="${admin_name==null}"><li><a href="login.jsp">登录</a></c:if><c:if test="${admin_name!=null}"><li><a href="login.jsp">注销</a></c:if>
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
    
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
		
		<!-- HOMEPAGE SLIDER -->
		<div id="home-slider">
			<div class="flexslider">
	<ul class="slides">
		<!-- THE FIRST SLIDE -->
		<li>
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="rev-slider/img/slides/5279e8a0ed964.jpg" alt="" />
			
			<!-- THE CAPTIONS OF THE FIRST SLIDE -->
			<div class="flex-caption h6 text-bold gfc uppercase animated"
			data-animation="fadeInLeftBig"
			data-x="800"
			data-y="110"
			data-speed="600"
			data-start="1200">地下城与勇士_DNF</div>
			
			<div class="flex-caption herotext text-bold gfc animated"
			data-animation="fadeInRightBig"
			data-x="580"
			data-y="140"
			data-speed="900"
			data-start="2000"> 游戏币|装备|帐号 </div>
			
			<div class="flex-caption h6 text-bold gfc text-center animated"
			data-animation="fadeInDown"
			data-x="639"
			data-y="260"
			data-speed="1600"
			data-start="2900">
				没有你得不到的，只有你想不到的，快进来看看吧<br/>
				<a href="saleSQLservlet?action=getAllTwo&gameid=1" class="btn btn-primary uppercase">进去专区</a>
			</div>
			
		</li>
		
		<!-- THE SECOND SLIDE -->
		<li style="background: #fa6f57;">
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="img/transparent.png" alt="" />
			
			<div class="flex-caption super-giant gfc animated uppercase"
			data-animation="fadeInUp"
			data-x="center"
			data-y="60"
			data-speed="500"
			data-start="900">全球最快</div>

			<div id="caption-left-round" class="flex-caption round gfc animated uppercase"
			data-animation="fadeInLeftBig"
			data-x="140"
			data-y="60"
			data-speed="600"
			data-start="1200"><div class="vmid"><span>闪速<br/>发货</span></div></div>

			<div class="flex-caption round gfc animated uppercase"
			data-animation="fadeInRightBig"
			data-x="925"
			data-y="60"
			data-speed="600"
			data-start="1200"><div class="vmid"><span>速降优惠<br/>70%</span></div></div>

			<div class="flex-caption h3 gfc animated uppercase"
			data-animation="fadeInDown"
			data-x="center"
			data-y="250"
			data-speed="400"
			data-start="1800"><strong class="text-bold">快速发货</strong>购物险保障</div>

		</li>
		
		<!-- THE SECOND SLIDE -->
		<li>
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="rev-slider/img/slides/3303349658_cfaebb811f_o.jpg" alt="" />
			
			<div class="flex-caption herotext text-bold gfc bg-dark animated uppercase"
			data-animation="fadeInUpBig"
			data-x="760"
			data-y="60"
			data-speed="900"
			data-start="100">英雄联盟旗舰店</div>
			
			<div class="flex-caption h2 text-bold gfc bg-dark animated uppercase"
			data-animation="fadeInUpBig"
			data-x="797"
			data-y="175"
			data-speed="600"
			data-start="900">2015史无前例的特惠</div>
			
		</li>
		
	</ul>
</div>

<script>
	jQuery(function($) {
		var $slider = $('#home-slider > .flexslider');
		$slider.find('.flex-caption').each(function() {
			var $this = $(this);
			var configs = {
				left: $this.data('x'),
				top: $this.data('y'),
				speed: $this.data('speed') + 'ms',
				delay: $this.data('start') + 'ms'
			};
			if ( configs.left == 'center' && $this.width() !== 0 ) 
			{
				configs.left = ( $slider.width() - $this.width() ) / 2;
			}
			if ( configs.top == 'center' && $this.height() !== 0 ) 
			{
				configs.top = ( $slider.height() - $this.height() ) / 2;
			}
			
			$this.data('positions', configs);
			
			$this.css({
				'left': configs.left + 'px',
				'top': configs.top + 'px',
				'animation-duration': configs.speed,
				'animation-delay': configs.delay
			});
		});
		
		$(window).on('resize', function() {
			var wW = $(window).width(),
				zoom = ( wW >= 1170 ) ? 1 : wW / 1349;
			$('.flex-caption.gfc').css('zoom', zoom);
		});
		$(window).trigger('resize');
		
		
		
		$slider.imagesLoaded(function() {
			$slider.flexslider({
				animation: 'slide',
				easing: 'easeInQuad',
				slideshow: false,
				nextText: '<i class="iconfont-angle-right"></i>',
				prevText: '<i class="iconfont-angle-left"></i>',
				start: function() {
					flex_fix_pos(1);
				},
				before: function(slider) {
					// initial caption animation for next show
					$slider.find('.slides li .animation-done').each(function() {
						$(this).removeClass('animation-done');
						var animation = $(this).attr('data-animation');
						$(this).removeClass(animation);
					});
					
					flex_fix_pos(slider.animatingTo + 1);
				},
				after: function() {
					// run caption animation
					$slider.find('.flex-active-slide .animated').each(function() {
						var animation = $(this).attr('data-animation');
						$(this).addClass('animation-done').addClass(animation);
					});
				}
			});
		});
		
		
		function flex_fix_pos(i) {
			$slider.find('.slides > li:eq(' + i + ') .gfc').each(function() {
				var $this = $(this),
					pos = $(this).data('positions');
					
				if ( pos.left == 'center' )
				{
					pos.left = ( $slider.width() - $this.width() ) / 2;
					$this.css('left', pos.left + 'px');
					$this.data('positions', pos);
				}
				if ( pos.top == 'center' )
				{
					pos.top = ( $slider.height() - $this.height() ) / 2;
					$this.css('left', pos.top + 'px');
					$this.data('positions', pos);
				}
			});
		}
	});
</script>		</div>
		<!-- // HOMEPAGE SLIDER -->
		
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
			
			<!-- PROMO BOXES -->
			<section class="section promos">
				<div class="container">
					<div class="row">
					
						<div class="col-md-4">
							<div class="promo accent-background first-child first-row animated" data-animation="fadeInLeft">
								<div class="inner text-center">
									<h1 class="uppercase text-semibold">
										<a href="#">
											<span class="inverse-color">特惠</span> 高达35% <span class="inverse-color">OFF</span>
										</a>
									</h1>
									<h5 class="uppercase">2015冰霜夏季优惠</h5>
								</div>
							</div>
						</div>
					
						<div class="col-md-4">
							<div class="promo inverse-background first-row animated" data-animation="fadeInDown" style="background: url('images/demo/P2200214.jpg') no-repeat; background-size: 100%;">
								<div class="inner text-center np">
									<div class="ribbon">
										<h6 class="nmb">新品推荐</h6>
										<h5 class="text-semibold uppercase nmb">御龙在天</h5>
										<div class="space10"></div>
										<a href="saleSQLservlet?action=getAllTwo&gameid=5" class="with-icon prepend-icon"><i class="iconfont-caret-right"></i><span> 进去专区</span></a>
									</div>
								</div>
							</div>
						</div>
					
						<div class="col-md-4">
							<div class="promo inverse-background first-row animated" data-animation="fadeInRight">
								<div class="inner text-center">
									<h1 class="uppercase text-bold">
										<a href="#">
											闪速发货 <span class="inverse-color">特惠</span>
										</a>
									</h1>
									<h5 class="uppercase">各大类游戏齐聚</h5>
								</div>
							</div>
						</div>
					
					</div>
				</div>
			</section>
			<!-- // PROMO BOXES -->
			
			<!-- FEATURED PRODUCTS -->
			<section class="section featured visible-items-4">
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
			<!-- // FEATURED PRODUCTS -->
			
			<!-- NEW ARRIVAL PRODUCTS -->
			<section class="section new-arrivals visible-items-5">
				<div class="container">
					<div class="row">
						<header class="section-header clearfix col-sm-offset-3 col-sm-6">
							<h3 class="section-title">限时特惠</h3>
							<p class="section-teaser">【通知】7.21开始，天天特价改为0点开抢啦！2015-7-13
							</p>
						</header>
						
						<div class="clearfix"></div>
						
						<!-- BEGIN CAROUSEL -->
						<div id="new-arrivals-products" class="add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">
						
							<div class="owl-controls clickable outside">
								<div class="owl-buttons">
									<div class="owl-prev"><i class="iconfont-angle-left"></i></div>
									<div class="owl-next"><i class="iconfont-angle-right"></i></div>
								</div>
							</div>
							
							<div class="owl-carousel owl-theme" data-visible-items="5" data-navigation="true" data-lazyload="true">
								<div class="product" data-product-id="9">
									<div class="entry-media">
										<img data-src="images/women/LOL/lol_fenlei_5.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=11" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">特惠</div>
												</li>
												<li>
													<a href="images/women/LOL/lol_fenlei_5.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing9" />
												<div class="rateit" data-rateit-backingfld="#backing9" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">英雄联盟</a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">$ 500.00</s>
											<strong class="accent-color price">$ 450.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="10">
									<div class="entry-media">
										<img data-src="images/wangluo/dnf/dnf_fenlei_2.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=12" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangluo/dnf/dnf_fenlei_2.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing10" />
												<div class="rateit" data-rateit-backingfld="#backing10" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">地下城与勇士</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 500.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="11">
									<div class="entry-media">
										<img data-src="images/wangluo/lol/lol_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=13" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">超值</div>
												</li>
												<li>
													<a href="images/wangluo/lol/lol_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing11" />
												<div class="rateit" data-rateit-backingfld="#backing11" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">英雄联盟</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 100.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="12">
									<div class="entry-media">
										<img data-src="images/wangluo/jl/jl_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=15" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangluo/jl/jl_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing12" />
												<div class="rateit" data-rateit-backingfld="#backing12" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">剑灵充值中心 </a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 20.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="13">
									<div class="entry-media">
										<img data-src="images/wangye/qsmy/qsmy_fenlei_1.jpg" alt="" class="lazyOwl thumb"  style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=23" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-sale">特惠</div>
												</li>
												<li>
													<a href="images/wangye/qsmy/qsmy_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4.5" step="0.5" id="backing13" />
												<div class="rateit" data-rateit-backingfld="#backing13" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">秦时明月 </a>
										</h5>
										<div class="entry-price">
											<s class="entry-discount">$ 150.00</s>
											<strong class="accent-color price">$ 100.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="14">
									<div class="entry-media">
										<img data-src="images/wangye/hyrz/hyrz_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=24" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangye/hyrz/hyrz_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="4" step="0.5" id="backing14" />
												<div class="rateit" data-rateit-backingfld="#backing14" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">火影忍者</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 30.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="15">
									<div class="entry-media">
										<img data-src="images/wangye/rxhzw/rxhzw_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=25" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<div class="circle ribbon ribbon-new">超值</div>
												</li>
												<li>
													<a href="images/wangye/rxhzw/rxhzw_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="3.5" step="0.5" id="backing15" />
												<div class="rateit" data-rateit-backingfld="#backing15" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">热血海贼王</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 50.00</strong>
										</div>
									</div>
								</div>
								
								<div class="product" data-product-id="16">
									<div class="entry-media">
										<img data-src="images/wangye/aj2/aj2_fenlei_1.jpg" alt="" class="lazyOwl thumb" style="height:260px;width: 260px"/>
										<div class="hover">
											<a href="saleSQLservlet?action=getByid&saleid=26" class="entry-url"></a>
											<ul class="icons unstyled">
												<li>
													<a href="images/wangye/aj2/aj2_fenlei_1.jpg" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="#" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing16" />
												<div class="rateit" data-rateit-backingfld="#backing16" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="#">傲剑2</a>
										</h5>
										<div class="entry-price">
											<strong class="price">$ 40.00</strong>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<!-- // END CAROUSEL -->
						
					</div>
				</div>
			</section>
			<!-- // NEW ARRIVAL PRODUCTS -->
			
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
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- // Particular Page Javascripts -->
</body>
</html>