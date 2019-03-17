<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>驾校考试预约系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />

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
		<section id="featured">

			<!-- Slider -->
			<div id="main-slider" class="flexslider">
				<ul class="slides">
					<li><img src="img/slides/1.jpg" alt="" />
						<div class="flex-caption">
							<div class="item_introtext">
								<strong>驾校网上预约考试</strong>
								<p>
									Driving school online booking test<br>
									<s:actionmessage cssStyle="color:red"></s:actionmessage>
								</p>
							</div>
						</div></li>
					<li><img src="img/slides/2.jpg" alt="" />
						<div class="flex-caption">
							<div class="item_introtext">
								<strong>驾校网上预约考试</strong>
								<p>

									Driving school online booking test <br>
									<s:actionmessage cssStyle="color:red"></s:actionmessage>
								</p>
							</div>
						</div></li>
					<li><img src="img/slides/3.jpg" alt="" />
						<div class="flex-caption">
							<div class="item_introtext">
								<strong>驾校网上预约考试</strong>
								<p>
									Driving school online booking test <br>
									<s:actionmessage cssStyle="color:red"></s:actionmessage>
								</p>
							</div>
						</div></li>
				</ul>
			</div>
			<!-- end slider -->

		</section>
		<section class="callaction">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="aligncenter">
							<h1 class="aligncenter">欢&nbsp; &nbsp; 迎&nbsp; &nbsp;
								你&nbsp; &nbsp; 的&nbsp; &nbsp; 到&nbsp; &nbsp; 来</h1>
							<span class="clear spacer_responsive_hide_mobile "
								style="height:13px;display:block;"></span>
							<div class="aligncenter">
								<h1 class="aligncenter"></h1>
								<span class="clear spacer_responsive_hide_mobile "
									style="height:13px;display:block;"></span>
								遵守驾校的各项规章制度，认真学习，刻苦钻研，勤学苦练，努力完成各项学习任务;尊敬老师，团结同学，服从管理
								;严格作息制度，不迟到，不早退，不无故缺课; 讲文明，守纪律，讲道德，讲卫生，不准打架斗殴，严禁赌博酗酒，严禁酒后练车驾车;
								爱护公物，丢失损坏物品照价赔偿; 学员训练时，禁止：穿拖鞋，高跟鞋，戴墨镜，戴手套，抽烟，打手机，穿裙子等有碍驾驶操作的行为;
								严格遵守交通法规，未经教练允许，不准私自启动或单独驾驶教练车，一经发现将严肃处理。
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="content">


			<div class="container">
				<div class="row">
					<div class="skill-home">
						<div class="skill-home-solid clearfix">
							<s:if test="#session.student==null&&#session.coach==null">
								<a
									href="${pageContext.request.contextPath}/students_lookAppointment?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c1"><i class="fa fa-trophy"></i> </span>
										<div class="box-area">
											<h3>查看科目信息</h3>
										</div>
									</div> </a>

								<a href="#">
									<div class="col-md-3 text-center">
										<span class="icons c2"><i class="fa fa-picture-o"></i>
										</span>
										<div class="box-area">
											<h3>考试预约(请先登录)</h3>
										</div>
									</div> </a>

							</s:if>
							<s:if test="#session.student!=null&&#session.coach==null">
								<a
									href="${pageContext.request.contextPath}/students_stulookAppointment?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c1"><i class="fa fa-trophy"></i> </span>
										<div class="box-area">
											<h3>查看科目信息</h3>
										</div>
									</div> </a>

								<a
									href="${pageContext.request.contextPath}/students_stuRecordAppointment?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c2"><i class="fa fa-picture-o"></i>
										</span>
										<div class="box-area">
											<h3>考试预约</h3>
										</div>
									</div> </a>
								<a
									href="${pageContext.request.contextPath}/record_selectRecord?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c3"><i class="fa fa-desktop"></i> </span>
										<div class="box-area">
											<h3>我的预约</h3>
										</div>
									</div> </a>
								<a
									href="${pageContext.request.contextPath}/students_coachSelect?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c4"><i class="fa fa-globe"></i> </span>
										<div class="box-area">
											<h3>教员信息</h3>
										</div>
									</div> </a>
							</s:if>
							<s:if test="#session.student==null&&#session.coach!=null">
								<a
									href="${pageContext.request.contextPath}/appointment_selectAppointment?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c1"><i class="fa fa-trophy"></i> </span>
										<div class="box-area">
											<h3>查询预约记录</h3>
										</div>
									</div> </a>

								<a
									href="${pageContext.request.contextPath}/page_studentsSelect?page=1">
									<div class="col-md-3 text-center">
										<span class="icons c2"><i class="fa fa-picture-o"></i>
										</span>
										<div class="box-area">
											<h3>查询学员信息</h3>
										</div>
									</div> </a>
								<a
									href="${pageContext.request.contextPath}/page_editAppointment">
									<div class="col-md-3 text-center">
										<span class="icons c3"><i class="fa fa-desktop"></i> </span>
										<div class="box-area">
											<h3>编辑预约信息</h3>
										</div>
									</div> </a>

							</s:if>
						</div>

					</div>

				</div>


			</div>
		</section>
		<div class="testimonial-area">
			<div class="testimonial-solid">
				<div class="container">
					<div class="testi-icon-area">
						<div class="quote">
							<i class="fa fa-microphone"></i>
						</div>
					</div>
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class=""><a href="#"></a></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"
								class=""><a href="#"></a></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"
								class="active"><a href="#"></a></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"
								class=""><a href="#"></a></li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
								<p>请勿带小孩及外来人员来校训练</p>
								<p>
									<b>- 驾校管理处 -</b>
								</p>
							</div>
							<div class="item">
								<p>严禁学员对考官、教练员、驾校工作人员等行贿送礼。</p>
								<p>
									<b>- 驾校管理处 -</b>
								</p>
							</div>
							<div class="item active">
								<p>严禁请客送礼等不正之风，建立新型教学关系。</p>
								<p>
									<b>- 驾校管理处 -</b>
								</p>
							</div>
							<div class="item">
								<p>三人行,必有我师焉</p>
								<p>
									<b>- 学员守则 -</b>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="tlinks">
			Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<section class="courses">
			<div class="container">

				<div class="row">
					<div class="col-lg-12">
						<div class="aligncenter">
							<h2 class="aligncenter">
								相关信息
								</h1>
								<span class="clear spacer_responsive_hide_mobile "
									style="height:13px;display:block;"></span>驾校就是能使人掌握驾驶技术，并教会人安全驾驶文明开车并协助其通过车管部门的考试取得驾驶证的培训单位。按目录分类应归为交通运输行业里的培训类单位，但由于市场化程度高，更合理的方法应是归为第三产业里的服务行业。一般指机动车驾驶人培训学校，有时飞行员驾驶培训学校也可简称为驾校。










							
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>根据《中华人民共和国道路交通安全法》第二十条规定，"机动车的驾驶培训实行社会化，由交通主管部门对驾驶培训学校、驾驶培训班实行资格管理"。

								根据《中华人民共和国道路交通安全法》第十九条规定，"驾驶机动车，应当依法取得机动车驾驶证。申请机动车驾驶证，应当符合国务院公安部门规定的驾驶许可条件;经考试合格后，由公安机关交通管理部门发给相应类别的机动车驾驶证"。

								因此，驾校的主管部门是交通运输部和公安部。</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>1、申请小型汽车、小型自动挡汽车、残疾人专用小型自动挡载客汽车、轻便摩托车准驾车型的，在18周岁以上、70周岁以下;

								2、申请低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车或者轮式自行机械车准驾车型的，在18周岁以上，60周岁以下;

								3、申请城市公交车、大型货车、无轨电车或者有轨电车准驾车型的，在20周岁以上，50周岁以下;

								4、申请中型客车准驾车型的，在21周岁以上，50周岁以下; 5、申请牵引车准驾车型的，在24周岁以上，50周岁以下;

								6、申请大型客车准驾车型的，在26周岁以上，50周岁以下。</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>以下条件不得申请机动车驾驶证:

								1.有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的;

								2.吸食、注射毒品、长期服用依赖性精神药品成瘾尚未戒除的; 3.吊销机动车驾驶证未满二年的;

								4.造成交通事故后逃逸被吊销机动车驾驶证的; 5.驾驶许可依法被撤销未满三年的; 6.法律、行政法规规定的其他情形。</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>掌握道路交通法律、法规及道路交通信号的规定;培养安全礼让、文明驾驶的驾驶道德;了解机动车基本知识;了解典型道路、恶劣气象条件下的安全驾驶知识及紧急情况的应急处置知识;掌握正确的伤员急救知识;了解常见危险物品知识;掌握基础的驾驶操作要领。</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>掌握车辆使用的相关知识;熟练掌握场地和场内道路驾驶的基本要领和方法，准确地控制车辆的行驶位置、速度和路线。</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="textbox">
							<h3>法律守则</h3>
							<p>掌握车辆通行的规则:了解行人，非机动车的动态特点及险情的预测和分析方法:熟练掌握一般道路和夜间驾驶方法，能够根据不同的道路交通善安全驾驶;培养预见性的安全驾驶意识。</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer> </footer>
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
	<script src="js/owl-carousel/owl.carousel.js"></script>
</body>
</html>