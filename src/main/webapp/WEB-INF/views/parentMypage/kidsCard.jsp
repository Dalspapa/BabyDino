<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>아  기  공  룡</title>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
}
li {
  list-style: none;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
a:link, a:visited {
  color: #333;
  text-decoration: none;
}
.wrapperk {
	margin: 130px auto;
	font-family: 'S-Air';
	text-align: center;
}
.title {
	font-size: 2.5rem;
	font-weight: bold;
	margin-bottom: 10px;
}
.cardList {
	width: 500px;
	height: 300px;
	background-color: #f5f5f5;
    border-radius: 10%;
    margin: 30px auto;
    display: flex;
    flex-direction: column;
    justify-content: center;
    box-shadow: 0px 3px 13px -4px #3c3b3b;
}
.cardList:hover {
    transform:scale(1.05); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
        -o-transform:scale(1.05);
        -moz-transform:scale(1.05);
        -webkit-transform:scale(1.05);
    transition: transform .35s;
        -o-transition: transform .35s;
        -moz-transition: transform .35s;
        -webkit-transition: transform .35s;
}
.cardList p {
	font-weight: bold;
	font-size: 20px;
}
.cardList div {
	margin: 5px auto;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="wrapperk">
	<div class="title">아이카드</div>
	<c:forEach var="list" items="${ list }">
	<div class="cardList">
		<div><p>${ list.k_name }</p></div>
		<div>생일 : ${ list.k_birth }</div>
		<div>나이 : ${ list.k_age }</div>
		<div>성별 :
			<c:if test="${ list.k_gender == 1}">여자아이</c:if>
			<c:if test="${ list.k_gender == 2}">남자아이</c:if>
		</div>
		<div>소개글 : ${ list.k_introduce }</div>
	</div>
	</c:forEach>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>