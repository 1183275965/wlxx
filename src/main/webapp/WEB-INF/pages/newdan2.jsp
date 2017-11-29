<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<head>
<meta charset="utf-8">
<title>物流信息管理系统</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">


<link rel="stylesheet" href="${ctx}/staticfile/assets/css/slick.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/slick-theme.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/animate.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/fonticons.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/bootstrap.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/magnific-popup.css">
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/bootsnav.css">


<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="${ctx}/staticfile/assets/css/responsive.css" />
<script type="text/javascript" src="${ctx}/staticfile/js/tab.js">
</script>

		<script type="text/javascript">
function check() {
	if (document.getElementById("chufa").value==""){
		alert("请输入出发地联系方式");
		return false;
	}
	if (document.getElementById("mudi").value==""){
		alert("请输入目的地联系方式");
		return false;
	}
	if (document.getElementById("fahuoren").value==""){
		alert("请输入发货人信息");
		return false;
	}
	if (document.getElementById("shouhuoren").value==""){
		alert("请输入收货人信息");
		return false;
	}
 
	 

	return true;

}
</script>
<script src="${ctx}/staticfile/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">


<!-- Preloader -->
<div id="loading">
	<div id="loading-center">
		<div id="loading-center-absolute">
			<div class="object" id="object_one"></div>
			<div class="object" id="object_two"></div>
			<div class="object" id="object_three"></div>
			<div class="object" id="object_four"></div>
		</div>
	</div>
</div><!--End off Preloader -->


<div class="culmn">
	<!--Home page style-->


	<nav class="navbar navbar-default navbar-fixed white no-background bootsnav">
		<!-- Start Top Search -->
		<div class="top-search">
			<div class="container">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-search"></i></span>
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
				</div>
			</div>
	  </div>
		<!-- End Top Search -->

		<div class="container">    
		
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu" >
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="#">

					<!--<img src="assets/images/logo.png" class="logo logo-display m-top-10" alt="">-->
					<img src="${ctx}/staticfile/assets/images/logo.gif" class="logo logo-scrolled" alt="">

				</a>
			</div>
		
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
						
				<c:if test="${empty user }">
					<li><a href="index.action"><font size="4">首页</font></a></li> 
					<li><a href="beforelogin.action"><font size="4">立即登录</font></a></li>                    
					<li><a href="register.action"><font size="4">立即注册</font></a></li>
				</c:if>                  
					
			<c:if test="${not empty user }">
			<li><a href="index.action"><font size="4">首页</font></a></li> 
					<li><a href="#"><font size="4">欢迎您：${user.name }</font></a></li>
					<li><a href="logout.action"><font size="4">注销</font></a></li>
					<li><a href="downorder.action"><font size="4">在线下单</font></a></li>
				
			</c:if>             
				
				</ul>
			</div><!-- /.navbar-collapse -->
		</div>  


		<!-- Start Side Menu 
	 
		<!-- End Side Menu -->

	</nav>


	<!--Home Sections-->

	<section id="hello" class="home bg-mega">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="main_home">
					<div class="home_text">
						<h1 class="text-white">欢迎使用<br /> 物流信息管理系统</h1>
					</div>

					<!--<div class="home_btns m-top-40">
						<a href="#" target="_blank" class="btn btn-primary m-top-20">GET STARTED</a>
						<a href="#" target="_blank" class="btn btn-default m-top-20">DOWNLOAD NOW</a>
					</div> -->

				</div>
			</div><!--End off row-->
		</div><!--End off container -->
	</section> <!--End off Home Sections-->

	<!--About Sections-->
	<section id="about" class="about roomy-100">
		<div class="container">
			<div class="row">
				<div class="main_about">
						<h2>我的运单</h2>
					<div class="col-md-6">
						<form id="form1" name="form1" method="post"
										action="AddYundan.action" onsubmit="return check()">
										<p class="tips">
											  
										</p>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													单号：
												</td>
												<td>
													<input type="text" name="danHao" id="danhao"
														class="text_input text150" value="${danhao }" readonly="readonly"/>
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													出发地联系方式：
												</td>
												<td>
													<input type="text" name="chuFadi" id="chufa" 
														class="text_input text300" />(格式：地址,电话)
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													目的地联系方式：
												</td>
												<td>
													<input type="text" name="muDidi" id="mudi"
														class="text_input text300" />(格式：地址,电话)
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													发货人：
												</td>
												<td>
													<input type="text" name="faHuoRen" id="fahuoren"
														class="text_input text150" />
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>


											<tr>
												<td class="left_name">
													收货人：
												</td>
												<td>
													<input type="text" name="shouhuoren" id="shouhuoren"
														class="text_input text150" />
													<input type="text" name="userName" value="${user.name}" hidden="hidden"/>
													<span class="red">*</span>	

												</td>
											</tr>

											 

											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													<input type="submit"   value="下单" name="button" id="button"
														 />
												</td>
											</tr>
										</table>
									</form>
					</div>
				</div>
			</div>
			<!--End off row-->
		</div><!--End off container -->
		


	<!-- scroll up-->
	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div><!-- End off scroll up -->


	<footer id="footer" class="footer bg-black">
		<div class="container">
			<div class="row">
				<div class="main_footer text-center p-top-40 p-bottom-30">
					<p class="wow fadeInRight" data-wow-duration="1s">Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
				</div>
			</div>
		</div>
	</footer>




</div>

<!-- JS includes -->

<script src="${ctx}/staticfile/assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="${ctx}/staticfile/assets/js/vendor/bootstrap.min.js"></script>

<script src="${ctx}/staticfile/assets/js/jquery.magnific-popup.js"></script>
<script src="${ctx}/staticfile/assets/js/jquery.easing.1.3.js"></script>
<script src="${ctx}/staticfile/assets/js/slick.min.js"></script>
<script src="${ctx}/staticfile/assets/js/jquery.collapse.js"></script>
<script src="${ctx}/staticfile/assets/js/bootsnav.js"></script>

<!-- paradise slider js -->
<script src="${ctx}/staticfile/assets/js/plugins.js"></script>
<script src="${ctx}/staticfile/assets/js/main.js"></script>

</body>
</html>