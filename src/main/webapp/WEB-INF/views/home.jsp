<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>

<body>
<form action="ListAll" method="get">
<button type="submit">CRUD 게시판 가기</button>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</form>
</body>

</html>
