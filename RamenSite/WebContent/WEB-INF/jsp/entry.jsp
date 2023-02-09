<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>登録完了画面</title>
</head>
<body>

	<article id="survey">
		<form action="/RamenSite/RamenUser" method="get">
			<fieldset>
				<legend>登録完了</legend>
				<p>
					<c:out value="${ramen.name}" />
					様の登録完了いたしました。
				</p>
			</fieldset>
			<input type="submit" value="戻る">
		</form>
	</article>

</body>
</html>
