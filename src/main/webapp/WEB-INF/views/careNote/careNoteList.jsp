<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.wrapper {
	text-align: center;
}
.careTitle {
	font-size: 25px;
	font-weight: bold;
	border-bottom: 1px solid #ccc;
}
.careCard {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	width: 600px;
	height: 200px;
	background-color: #ccc;
	margin: 0 auto;
	border-radius: 10px;
	margin-top: 20px;
}
.image {
	width: 200px;
    height: 100px;
    border-radius: 50%;
    overflow: hidden;
}
.content {
	width: 400px;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<div class="wrapper">
		<div class="careTitle">
			<p>돌봄노트</p>
		</div>

		<c:forEach var="carenote" items = "${carenoteList}">
		<div>
			<div class="careCard">
				<div class="image">#이미지</div>
				<div class="content">${carenote.care_time}<br/>${carenote.c_content}</div>
			</div>
		</div>
		</c:forEach>
	</div>


	<div>
		<a href="carenoteForm.do">작성하기</a>
	</div>
<%@include file="/footer.jsp" %>
</body>
</html>