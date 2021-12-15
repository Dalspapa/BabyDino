<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<style>
* {
  margin: 0;
  padding: 0;
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
.noteFrame {
	width: 30rem;
	height: 30rem;
	background-color: #f5f5f5;
	border-radius: 10rem;
	padding: 3rem;
	line-height: 3rem;
	margin: 20px auto;
	box-shadow: 0px 3px 13px -4px #3c3b3b;
}
.noteFrame:hover {
	transform:scale(1.05); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
        -o-transform:scale(1.05);
        -moz-transform:scale(1.05);
        -webkit-transform:scale(1.05);
    transition: transform .35s;
        -o-transition: transform .35s;
        -moz-transition: transform .35s;
        -webkit-transition: transform .35s;
}
.underline:after {
	content: "";
	display: block;
	width: 200px;
	border-bottom: 1px solid #bcbcbc;
	margin: 10px auto;
}
.title {
	font-size: 2.5rem;
	font-weight: bold;
	margin-bottom: 10px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="wrapperk">
	<div class="title">돌봄노트</div>
	<c:forEach var="cl" items="${ list }">
		<div class="noteFrame">
			<div class="underline">${ cl.c_writedate }</div>
			<div class="underline">-${ cl.k_name } 돌봄노트-</div>
			<div class="underline">${ cl.c_content }</div>
			<div class="underline">-${ cl.name }</div>
		</div>
	</c:forEach>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>