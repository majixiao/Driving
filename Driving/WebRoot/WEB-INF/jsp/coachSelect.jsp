<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<script type="text/javascript">
	function altRows(id) {
		if (document.getElementsByTagName) {

			var table = document.getElementById(id);
			var rows = table.getElementsByTagName("tr");

			for (i = 0; i < rows.length; i++) {
				if (i % 2 == 0) {
					rows[i].className = "evenrowcolor";
				} else {
					rows[i].className = "oddrowcolor";
				}
			}
		}
	}

	window.onload = function() {
		altRows('alternatecolor');
	}
	function select() {
		if (document.getElementById("cname").value != "")
			window.location.href = "${pageContext.request.contextPath}/students_selectBycname?cname="
					+ encodeURI(encodeURI(document.getElementById("cname").value));
		else {
			alert("请输入名字！！！");
		}
	}
</script>
<style type="text/css">
table.altrowstable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
}

table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

.oddrowcolor {
	background-color: #d4e3e5;
}

.evenrowcolor {
	background-color: #c3dde0;
}
</style>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
	<div id="wrapper">

		<!-- start header -->
		<header>
			<%@ include file="menu.jsp"%>
		</header>
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="pageTitle">教员信息</h2>
					</div>
				</div>
			</div>
		</section>
		<li></li> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
			align="center" placeholder="请输入教员姓名" id="cname"> <a
			style="
cursor:pointer" onclick="select()">查询</a>
		<li><s:actionerror></s:actionerror></li>
		<section id="content">
			<table class="altrowstable" id="alternatecolor"
				style="width:95%;margin-top:-40px;">
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>年龄</th>
					<th>联系电话</th>
					<th>车牌号</th>
					<th>车型</th>
					<th>驾龄</th>
					<th>简介</th>
					<th>注册时间</th>
				</tr>
				<s:iterator value="pageBean.list" var="coach" status="I">

					<tr>
						<td><s:property value="#I.index+1" />
						</td>
						<td><s:property value="#coach.cname" />
						</td>
						<td><s:property value="#coach.csex" />
						</td>
						<td><s:property value="#coach.cage" />
						</td>
						<td><s:property value="#coach.cphone" />
						</td>
						<td><s:property value="#coach.cnumber" />
						</td>
						<td><s:property value="#coach.cmodel" />
						</td>
						<td><s:property value="#coach.cdrivetime" />
						</td>
						<td><s:property value="#coach.cdesc" />
						</td>
						<td><s:property value="#coach.cdate" />
						</td>

					</tr>
				</s:iterator>

			</table>
			<li></li>
			<li></li> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<s:if test="pageBean.totalPage==1">
			  &nbsp&nbsp&nbsp 共1页
			</s:if>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<s:elseif test="pageBean.page==1">
				<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.page+1"/>">下一页</a>&nbsp&nbsp
			<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.totalPage"/>">尾页</a>
			&nbsp&nbsp第<s:property value="pageBean.page" />页/共<s:property
					value="pageBean.totalPage" />页
			</s:elseif>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<s:elseif test="pageBean.page>1&&pageBean.page<pageBean.totalPage">
				<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=1">首页</a>&nbsp&nbsp
			<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.page-1"/>">上一页</a>&nbsp&nbsp
			<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.page+1"/>">下一页</a>&nbsp&nbsp
			<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.totalPage"/>">尾页</a>&nbsp&nbsp
			&nbsp&nbsp第<s:property value="pageBean.page" />页/共<s:property
					value="pageBean.totalPage" />页
			</s:elseif>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<s:elseif test="pageBean.page==pageBean.totalPage">
				<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=1">首页</a>&nbsp&nbsp
			<a
					href="${pageContext.request.contextPath}/students_coachSelect?page=<s:property value="pageBean.page-1"/>">上一页</a>
			&nbsp&nbsp第<s:property value="pageBean.page" />页/共<s:property
					value="pageBean.totalPage" />页
			</s:elseif>
			<li></li>
		</section>
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
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i>
	</a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
	<script src="js/portfolio/setting.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
