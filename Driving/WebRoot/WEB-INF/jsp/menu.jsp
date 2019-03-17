<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>menu</title>
</head>
<body>
 <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <img src="img/logo.png" alt="logo"/>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="${pageContext.request.contextPath}/index">首页</a></li> 
						
                        
                        <s:if test="#session.student!=null">
                        <li><a><font color="black" size="4"><s:property value="#session.student.sname"></s:property></font></a></li>
                        <li><a href="${pageContext.request.contextPath}/students_loginOut"><font color="black">退出</font></a></li>
                        <li><a href="${pageContext.request.contextPath}/registered_updateStu"><font color="black">我的信息</font></a></li>
                      </s:if>
                         <s:if test="#session.coach!=null">
                        <li><a><font color="black" size="4"><s:property value="#session.coach.cname"></s:property>(教员)</font></a></li>
                        <li><a href="${pageContext.request.contextPath}/coach_loginOut"><font color="black">退出</font></a></li>
                        <li><a href="${pageContext.request.contextPath}/registered_updateCoach"><font color="black">我的信息</font></a></li>
                      </s:if>
                      <s:if test="#session.coach==null&&#session.student==null">
                      <li><a href="${pageContext.request.contextPath}/login"><font color="black">登录/注册</font></a></li>
                    </s:if>
                    </ul>
                </div>
            </div>
        </div>
</body>
</html>