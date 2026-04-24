<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>お問い合わせありがとうございました</h2>
	名前：${onamae }<br>
	メールアドレス：${mail_address }<br>
	性別：${sex }<br>
	お問い合わせ種別：${cates }<br>
	住まいエリア：${pref }<br>
	メッセージ:<br>
	${message }<br>
	<input type="button" value="戻る" onclick="location.href='input.jsp'">
</body>
</html>