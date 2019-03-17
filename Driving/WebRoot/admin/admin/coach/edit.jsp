<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/css/Style1.css"
	type="text/css" rel="stylesheet">
</HEAD>

<body>
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminCoa_editover.action"
		method="post">
		&nbsp;
		
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<input type="hidden" name="cid"
				value="<s:property value="model.cid"/>" />
				<input type="hidden" name="cstate"
				value="<s:property value="model.cstate"/>" />
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>修改信息</STRONG> </strong>
				</td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					教员名称：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cname" value="<s:property value="model.cname"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					电话：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cphone"
					value="<s:property value="model.cphone"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					性别：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="csex" value="<s:property value="model.csex"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					年龄：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cage" value="<s:property value="model.cage"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车牌号：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cnumber" value="<s:property value="model.cnumber"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车型：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cmodel" value="<s:property value="model.cmodel"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					驾龄：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cdrivetime"
					value="<s:property value="model.cdrivetime"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					简介：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cdesc" value="<s:property value="model.cdesc"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					注册日期：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					readonly="readonly" type="text" name="cdate"
					value="<s:property value="model.cdate"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					邮箱：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cemail"
					value="<s:property value="model.cemail"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					密码：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cpwd" value="<s:property value="model.cpwd"/>"
					id="userAction_save_do_logonName" class="bg" />
				</td>

			</tr>
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						class="button_ok">&#30830;&#23450;</button> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"></span>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>