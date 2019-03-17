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
				<td class="ta_01" align="center" bgColor="#afd1f3"><strong>教员列表</strong>
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
							<td align="center" width="5%">名字</td>
							<td width="8%" align="center">联系方式</td>
							<td width="3%" align="center">性别</td>
							<td width="3%" align="center">年龄</td>
							<td width="6%" align="center">车号</td>
							<td width="7%" align="center">车型</td>
							<td width="5%" align="center">驾龄</td>
							<td width="5%" align="center">简介</td>
							<td width="5%" align="center">密码</td>
							<td width="5%" align="center">邮箱</td>
							<td width="10%" align="center">所发预约</td>
							<td width="5%" align="center">注册日期</td>
							<td width="5%" align="center">审核状态</td>
							<td width="5%" align="center">编辑</td>
							<td width="5%" align="center">删除</td>
						</tr>
						<s:iterator var="p" value="pageBean.list" status="status">
							<tr onmouseover="this.style.backgroundColor = 'white'"
								onmouseout="this.style.backgroundColor = '#F5FAFE';">
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#status.count" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cname" /></td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%"><s:property
										value="#p.cphone" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="2%"><s:property
										value="#p.csex" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="3%"><s:property
										value="#p.cage" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="6%"><s:property
										value="#p.cnumber" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="7%"><s:property
										value="#p.cmodel" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cdrivetime" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cdesc" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cpwd" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cemail" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center"
									width="10%"><s:iterator value="#p.appointment" var="item">
										(<s:property value="#item.pid" />)
									</s:iterator></td>

								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:property
										value="#p.cdate" />
								</td>
								<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="5%"><s:if
										test="#p.cstate==0">
										<a
											href="${ pageContext.request.contextPath }/adminCoa_passOn?cid=<s:property value="#p.cid"/>"
											onclick="return confirm('确定通过审核？')"><font color="red">点击通过审核</font>
										</a>
									</s:if> <s:if test="#p.cstate==1">
										<a
											href="${ pageContext.request.contextPath }/adminCoa_passOut?cid=<s:property value="#p.cid"/>"
											onclick="return confirm('确定取消审核？该操作会删除该教员所有预约')">已通过(点击取消)</a>
									</s:if></td>

								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminCoa_edit?cid=<s:property value="#p.cid"/>">
										修改 </a>
								</td>

								<td align="center" style="HEIGHT: 22px"><a
									href="${ pageContext.request.contextPath }/adminCoa_delete?cid=<s:property value="#p.cid"/>"
									onclick="return confirm('确定删除？')"> 删除 </a>
								</td>
							</tr>
						</s:iterator>
					</table>
				</td>
			</tr>
			<tr align="center">
				<td colspan="7">第<s:property value="pageBean.page" />/<s:property
						value="pageBean.totalPage" />页 <s:if test="pageBean.page != 1">
						<a
							href="${ pageContext.request.contextPath }/adminCoa_findAll.action?page=1">首页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminCoa_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if> <s:if test="pageBean.page != pageBean.totalPage">
						<a
							href="${ pageContext.request.contextPath }/adminCoa_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a
							href="${ pageContext.request.contextPath }/adminCoa_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if>
				</td>
			</tr>
	</table>



</body>
</HTML>

