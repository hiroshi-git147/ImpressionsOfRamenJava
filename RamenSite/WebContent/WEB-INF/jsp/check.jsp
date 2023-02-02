<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Ramen"%>
<% Ramen r = (Ramen) session.getAttribute("ramen"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>確認画面</title>
</head>
<body>
	<article id="survey">
		<form action="/RamenSite/ramenUser" method="get">
			<fieldset>

				<legend>入力確認</legend>

				<p>
					<%=r.getName()%>
					様の登録内容は、下記の内容でよろしいでしょうか？
				</p>
				<dl>

					<dt>氏名：</dt>
					<dd>
						<%=r.getName()%>
					</dd>

					<dt>性別：</dt>
					<dd>
						<%=r.getGender()%>
					</dd>

					<dt>年齢：</dt>
					<dd>
						<%=r.getAge()%>
						歳
					</dd>

					<dt>Eメールアドレス：</dt>
					<dd>
						<%=r.getEmail()%>
					</dd>

					<dt>一番好きなラーメン：</dt>
					<dd>
						<%=r.getFavorite()%>
					</dd>

					<dt>お好きなトッピング：</dt>
					<dd>

						<ul>
							<%
								if (r.getToppings() != null) {
									for (String topping : r.getToppings()) {
							%>
										<li><%=topping%></li>
							<%
									}
								} else { %>
									<li>トッピングなし</li>
							<% } %>
						</ul>
					</dd>

					<dt>ご意見・ご感想：</dt>
					<dd>
						<%=r.getImpression()%>
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
