<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/css/Style1.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript">
	
</script>
</HEAD>

<body>
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminAppoint_editover.action"
		method="post">
		&nbsp;

		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<input type="hidden" name="pid"
				value="<s:property value="model.pid"/>" />
			<input type="hidden" name="cid"
				value="<s:property value="model.coach.cid"/>" />
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>修改信息</STRONG> </strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					预约名称：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="pname" value="<s:property value="model.pname"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					人数：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="pnumber"
					value="<s:property value="model.pnumber"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					开始时间：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3">
			预定日期：	<input
					type="text" 
					value="<s:property value="model.pstarttime"/>"
					readonly="readonly" class="bg" />
			修改为：	<input
					type="date" name="pstarttime"
					value="<s:property value="model.pstarttime"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					剩余人数：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="premaining"
					value="<s:property value="model.premaining"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					发布日期：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					readonly="readonly" type="text" name="pdate"
					value="<s:property value="model.pdate"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					预约描述：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="pdesc" value="<s:property value="model.pdesc"/>"
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>

			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						class="button_ok">&#30830;&#23450;</button> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"></span></td>
			</tr>
		</table>
	</form>
</body>
</HTML>