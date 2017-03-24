<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	
		<base href="<%=basePath%>">

		<title>My JSP 'login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		</head>
<style>
	*{margin:0px auto;}
	</style>
	
<script src="js/jquery-1.4.min.js"></script>
	<script type="text/javascript">
	function check(){
			var uname=$("#uname").val();
			var pwd=$("#pwd").val();	
			var number=$("#number").val();	
			var imgnumber=$("#imgnumber").val();	
			
		if(uname==""){	
			$("#sname").html('用户名不能为空');
			$("#sname").css("color","red");
			return false;
			}else{
			$("#sname").html('');
		}
		if(pwd==""){
			$("#spwd").html('密码不能为空');
			$("#spwd").css("color","red");
			return false;
			}else{
			$("#spwd").html('');
		}
		if(number==""){
		  $("#nubmer").html('验证码不能为空');
		  $("#nubmer").css("color","red");
	      return false;
		}else{
		  $("#nubmer").html('');
		}
		if(number==imgnumber){
		  $("#ajax").html('输入的验证码必须一样');
		  $("#ajax").css("color","red");
		  return false;
		}else{
		  $("#nubmer").html('');
		}
		return true;
	}
	//ajax
	var bool=false;
		function yanzhen(){
			
				$.ajax({
					url : "AjaxServlet?action=image&number="+$("#number").val(),
					method : "post",					
					success : function(data1){
						if(data1=="true1"){
						$("#ajax").html('');		
							bool=true;
						}else{
							$("#ajax").html('验证码输入错误，请重新输入');			
							bool=false;
						}
					
					}			
				});
				return bool;
				}
	$(function(){
		$("#form1").submit(function(){
		var c=check();
		return c&&bool;
		});
		$("#number").blur(function(){
		yanzhen();
		});

			$("#changenumber").click(function(){
				$("#imgnumber").attr("src","Number.jsp?id="+Math.random());
			});
	});
	
	</script>
	<body>
	  			<%session.removeAttribute("admin_name");session.removeAttribute("admin_id"); %>
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
										<span>Your cart is currently empty.</span>
										<small><a href="Shopping.jsp">(See All)</a></small>
									</div>
									<ul class="cart-items product-medialist unstyled clearfix"></ul>
									<div class="cart-footer">
										<div class="cart-total clearfix">
											<span class="pull-left uppercase">总计：</span>
											<span class="pull-right total">$ 0</span>
										</div>
										<div class="text-right">
											<a href="Shopping.jsp" class="btn btn-default btn-round view-cart">进去购物车</a>
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
								<li><a href="login.jsp" onclick="alert('请登录,在进入我的账户中心');">我的账户中心</a></li>
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
								<a href="Forum.jsp">购物论坛</a>
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
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
				<div class="row">				
					<section class="section">
						<section class="col-xs-12 col-sm-8 col-md-9">
							<div class="row">
								<div id="frm-contact-us">
										<div class="col-xs-12 col-sm-12 col-md-5">
											
											<div class="alert alert-success" id="contact_success" style="display: none;">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<div class="alert-inner">											
										</div>
									</div>										
										</div>									
										<div class="col-xs-12 col-sm-12 col-md-5">
										<form action="adminSQLserverServlet?action=Login"  method="post" id="form1" >
										<h3 class="uppercase text-bold"><span class="text-xs"> </span></h3>
										<div class="form-group stylish-input">
												<label for="contactEmail" class="required">账户</label>
												<input type="text" class="form-control" id="uname" name="adminName"  required/>
											</div>
											<div class="form-group stylish-input">
												<label for="contactEmail" class="required">密码</label>
												<input type="password" class="form-control" id="pwd" name="adminPwd"  required/>
											</div>
											<div class="form-group stylish-input">
												<input type="text" name="number" id="number" maxlength="4" size="4" value="" style="padding-left: 20px;"/>
												<img id="imgnumber"  src="Number.jsp" />
		     			                     	<a href="javascript:void(0)"  id="changenumber">看不清,请换一张</a><br/><span id="ajax"></span>
		     					                <span id="nubmer"></span>	
		     					                <br/>	     					                
											</div>     					
											<div class="space10"></div>
												<div class="col-xs-12 col-sm-12">
												<button type="submit"  class="btn btn-default btn-round pull-right">取消</button>
											</div>
												<div class="col-xs-12 col-sm-12">
											<button type="reset"  class="btn btn-default btn-round pull-right">重置</button>
											</div>
												<div class="col-xs-12 col-sm-12">
												<button type="submit"   class="btn btn-default btn-round pull-right">登 录</button>
											</div>	
											<div class="col-xs-12 col-sm-12">
											${denglu}
											</div>							
											</form>		
										</div>
									
									<div class="space40"></div>
									<div class="clearfix"></div>
									<!-- CONTACT FORM ALERTS -->
									<div class="alert alert-success" id="contact_success" style="display: none;">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<div class="alert-inner">
											<strong>Thanks,</strong> your message recieved successfully. We'll get back to you as soon as possible.
										</div>
									</div>
									<!-- /success msg -->
									
									<div class="alert alert-danger" id="contact_fail" style="display: none;">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<div class="alert-inner"></div>
									</div>
									<!-- /error msg -->
									<!-- /CONTACT FORM ALERTS -->

								</div>
							</div>
						
						</section>
				
						<!-- SIDEBAR -->
							<div style=" margin-left:100px;">
						<!-- SIDEBAR --><aside class="col-xs-12 col-sm-4 col-md-3">
						
							<section class="sidebar">
								
									<p><img src="images/demo/denglu.png" alt="" /></p>
								<p class="light-color text-xs">扫描立即下载！详情点击　<a href="#">Gfashion游戏交易APP</a> </p>
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
						<!-- // SIDEBAR -->
						
						<div class="clearfix"></div>
					</section>
				
				</div>
			</div>
			
		</main>
		<!-- // SITE MAIN CONTENT -->
		
		
		
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
	</body>
</html>
