<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 지원css -->
<style>
.main {
    text-align: center;
    margin: 9% auto;
    width: 80%;
}
.main .careTitle p{
	font-size: 22px;
	font-family: 'S-Air';
    font-weight: 500;
	border-bottom: 1px solid #ccc;
	margin: 4% auto;
}
.main .careCard {
	display: flex;
    justify-content: flex-start;
    align-items: center;
    width: 600px;
    height: 200px;
    margin: 0 auto;
    border-radius: 10px;
    margin-top: 20px;
    border: 2px solid #68983b
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
.main .btns{
	margin: 1% auto;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class="main">
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

		<div class="btns">
			<button type="button"  class="btn btn-outline-success" onclick=  "location.href = 'carenoteForm.do'">작성하기</button>
		</div>
	</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>