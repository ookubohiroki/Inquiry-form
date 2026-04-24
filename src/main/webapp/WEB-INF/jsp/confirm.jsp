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
		<input type="hidden" name="onamae" value=${onamae}>
		<input type="hidden" name="mail_address" value=${mail_address}>
		<input type="hidden" name="sex" value=${sex}>
		<input type="hidden" name="cates" value=${cates}>
		<input type="hidden" name="pref" value=${pref}>
		<input type="hidden" name="message" value=${message}>
		
		<h2>内容を確認し、間違いが無ければ送信してください</h2>
		名前：${onamae }<br>
		メールアドレス：${mail_address }<br>
		性別：${sex }<br>
		お問い合わせ種別：${cates }<br>
		住まいエリア：${pref }<br>
		メッセージ:<br>
		${message }<br>
		<input type="button" value="戻る" onclick="location.href='input.jsp'">
		<input type="submit" value="送信">
	</form>
</body>
</html>