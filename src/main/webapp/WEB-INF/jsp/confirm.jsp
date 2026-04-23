<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認画面</title>
</head>
<body>
	<form action="/contact/Thanks" method="post">
		
		<h2>内容を確認し、間違いが無ければ送信してください</h2>
		名前：<%= request.getParameter("onamae") %><br>
		メールアドレス：<%= request.getParameter("mail_addless") %>
		性別：<%= request.getAttribute("sex") %><br>
		お問い合わせ種別：<%= request.getAttribute("cates") %><br>
		住まいエリア：<%= request.getParameter("pref") %><br>
		メッセージ:<br>
		<%= request.getParameter("message") %><br>
		<input type="submit" value="送信">
	</form>
</body>
</html>