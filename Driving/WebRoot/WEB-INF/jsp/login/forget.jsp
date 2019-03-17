<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Minimal and Clean Sign up / Login and Forgot Form by
	FreeHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<header> <%@ include file="../menu.jsp"%>
	</header>
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">忘记密码</h2>
			</div>
		</div>
	</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">


				<!-- Start Sign In Form -->
				<form action="${pageContext.request.contextPath}/page_sendEmail" class="fh5co-form animate-box"
					data-animate-effect="fadeIn">
					<h2>Forgot Password</h2>

					<div class="form-group">
						<div class="alert alert-success" role="alert">通过邮件的方式发送到你的邮箱.</div>
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">Email</label> <input
							type="text" class="form-control" id="phone" name="phone" placeholder="手 机 号"
							autocomplete="off">
					</div>
					<div>
						类别： <input type="radio" name="kind" value="stu" checked="checked" />学员
						<input type="radio" name="kind" value="coach" />教练
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<input type="submit" value="发送邮件" class="btn btn-primary">
					</div>
					<h3>
						<a href="${pageContext.request.contextPath}/index">&nbsp
							返回</a>
					</h3>

				</form>
				<!-- END Sign In Form -->


			</div>
		</div>

	</div>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">联系我们</h5>
					<address>
						<strong>地点</strong><br> 中国
					</address>
					<p>
						<i class="icon-phone"></i>456-789 - 1255-12584 <br> <i
							class="icon-envelope-alt"></i> email@驾校.com
					</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">相关链接</h5>
					<ul class="link-list">
						<li><a href="#">最新动态</a></li>
						<li><a href="#">组织与部门</a></li>

					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">最近文章</h5>
					<ul class="link-list">
						<li><a
							href="http://auto.ifeng.com/quanmeiti/20190312/1268977.shtml">为什么驾校的车用离合就可以走，自己的车却不行</a>
						</li>

					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">新闻活动</h5>
					<ul class="link-list">
						<li><a
							href="http://sh.qihoo.com/pc/9769c52e20ccad5b2?cota=3&sign=360_e39369d1&refer_scene=so_54">驾照考试中要想快速学会科目二，你有必要知道的三个为什么</a>
						</li>
						<li><a
							href="http://sh.qihoo.com/pc/93f9ebc3c5babb6ef?cota=3&sign=360_e39369d1&refer_scene=so_54">电动车驾照考试费用公布，有3个考试科目，无证驾驶一律扣人扣车</a>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>驾校是能使人掌握驾驶技术，并教会人安全驾驶并协助其通过车管部门的考试取得驾驶证的培训单位。</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i
								class="fa fa-facebook"></i> </a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i
								class="fa fa-twitter"></i> </a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i
								class="fa fa-linkedin"></i> </a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i
								class="fa fa-pinterest"></i> </a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i
								class="fa fa-google-plus"></i> </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

</body>
</html>

