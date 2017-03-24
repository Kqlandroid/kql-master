<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'enroll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->	 
<script type="text/javascript" src="/js/jquery.min.js" ></script>  
<script type="text/javascript" src="/js/party.js" ></script> 
	
<script src="js/jquery-1.4.min.js"></script>
<style type="text/css">
*{margin: 0 auto;}
</style>
<script src="js/jquery-1.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function (){
				//验证用户名
				function check_name(){
					var names=$("#uname").val();				
					var reg=/^\w{4,12}$/;
					if(!reg.test(names)){
						$("#Duname").html("用户名不能为空长度4-12个由字母数字下划线组成");
						$("#Duname").css("color","red");
						return false;
						}
						$("#Duname").html("");
						return true;
					}
					$().blur
					//验证密码长度					
					function check_pwd(){			
						var pwd=$("#pwd").val();			
						var reg=/^[a-zA-Z 0-9]{6,12}$/;
						if(!reg.test(pwd)){
							$("#Dpwd").html("密码长度6-12个字符两次输入的密码必须一致");
							$("#Dpwd").css("color","red");
							return false;
							}
							$("#Dpwd").html("");
							return true;						
						}
						//验证两次输入的密码必须一致
						function check_pwdtwo(){							
							if($("#pwds").val().length!=$("#pwd").val().length){
								$("#Dupwd").html("两次输入的密码必须一致");
								$("#Dpwd").css("color","red");
								return false;
								}
								if($("#pwds").val()!=$("#pwd").val()){
									$("#Dupwd").html("两次输入的密码必须一致");
									$("#Dupwd").css("color","red");
								return false;
									}
							$("#Dupwd").html("");
							return true;
							}						
						//验证电子邮箱不能为空，并且必须包含字符‘@’与‘.’
						function check_email(){
							var $email=$("#email");					
							if($email.val().indexOf("@")<0&&$email.val().indexOf(".")<0){
								$("#Demail").html('邮箱不能为空且必须包含字符@与.');
								$("#Demail").css("color","red");
								return false;
								}
								$("#Demail").html("");
								return true;
							}
					//验证手机号码的长度
					function check_phone(){
							var $phone=$("#phone").val();					
							var reg=/^1\d{10}$/;
							if(reg.test($phone)==false){
								$("#Dphone").html("手机号码不正确，请重新输入");
								$("#Dphone").css("color","red");								
								return false;
								}						
								$("#Dphone").html("");
								return true;
							}
							//验证身份证号码的长度
					function check_ic(){
							var $ic=$("#ic").val();					
							var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  
							if(reg.test($ic)==false){
								$("#Dic").html("身份证号码输入不正确，请重新输入");
								$("#Dic").css("color","red");
								return false;
								}
								$("#Dic").html("");
								return true;
							}						
					$("#formname").submit(function(){
							var names =check_name();
							var pwd=check_pwd();
							var pwds=check_pwdtwo();
							var email=check_email();
							var phone=check_phone();							
							var ic=check_ic();
							return names&&pwd&&pwds&&email&&phone&&ic;
						});								
			//初始化年份
				var year=new Date().getYear(); 
				year=year+1900;
				for(var i=year;i>=1990;i--)
					{ 
					document.getElementById("year").options[year+1-i]=new Option(i,i); 
					
					} 
				//初始化月份
				for(var i=1;i<=12;i++) 
					{ 
					document.getElementById("month").options[i]=new Option(i,i); 
					} 
					
				//初始化日				
			function initDay(){ 				
				//添加之前先初始化
				document.getElementById("day").length=1; 
				var year=document.getElementById("year").value;  
				var month=document.getElementById("month").value; 
				if(year==""||month==""){ 
					return; 
				}else{ 
				 var arr=new Array(31,28,31,30,31,30,31,31,30,31,30,31); 
				  if((year%4==0&&year%100!=0)||year%400==0) 
				  { 
					  arr[1]++;  
				  } 
				  for(i=1;i<=arr[month-1];i++){ 
				     document.getElementById("day").options[i]=new Option(i,i); 
				  } 
			   } 
			}  
			
	    });
	    		
				//初始化日				
			function initDay(){ 				
				//添加之前先初始化
				document.getElementById("day").length=1; 
				var year=document.getElementById("year").value;  
				var month=document.getElementById("month").value; 
				if(year==""||month==""){ 
					return; 
				}else{ 
				 var arr=new Array(31,28,31,30,31,30,31,31,30,31,30,31); 
				  if((year%4==0&&year%100!=0)||year%400==0) 
				  { 
					  arr[1]++;  
				  } 
				  for(i=1;i<=arr[month-1];i++){ 
				     document.getElementById("day").options[i]=new Option(i,i); 
				  } 
			   } 
			}  
			
		</script>
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
	
			<div  class="container">
				<div class="row">
					<section class="section">
						<section class="col-xs-12 col-sm-8 col-md-9">	
							<h3 class="uppercase text-bold"><span class="text-xs">欢迎注册Gf游戏交易网，您的满意就是我们最大的动力</span></h3>
							<div class="row">
								<div id="frm-contact-us">
									<form action="adminSQLserverServlet?action=enroll" id="contact-form" method="post" class="clearfix" role="form">
										<div class="col-xs-12 col-sm-12 col-md-5">
										
										<div class="form-group stylish-input">
											<label for="contactSubject">用户名 <span id="Dname"></span></label>
												<p id="uname">${check_name}<%session.setAttribute("check_name",""); %></p>
												<input type="text" class="form-control" name="adminName" id="uname" required placeholder="用户名长度为3~12并且由字母组成" pattern="[A-z]{3,12}"/>
												 
											</div>
											<div class="form-group stylish-input">
												<label for="contactSubject">密码 <span id="Dpwd"></span></label>
												<input type="password" name="adminPwd" class="form-control" name="adminPwd" id="pwd" placeholder="密码必须是数组与字母组合" required	pattern="[A-Za-z].*[0-9]|[0-9].*[A-Za-z]"/>
											</div>
											<div class="form-group stylish-input">
												<label for="contactEmail" class="required">确认密码</label>
												<input type="password" class="form-control" name="adminPwd" id="contactEmail" name="email" pattern="[A-Za-z].*[0-9]|[0-9].*[A-Za-z]" required placeholder="两次密码须一致"/>
											</div>
											<div class="form-group stylish-input">
											
											
												<label for="contactSubject">性别：</label>
												<input  type="radio" name="adminSex"  checked="checked" value="男" > 男
												<input type="radio" name="adminSex"  value="女"/> 女
												
											</div>
											<div class="form-group stylish-input">
												<label for="contactSubject">邮箱地址</label>							
												<input type="Email" class="form-control" name="adminEmail" id="email" required/>
											</div>
											<div class="form-group stylish-input">
												<label for="contactSubject">手机号码</label>
												<input type="text" class="form-control" name="adminPhone" id="phone" required placeholder="请输入11位有效号码信息" pattern="1\d{10}"/>
											</div>
											
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactMSG" class="required">身份证号码</label>
												<input type="text" class="form-control" name="adminIc" id="ic" required placeholder="请输入有效18位本人身份证信息" pattern="(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)"/>
												
											</div>
										</div>
									
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactMSG" class="required">住址</label>
												<input type="text" class="form-control" name="adminAddress" id="address"  required/>
											</div>
										</div>
										
										  <div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
                                            <label for="contactMSG" class="required">出生日期</label>
							          <select name="year" id="year" onChange="initDay()">
							              <option>请选择年份</option> 
							           </select>  
							           <select name="month" id="month" onChange="initDay()"> 
							             <option>请选择月份</option> 
							           </select> 
							            <select name="day" id="day" > 
							              <option>请选择日</option> 
                                             </select>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactMSG" class="required">个人说明</label>
												<textarea id="contactMSG" class="form-control" name="message" style="height: 178px;" data-validate=".{2,400}$" required></textarea>
											</div>
										</div>
										
										
										<div class="space10"></div>
										<div class="col-xs-12 col-sm-12">
										
											<button type="submit"  class="btn btn-default btn-round pull-right" onclick="location.href='login.jsp';">登录</button>
											
											<button type="submit"  class="btn btn-default btn-round pull-right">提交</button>
										</div>
									</form>
									
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
						<aside class="col-xs-12 col-sm-4 col-md-3">
						<section class="sidebar">
								<section class="side-section">
									<h3 class="uppercase text-bold"><span class="text-xs">注册协议</span></h3>
									<p class="light-color text-xs">1、与您约定免除或限制；<br/>2、与您约定法律适用和管辖的条款；<br/>3、其他以粗体下划线标识的重要条款。<br/></p>
									<p class="light-color text-xs">如您对协议有任何疑问，可向平台客服咨询。</p>
								</section>
								
								<section class="side-section">
									<h5 class="uppercase text-bold"><span class="text-xs">【特别提示】</span></h5>
									<div class="light-color text-xs">
										<p>当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。</p>
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
							</section>
						</aside>
						<!-- // SIDEBAR -->
						
						<div class="clearfix"></div>
					</section>
				
				</div>
			</div>
			
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
  </div>

  </body>
</html>
