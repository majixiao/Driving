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
				<td class="ta_01" align="center" bgColor="#afd1f3"><strong>预约列表</strong>
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

							<td align="center" width="2%">序号</td>
							<td width="8%" align="center">预约编号</td>
							<td align="center" width="5%">预约名称</td>
							<td width="8%" align="center">人数</td>
							<td width="3%" align="center">考试日期</td>
							<td width="3%" align="center">剩余人数</td>
							<td width="6%" align="center">预约描述</td>
							<td width="7%" align="center">发布日期</td>
							<td width="7%" align="center">教练名称</td>
							<td width="5%" align="center">编辑</td>
							<td width="5%" align="center">删除</td>
						</tr>
						<s:iterator var="p" value="pageBean.list" status="status">
							<tr onmouseover="this.style.backgroundColor = 'white'"
								onmouseout="this.style.backgroundColor = '#F5FAFE';">
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#status.count" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.pid" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%"><s:property
										value="#p.pname" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="2%"><s:property
										value="#p.pnumber" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="3%"><s:property
										value="#p.pstarttime" /></td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="3%"><s:property
										value="#p.premaining" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="6%"><s:property
										value="#p.pdesc" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="7%"><s:property
										value="#p.pdate" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.coach.cname" /></td>


								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminAppoint_edit?pid=<s:property value="#p.pid"/>">
										修改 </a></td>

								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminAppoint_delete?pid=<s:property value="#p.pid"/>"
									onclick="return confirm('确定删除？')">删除
								</a></td>
							</tr>
						</s:iterator>
					</table></td>
			</tr>
			<tr align="center">
				<td colspan="7">第<s:property value="pageBean.page" />/<s:property
						value="pageBean.totalPage" />页 <s:if test="pageBean.page != 1">
						<a
							href="${ pageContext.request.contextPath }/adminAppoint_findAll.action?page=1">首页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminAppoint_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if> <s:if test="pageBean.page != pageBean.totalPage">
						<a
							href="${ pageContext.request.contextPath }/adminAppoint_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminAppoint_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if></td>
			</tr>
	</table>



</body>
</HTML>

