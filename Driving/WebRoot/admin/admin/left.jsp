<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/admin/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/admin/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript:d.openALl();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/dtree.js"></script>
	<script type="text/javascript">

		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		d.add('0101','01','学员管理','','','mainFrame');
		d.add('010101','0101','全部学员','${pageContext.request.contextPath}/adminStu_findAll?page=1','','mainFrame');
		d.add('0102','01','教员管理','','','mainFrame');
		d.add('010201','0102','全部教员','${pageContext.request.contextPath}/adminCoa_findAll.action?page=1','','mainFrame');
		d.add('0103','01','预约信息管理','','','mainFrame');
		d.add('010301','0103','预约信息管理','${pageContext.request.contextPath}/adminAppoint_findAll.action?page=1','','mainFrame');
				document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
