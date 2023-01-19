<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read</title>
</head>
<body>
	<form>
	<p>
		<label>글번호</label> <input type="text" name="no" value="${boardVO.no }"
			readonly="readonly">
	</p>
	<p>
		<label>제목</label> <input type="text" name="title"
			style="background-color: #B0E0E6;" value="${boardVO.title}"
			readonly="readonly">
	</p>
	<p>
		<label>작성자</label> <input type="text" name="writer" size="15"
			value="${boardVO.writer}" readonly="readonly">
		<input type="hidden" name="password" id="password" value="${boardVO.password }">
	<p>
		<label>내용</label>
		<textarea name=content rows="10" cols="70"
			style="background-color: #B0E0E6;" readonly="readonly">${boardVO.content}</textarea>
		<br>

		<button type="submit" onclick="modifyAction()">수정</button>
		<button type="submit" onclick="removeAction()">삭제</button>
		<button type="submit" formaction="ListAll" formmethod="get">목록</button>
	</form>
	
	<!-- 자바 스크립트 파일 외부 참조 -->
	<script type="text/javascript" src="<c:url value='resources/JavaScript/checkPassword.js?ver=<%=System.currentTimeMillis() %>'/>"></script>
</body>
</html>

