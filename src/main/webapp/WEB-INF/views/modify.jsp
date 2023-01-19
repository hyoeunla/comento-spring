<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify</title>
</head>
<body>
	<h4>글수정 페이지</h4>
	<form action="Modify" method="post">
		<p>
			<label>글번호</label>
			<input type="text" name="no" value="${boardVO.no }" readonly="readonly">
		</p>
		<p>
			<label>제목</label>
			<input type="text" name="title" value="${boardVO.title }">
		</p>
		<p>
			<label>작성자</label>
			<input type="text" name="writer" value="${boardVO.writer }" readonly="readonly">
		</p>
		<label>내용</label>
		<textarea name="content" rows="10" cols="70">${boardVO.content }</textarea>
		
		<button type="submit">완료</button>
	</form>
</body>
</html>