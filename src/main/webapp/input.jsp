<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせフォーム</title>
</head>

<body>
	<h1>お問い合わせ内容</h1>
	<form action="/contact/Confirm" method="post">
		名前：<input type="text" name="onamae"><br>
		メールアドレス：<input type="email" name="mail_address"><br>
		性別：
		<input type="radio" name="sex" value="male">男性
		<input type="radio" name="sex" value="female">女性<br>
		お問い合わせ種別：<br>
		<input type="checkbox" name="cates" value="製品について">製品について<br>
		<input type="checkbox" name="cates" value="サービスについて">サービスについて<br>
		<input type="checkbox" name="cates" value="採用について">採用について<br>
		<input type="checkbox" name="cates" value="その他">その他<br>
		住まいエリア：
		<select name="pref" size="1">
			<option value="北海道">北海道</option>
			<option value="東北">東北</option>
			<option value="関東">関東</option>
			<option value="中部">中部</option>
			<option value="近畿">近畿</option>
			<option value="中国">中国</option>
			<option value="四国">四国</option>
			<option value="九州・沖縄">九州・沖縄</option>
		</select><br>
		メッセージ<br>
		<textarea name="message" rows="5" cols="50">ここに入力</textarea><br>
		<input type="submit" value="送信">
	</form>
</body>
</html>