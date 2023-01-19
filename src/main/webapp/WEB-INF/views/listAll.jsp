<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>List</title>
</head>
<body>
	<form action="Register" method="get">
		<table border="1" style="width: 880px;">
			<tr>
	        <td width="77">
	            <p align="center">글번호</p>
	        </td>
	
	        <td width="327">
	            <p align="center">제목</p>
	        </td>
	        <td width="197">
	            <p align="center">작성자</p>
	        </td>
	
	        <td width="155">
	            <p align="center">작성일</p>
	        </td>
	        <td width="90">
	            <p align="center">조회수</p>
	        </td>
	        </tr>
	        
	        <c:forEach items="${list }" var="boardVO">
	        <tr>
	        <td>${boardVO.no }</td>
	        <td><a href="/Read?no=${boardVO.no }">${boardVO.title }</a></td>
	        <td>${boardVO.writer }</td>
	        <td><fmt:formatDate value="${boardVO.regDate }"
	        					pattern="yyyy-MM-dd HH:mm"/></td>
	        <td><span class="badge bg-red">${boardVO.hit }</span></td>
	        </tr>
	        </c:forEach>
		</table>
		
		<button type="submit">글쓰기</button>
	</form>
</body>
</html>