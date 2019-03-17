<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/Style1.css"
	rel="stylesheet" type="text/css" />
<script language="javascript"
	src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript">
	function addCategory() {
		window.location.href = "${pageContext.request.contextPath}/admin/category/add.jsp";
	}
</script>
</HEAD>
<body>
	<br>
	<table cellSpacing="1" cellPadding="0" width="100%" align="center"
		bgColor="#f5fafe" border="0">
		<TBODY>
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3"><strong>学员列表</strong>
				</TD>
			</tr>
			<tr>
				<td class="ta_01" align="right"></td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgColor="#f5fafe">
					<table cellspacing="0" cellpadding="1" rules="all"
						bordercolor="gray" border="1" id="DataGrid1"
						style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
						<tr
							style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

							<td align="center" width="5%">序号</td>
							<td align="center" width="5%">名字</td>
							<td width="10%" align="center">联系方式</td>
							<td width="10%" align="center">性别</td>
							<td width="10%" align="center">年龄</td>
							<td width="10%" align="center">邮箱</td>
							<td width="10%" align="center">密码</td>
							<td width="10%" align="center">预约编号</td>
							<td width="10%" align="center">编辑</td>
							<td width="10%" align="center">删除</td>
						</tr>
						<s:iterator var="p" value="pageBean.list" status="status">
							<tr onmouseover="this.style.backgroundColor = 'white'"
								onmouseout="this.style.backgroundColor = '#F5FAFE';">
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#status.count" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.sname" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.sphone" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.ssex" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.sage" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.semail" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:property value="#p.spw" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:iterator value="#p.records" var="item">
										(<s:property value="#item.appointment.pid" />)
									</s:iterator>
								</td>
								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminStu_edit?sid=<s:property value="#p.sid"/>">
										修改 </a></td>

								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminStu_delete?sid=<s:property value="#p.sid"/>"
									onclick="return confirm('确定删除？')"> 删除 </a></td>
							</tr>
						</s:iterator>
					</table></td>
			</tr>
			<tr align="center">
				<td colspan="7">第<s:property value="pageBean.page" />/<s:property
						value="pageBean.totalPage" />页 <s:if test="pageBean.page != 1">
						<a
							href="${ pageContext.request.contextPath }/adminStu_findAll.action?page=1">首页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminStu_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if> <s:if test="pageBean.page != pageBean.totalPage">
						<a
							href="${ pageContext.request.contextPath }/adminStu_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminStu_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if></td>
			</tr>
	</table>



</body>
</HTML>

