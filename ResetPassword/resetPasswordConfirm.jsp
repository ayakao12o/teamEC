<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/table.css">
<link rel="stylesheet" href="./css/form.css">
<title>パスワード再設定確認画面</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<div id="contents">
		<h1>パスワード再設定確認画面</h1>

		<table class="vertical-list">
			<tr>
				<th><s:label value="ユーザーID" /></th>
				<td><div class="property">
						<s:property value="userId" />
					</div></td>
			</tr>

			<tr>
				<th><s:label value="新しいパスワード" /></th>
				<td><div class="property">
						<s:property value="concealedPassword" />
					</div></td>
			</tr>
		</table>

		<s:form action="ResetPasswordCompleteAction">
			<div class="submit_button">
				<s:submit class="button" value="パスワード再設定" />
			</div>
		</s:form>

		<s:form action="ResetPasswordAction">
			<div class="submit_button">
				<s:hidden name="backFlg" value="ok" />
				<s:submit class="button" value="戻る" />
			</div>
		</s:form>
	</div>
</body>
</html>