<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Ramen"%>

<%
	Ramen r = (Ramen) session.getAttribute("ramenUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>確認画面</title>
</head>
<body>
	<fieldset>
		<legend>入力確認</legend>
		<p>
			<%= r.getName() %>
			様の登録内容は、下記の内容でよろしいでしょうか？
		</p>
		<dl>
			<dt>氏名：</dt>
			<dd>
				<%= r.getName() %>
			</dd>



			<dt>年齢：</dt>
			<dd>
				<%= r.getAge() %>
				歳
			</dd>



			<dt>Eメールアドレス：</dt>
			<dd>
				<%= r.getEmail() %>
			</dd>

			<dt>一番好きなラーメン：</dt>
			<dd>
				<%= r.getFavorite() %>
			</dd>

			<dt>お好きなトッピング：</dt>
			<dd>
				<ul>
					<li><%= r.getToppings() %></li>
				</ul>
			</dd>

			<dt>ご意見・ご感想：</dt>
			<dd>
				<%= r.getImpression() %>
			</dd>
		</dl>
		<p>
			<a href="/RamenSite/RamenUser">戻る</a> <a
				href="/RamenSite/RamenUser?action=done">投稿</a>

		</p>
	</fieldset>
</body>
</html>
