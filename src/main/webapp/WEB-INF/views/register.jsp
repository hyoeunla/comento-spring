<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write</title>
</head>
<body>
	<form action="Register" method="post">
		<p>
			<label>제목</label>
			<input type="text" name="title">
		</p>
		<p>
			<label>작성자</label>
			<input type="text" name="writer" size="15">
		</p>
		<p>
			<label>비밀번호</label>
			<input type="password" name="password" size="15">
		</p>
		<p>
			<label>내용</label>
		</p>
		<textarea rows="15" cols="65" name="content"></textarea>
		<button type="submit">등록</button>
	</form>
</body>
</html>