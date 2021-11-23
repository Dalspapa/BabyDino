<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 정보 수정</h1>
<form name="empUpdate" action="empUpdate.do">
<input type="hidden" name="idx" value="${ dto.idx }">
	<table border="1" width="300" cellspacing="0">
		<tr>
			<th>사원번호</th>
			<td>${ dto.idx }</td>
		</tr>
		<tr>
			<th>사원이름</th>
			<td>
				<input type="text" name="name" value="${ dto.name }">
			</td>
		</tr>
		<tr>
			<th>E-mail</th>
			<td>
				<input type="text" name="email" value="${ dto.email }">
			</td>
		</tr>
		<tr>
			<th>부서명</th>
			<td>
				<input type="text" name="dept" value="${ dto.dept }">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="사원수정">
				<input type="button" value="돌아가기" onclick="location.href='emp.do'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>