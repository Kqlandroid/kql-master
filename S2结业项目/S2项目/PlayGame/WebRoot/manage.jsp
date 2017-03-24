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
		<!-- BREADCRUMB -->
		
		<div class="breadcrumb-container">
			<div class="containera">
				<div class="relativea">
					<ul class="bc unstyled clearfix">
						<li class="active">&nbsp; </li>
						<li><a href="#">主页</a></li>
						<li class="active">管理员目录</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->
						<!-- // FORMS -->
						
						<!-- TABS -->
						<section class="section" id="ui-tabs"></section>			    
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab-1" data-toggle="tab">用户账户管理</a></li>
								<li><a href="#tab-2" data-toggle="tab">店铺管理</a></li>
								<li><a href="#tab-3" data-toggle="tab">分类管理</a></li>
								<li><a href="#tab-4" data-toggle="tab">论坛管理</a></li>
							</ul>	
							
							<div class="tab-content">
							<div class="tab-pane fade in active" id="tab-1">
							<span>${news}</span>
									<c:forEach var="go" items="${pageAdmin.newlist}" varStatus="status">
									<form action="adminSQLserverServlet?action=update&admin_id=${go.admin_id}" method="post">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#checkout-collapse" href="#${status.index}">
											<span class="step">${status.index+1}</span>
												${go.admin_name}
											</a>
										</h4>
									</div>		
									<div id="${status.index}" class="panel-collapse collapse">
										<div class="panel-body">
									<div class="col-xs-12 col-sm-12 col-md-5">	
									<h4  name="biankuang1" >							
										<span class="uppercase text-bold" style=font-size:20px >密码：</span>
										<span id="admin_pwd">${go.admin_pwd}</span>
										</h4>	
									<h4  name="biankuang2">							
										<span class="uppercase text-bold" style=font-size:20px >性别：</span>
										<span id="admin_pwd">${go.admin_sex}</span>
										</h4>	
									<h4  name="biankuang2">							
										<span class="uppercase text-bold" style=font-size:20px >出生日期：</span>
										<span id="admin_pwd">${go.admin_birthday}</span>
										</h4>	
									<h4  name="biankuang3">							
										<span class="uppercase text-bold" style=font-size:20px >邮箱地址：</span>
										<span id="admin_pwd">${go.admin_email}</span>
										</h4>	
									<h4  name="biankuang4">							
										<span class="uppercase text-bold" style=font-size:20px >手机号码：</span>
										<span id="admin_pwd">${go.admin_phone}</span>
										</h4>	
									<h4  name="biankuang5">							
										<span class="uppercase text-bold" style=font-size:20px >身份证号码：</span>
										<span id="admin_pwd">${go.admin_ic}</span>
										</h4>
									<h4  name="biankuang6">							
										<span class="uppercase text-bold" style=font-size:20px >住址：</span>
										<span id="admin_pwd">${go.admin_address}</span>
										</h4>										
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">密码 <span id="Dpwd"></span></label>
												<input type="text" name="adminPwd" class="form-control" name="adminPwd" id="pwd" style="width:200px" value="${go.admin_pwd}"  required	pattern="[A-Za-z].*[0-9]|[0-9].*[A-Za-z]"/>											
											</div>											
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
													<label for="contactSubject">性别：</label>
												<c:if test="${go.admin_sex=='男'}"><input  type="radio" name="adminSex"  checked="checked" value="男" ></c:if> 
												<c:if test="${go.admin_sex!='男'}"><input  type="radio" name="adminSex"   value="男" ></c:if> 男
												<c:if test="${go.admin_sex=='女'}"><input type="radio" name="adminSex" checked="checked" value="女"/></c:if> 
												<c:if test="${go.admin_sex!='女'}"><input type="radio" name="adminSex"  value="女"/></c:if> 女												
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">出生日期</label>
												<input type="text" class="form-control" name="adminBirthday" id="email" style="width:400px" value="${go.admin_birthday}" required/>
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">邮箱地址</label>
												<input type="Email" class="form-control" name="adminEmail" id="email" style="width:400px" value="${go.admin_email}" required/>
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">手机号码</label>
												<input type="text" class="form-control" name="adminPhone" id="phone"  style="width:400px" value="${go.admin_phone}" required pattern="1\d{10}"/>									
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">												
												<input type="text" class="form-control" name="adminIc" id="email" style="width:400px" value="${go.admin_ic}" />
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">住址</label>
												<input type="text" class="form-control" name="adminAddress" id="email" style="width:400px" value="${go.admin_address}" required/>
												<input type="hidden" value="${go.admin_id}" name="adminId">
											</div>											
											<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">										
											<div class="form-group stylish-input">
												<button type="submit"  class="btn btn-default btn-round pull-right">修改</button>
											</div>
										</div>
											
										</div>											
										</div>
									</div>
										</form>
									</c:forEach>	
									<span style="font-size: 20px;padding-left: 50px;">第${pageAdmin.pageNumber}页</span>
							  		<span style="font-size: 20px;padding-left: 50px;">共${pageAdmin.totalPage}页</span>
						     		<a href="adminSQLserverServlet?action=page&pageNumber=1&pageSize=9" style="font-size: 20px; padding-left: 50px;">首页</a>
						   		    <a href="adminSQLserverServlet?action=page&pageNumber=${pageAdmin.pageNumber-1}&pageSize=9" style="font-size: 20px;padding-left: 50px;">上一页</a>
						    	    <a href="adminSQLserverServlet?action=page&pageNumber=${pageAdmin.pageNumber+1}&pageSize=9" style="font-size: 20px;padding-left: 50px;">下一页</a>
						   		    <a href="adminSQLserverServlet?action=page&pageNumber=${pageAdmin.totalPage}&pageSize=9" style="font-size: 20px;padding-left: 50px;">尾页</a>			
									</div>
									
							<div class="tab-pane fade" id="tab-2">	
							<span>${salenews}</span>
									<c:forEach var="go" items="${pageSale.newlist}" varStatus="statu" >
									<form action="saleSQLservlet?action=updateNews&sl_id=${go.sl_id}" method="post">								
									<div class="panel-heading" >
										<h4 class="panel-title">											
											<a data-toggle="collapse" data-parent="#checkout-collapse" href="#${statu.index+500}">
												<span class="step">${statu.index+1}</span>
												${go.sl_title}
											</a>
										</h4>
									</div>									
									<div id="${statu.index+500}" class="panel-collapse collapse">
										<div class="panel-body">
									<div class="col-xs-12 col-sm-12 col-md-5">											
									<h4  name="biankuang1">							
										<span class="uppercase text-bold" style=font-size:20px >金额：</span>
										<span id="admin_pwd">${go.sl_price}元</span>
										</h4>	
									<h4  name="biankuang2">							
										<span class="uppercase text-bold" style=font-size:20px >时间：</span>
										<span id="admin_pwd">${go.sl_time}</span>
										</h4>
									<h4  name="biankuang3">							
										<span class="uppercase text-bold" style=font-size:20px >Sl_gameid：</span>
										<span id="admin_pwd">${go.sl_gameid}</span>
										</h4>
										<h4  name="biankuang4">							
										<span class="uppercase text-bold" style=font-size:20px >图片地址：</span>
										<span id="admin_pwd">${go.sl_url}</span>
										</h4>	
										<h4  name="biankuang5">							
										<span class="uppercase text-bold" style=font-size:20px >内容：</span>
										<span id="admin_pwd">${go.sl_Content}</span>
										</h4>	
										<h4  name="biankuang6">							
										<span class="uppercase text-bold" style=font-size:20px >  </span>
										<img alt="" src="${go.sl_url}" style="width: 400px;height: 400px;">
										</h4>										
																				
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">店铺名称</label>
												<input type="text" name="slTitle" class="form-control"  id="slTitle" style="width:200px" value="${go.sl_title}" required/>
											</div>											
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
													<label for="contactSubject">内容</label>
												<textarea name="slContent" class="form-control"  id="slContent" style="width:200px" required >${go.sl_Content}</textarea>
											</div>
										</div>									
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">金额</label>
												<input type="text" class="form-control" name="slPrice" id="slPrice" style="width:400px" value="${go.sl_price}" required/>												
											</div>
										</div>
										<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">时间</label>
												<input type="text" class="form-control" name="slTime" id="slTime"  style="width:400px" value="${go.sl_time}" required/>										
											</div>
										</div>							
											<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">
												<label for="contactSubject">图片地址</label>
												<input type="text" class="form-control" name="slUrl" id="slUrl" style="width:400px" value="${go.sl_url}" required/>
											<input type="hidden" value="${go.sl_id}" name="slId">
											</div>									
											<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">										
											<div class="form-group stylish-input">
												<button type="submit"  class="btn btn-default btn-round pull-right">修改</button>
											</div>
										</div>
											
										</div>											
										</div>
									</div>
									</form>
									</c:forEach>		
									<span style="font-size: 20px;padding-left: 50px;">第${pageSale.pageNumber}页</span>
							 <span style="font-size: 20px;padding-left: 50px;">共${pageSale.totalPage}页</span>
						     <a style="font-size: 20px;padding-left: 50px;" href="saleSQLservlet?action=page&pageNumber=1&pageSize=9" >首页</a>
						     <a style="font-size: 20px;padding-left: 50px;" href="saleSQLservlet?action=page&pageNumber=${pageSale.pageNumber-1}&pageSize=9" >上一页</a>
						     <a style="font-size: 20px;padding-left: 50px;" href="saleSQLservlet?action=page&pageNumber=${pageSale.pageNumber+1}&pageSize=9" >下一页</a>
						     <a style="font-size: 20px;padding-left: 50px;" href="saleSQLservlet?action=page&pageNumber=${pageSale.totalPage}&pageSize=9" >尾页</a>										
								</div>
								<div class="tab-pane fade" id="tab-3" >
								<span>${news}<%session.setAttribute("news",""); %></span>
								<form action="ADServlet?action=updateGame&game_id=${go.game_id}" id="form2" method="post" >
								<c:forEach var="go" items="${glist}" varStatus="stau" begin="0" end="4" >								
								
									<div class="col-xs-12 col-sm-12 col-md-5"  style="float: left; width:33%;">
											<div class="form-group stylish-input"> 
												<label for="contactSubject">${go.game_id}</label>
												<input class="form-control" name="gameName" id="gameName"  type="text" style="width:300px "  value="${go.game_name}">
												<input class="form-control" name="" id="" type="text" style="width:300px " value="${go.game_co}">
							                     <input type="hidden"  value="${go.game_id}" name="gameId" />
							                 </div>
							      </div>
										</c:forEach>								
										<!-- 2 -->
										<c:forEach var="go" items="${glist}" varStatus="stau" begin="5" end="9" >												
											<div class="col-xs-12 col-sm-12 col-md-5"  style="width:33%;">
											<div class="form-group stylish-input" > 
												<label for="contactSubject">${go.game_id}</label>
												<input class="form-control" name="gameName" id="gameName" type="text" style="width:300px " value="${go.game_name}">
												<input class="form-control" name="gameCo" id="gameCo" type="text" style="width:300px " value="${go.game_co}">
						                	     <input type="hidden"  value="${go.game_id}" name="gameId" />
						                	</div>
									</div>
										</c:forEach>
										<!-- 3-->	
										<c:forEach var="go" items="${glist}" varStatus="stau" begin="10" end="13" >												
												<div class="col-xs-12 col-sm-12 col-md-5"  style="width:33%;">
											<div class="form-group stylish-input"> 
												<label for="contactSubject">${go.game_id}</label>
												<input class="form-control" name="gameName" id="gameName"  type="text" style="width:300px "  value="${go.game_name}" required>
												<input class="form-control" name="gameCo" id="gameCo" type="text" style="width:300px " value="${go.game_co}" required>
						             	        <input type="hidden"  value="${go.game_id}" name="gameId" />
						             	</div>
							        </div>
										
										</c:forEach>	
												<section class="side-section">
									<h3 class="uppercase text-bold"><span class="text-xs">注意</span></h3>
										
									<div class="light-color text-xs">
									<button type="submit" class="btn btn-default btn-round pull-right">修改</button>
										<p>分类须谨慎修改,修改前须得到主管批准</p>
									</div>
								</section>		
								</form>
										</div>
										<div class="tab-pane fade" id="tab-4">
												<span>${newEn}<%session.setAttribute("newEn",""); %></span>
											<c:forEach var="go" items="${adlist}" varStatus="stau" >	
								<form action="ADServlet?action=update&ad_id=${go.ad_id}" id="form2" method="post">							
									<div class="panel-heading" >
										<h4 class="panel-title">											
											<a data-toggle="collapse" data-parent="#checkout-collapse" href="#${stau.index+400}">
												<label for="contactSubject">论坛专区</label>	<span class="step">${stau.index+1}</span>											
											</a>
										</h4>
									</div>									
									<div id="${stau.index+400}" class="panel-collapse collapse">
										<div class="panel-body">
									<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">
											<div class="form-group stylish-input">											
											<label>专区名称</label><input type="text" class="form-control" name="adName" id="adName" style="width:400px" value="${go.ad_name}" />											
											 <p><label>图片地址</label><input type="text" class="form-control" id="adName" style="width:400px" value="${go.ad_url}" name="adUrl" /></p>
										    <p><img alt="" src="${go.ad_url}"></p>
										    <input type="hidden"  value="${go.ad_id}" name="adId" required/>
											</div>									
											<div class="space10 visible-xs visible-sm"></div>
										<div class="col-xs-12 col-sm-12 col-md-7">										
											<div class="form-group stylish-input">
												<button type="submit"  class="btn btn-default btn-round pull-right">修改</button>
											</div>
										</div>
									
										</div>											
										</div>
									</div>
									</form>
										</c:forEach>			
								</div>
									</div>
									
						<!-- // SIDEBAR -->
							<div class="space40"></div>
							<div class="clearfix"></div>
		<!-- // SITE MAIN CONTENT -->
		
		<!-- SITE FOOTER -->
	<footer class="page-footer">
		
		<!-- WIDGET AREA -->
		<div class="widgets">
		
			
			
			
			
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
  </body>
</html>
