<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ラーメン店アンケート</title>
</head>
<body>
	<form action="/RamenSite/RamenUser" method="post">
		<fieldset>
			<legend>ラーメン店アンケート</legend>
			<p>
				<span class="comment">※</span>は必須項目です
			</p>
			<dl>
				<dt>
					氏名<span class="comment">※</span>：
				</dt>
				<dd>
					<input type="text" name="name" size="20"
						maxlength="20" placeholder="全角10文字まで" required>
				</dd>
				<dt>性別：</dt>
				<dd>
					<label>
						<input type = "radio" name = "gender" value = "0" checked>男性
						<input type = "radio" name = "gender" value = "1">女性
					</label>
				</dd>

				<dt>年齢：</dt>
				<dd>
					<select name="age">
						 <% for(int i = 18; i <= 65; i++) { %>
							<option><%= i %></option>
						<% } %>
					</select>歳
				</dd>


				<dt>郵便番号：</dt>
				<dd>
					〒 <input type="number" id="zip1" name="zip1" max="999"
						placeholder="３桁"> - <input type="number" id="zip2"
						name="zip2" max="9999" placeholder="４桁">
				</dd>

				<dt>
					Eメールアドレス<span class="comment">※</span>：
				</dt>
				<dd>
					<input type="email" id="email" name="email" size="50"
						maxlength="255" placeholder="半角で入力してください" required>

				</dd>

				<dt>一番好きなラーメン：</dt>
				<dd>
					<select id="favorite" name="favorite">
						<% String[] str = {"醤油ラーメン", "豚骨ラーメン", "塩ラーメン", "味噌ラーメン"}; %>
						<% for(int i = 0; i < str.length; i++) { %>
							<option><%= str[i] %></option>
						<% } %>

					</select>
				</dd>

				<dt>お好きなトッピング(複数選択可)：</dt>
				<dd>
					<label> <input type="checkbox" name="topping" value="メンマー">メンマー
						<input type="checkbox" name="topping" value="のり">のり <input
						type="checkbox" name="topping" value="ネギ">ネギ
					</label>
				</dd>

				<dt>ご意見・ご感想：</dt>
				<dd>
					<textarea id="impression" name="impression" rows="5" cols="50"
						placeholder="ご自由にお書きください"></textarea>
				</dd>
			</dl>
			<p>
				<input type="submit" value="送信"> <input type="reset"
					value="取消">
			</p>
		</fieldset>
	</form>
</body>
</html>
