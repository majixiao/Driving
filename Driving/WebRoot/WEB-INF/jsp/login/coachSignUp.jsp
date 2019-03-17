<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<link href="../../../css/bootstrap.min.css" rel="stylesheet" />

<link href="../../../css/jcarousel.css" rel="stylesheet" />
<link href="../../../css/flexslider.css" rel="stylesheet" />
<link href="../../../css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="../../../css/fancybox/jquery.fancybox.css"
	type="text/css"></link>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">

<script src="js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style type="text/css">
A:hover {
	COLOR: #ff0000;
	TEXT-DECORATION: none
}
</style>
<script type="text/javascript">

function cphonecheck(){
    		 $.ajax({
		type: "POST",
        url: "${pageContext.request.contextPath}/coach_ajax",  
        data: "cphone="+$("#cphone").val(),
        dataType:"html",
        beforeSend: function(){
            $("#span_content").html("<font color='green'>数据处理中...</font>");
        },
        success: function(msg){
        
            $("#span_content").html(msg);
        }
    });  
    
  
}

function numberCheck(){

　　var re = /^[0-9]+.?[0-9]*$/; //判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/ 
　　var nubmer = document.getElementById("cage").value;

　　if (!re.test(nubmer)||number=="") {
　　　　alert("请输入数字");
　　　　document.getElementById(input).value = "";
　　　　
　　}


}
function check(){
var a=document.getElementById("re-password").value;
var b=document.getElementById("password").value;
if(a!=b){
alert("输入时请确保两次密码相同！")}

}
function change(){
var img=document.getElementById("checkimg");
img.src="${pageContext.request.contextPath}/checkImg?"+new Date().getTime();

}
</script>
</head>
<body>
<header> <%@ include file="../menu.jsp"%>
	</header>
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">教员注册</h2>
			</div>
		</div>
	</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">


				<!-- Start Sign In Form -->
				<form action="${pageContext.request.contextPath}/coach_registered"
					method="post" class="fh5co-form animate-box"
					data-animate-effect="fadeIn">
					<h2 style="float: left">教员注册</h2>
					<a href="${pageContext.request.contextPath}/registered_stuSignUp">
						<h3
							style="float: right; filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5;">学员注册</h3>
					</a>

					<div class="form-group">
						<label for="cname" class="sr-only">Name</label> <input type="text"
							class="form-control" id="cname" placeholder="姓名" name="cname"
							autocomplete="off" >
						<s:fielderror fieldName="cname"></s:fielderror>
					</div>
				
					<div class="form-group">
						<input type="text" class="form-control" id="cphone"
							placeholder="请填写手机号" name="cphone" onblur="cphonecheck()">
						<div id="span_content"></div>
						<s:fielderror fieldName="cphone"></s:fielderror>
					</div>
					<div class="form-group">
						<label for="描述" class="sr-only">描述</label> <input type="text"
							class="form-control" id="cdesc" placeholder="描述"
							autocomplete="off" name="cdesc" >
					</div>
						<div class="form-group">
						<label for="cage" class="sr-only">Age</label> <input type="text"
							class="form-control" id="cage" placeholder="年龄"
							autocomplete="off" name="cage" onblur="numberCheck()">
						<s:fielderror fieldName="cage"></s:fielderror>
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">Email</label> <input
							type="email" class="form-control" id="cemail" placeholder="qq邮箱"
							name="cemail" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="车牌号" class="sr-only">车牌号</label> <input type="text"
							class="form-control" id="cnumber" placeholder="车牌号"
							autocomplete="off" name="cnumber">
					</div>
					<div class="form-group">
						<label for="车型" class="sr-only">车型</label> <input type="text"
							class="form-control" id="cmodel" placeholder="车型"
							autocomplete="off" name="cmodel">
					</div>
					<div class="form-group">
						<label for="驾龄" class="sr-only">驾龄</label> <input type="text"
							class="form-control" id="cdrivetime" placeholder="驾龄 (3年)"
							autocomplete="off" name="cdrivetime">
					</div>



					<div class="form-group">
						<label for="password" class="sr-only">Password</label> <input
							type="password" class="form-control" id="password"
							placeholder="密码" autocomplete="off" name="cpwd">
						<s:fielderror fieldName="cpwd"></s:fielderror>
					</div>
					<div class="form-group">
						<label for="re-password" class="sr-only">Re-type Password</label>
						<input type="password" class="form-control" id="re-password"
							placeholder="重复密码" autocomplete="off"
							onblur="check()">
					</div>
					<div>
						性别： <input type="radio" name="csex" value="男" checked="checked" />男
						<input type="radio" name="csex" value="女" />女
					</div>
					<span>验证码:</span> <span class="fieldSet"> <input type="text"
						id="captcha" name="checkimg" class="text captcha" maxlength="4"
						autocomplete="off"><img id="checkimg"
						src="${pageContext.request.contextPath}/checkImg" title="点击更换验证码"
						onclick="change()"> </span> <font color="red"><s:actionerror></s:actionerror>
					</font>
					<div class="form-group"></div>
					<div class="form-group">
						<p>
							已经注册? <a
								href="${pageContext.request.contextPath}/login">登录</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="注册" class="btn btn-primary">
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


