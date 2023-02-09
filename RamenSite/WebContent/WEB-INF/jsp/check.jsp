<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>確認画面</title>
</head>
<body>
	<article id="survey">
		<form action="/RamenSite/RamenUser" method="get">
			<fieldset>

				<legend>入力確認</legend>

				<p>
					<c:out value = "${ramen.name}" />
					様の登録内容は、下記の内容でよろしいでしょうか？
				</p>
				<dl>

					<dt>氏名：</dt>
					<dd>
						<c:out value = "${ramen.name}" />
					</dd>

					<dt>性別：</dt>
					<dd>
						<c:out value = "${ramen.gender}" />
					</dd>

					<dt>年齢：</dt>
					<dd>
						<c:out value = "${ramen.age}" />
						歳
					</dd>

					<dt>Eメールアドレス：</dt>
					<dd>
						<c:out value = "${ramen.email}" />
					</dd>

					<dt>一番好きなラーメン：</dt>
					<dd>
						<c:out value = "${ramen.favorite}" />
					</dd>

					<dt>お好きなトッピング：</dt>
					<dd>

						<ul>
							<c:choose>
								<c:when test="${not empty ramen.toppings}" >
									<c:forEach var = "topping" items = "${ramen.toppings}">
										<li><c:out value = "${topping}" /></li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<li>トッピングなし</li>
								</c:otherwise>
							</c:choose>

						</ul>
					</dd>

					<dt>ご意見・ご感想：</dt>
					<dd>
						<c:out value = "${ramen.impression}" />
					</dd>
				</dl>
				<p>
					<input type="submit" value="確定" name="action">
  	    	<input type="reset" value="修正" id="back" >
				</p>
			</fieldset>
		</form>
	</article>

	<script>
		document.getElementById('back').addEventListener('click',back);
		function back(){ history.back(); }
	</script>
</body>
</html>
