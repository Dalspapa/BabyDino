<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 지원css수정 -->
<style>
section {
	width: 700px;
    text-align: center;
    border: 1px solid #68983b;
    border-radius: 110px;
    padding: 45px;
    margin: 8% auto;
}
section .title{
	font-family: 'S-Air';
    font-size: 30px;
    margin-bottom: 12px;
}
section .mintitle{
	margin-top: 31px;
    font-size: 20px;
    font-weight: unset;
}
section .mintitle a{
	text-decoration: none;
	color: #68983b;
} 
section .mintitle a:hover{
	text-decoration: none;
	color: #68983b;
	font-weight: 600;
} 
</style>
</head>
<body>
	<section>
		<div class="title">공룡 가족되기</div>
		<div class="mintitle">
			아기공룡 선생님! 우리 아이를 돌봐주세요 <br>
			<a href="memberJoin.do?member_type=2">부모님 회원가입></a>
		</div>

		<div class="mintitle">
			든든한 선생님이 되어줄게요!<br> <a href="memberJoin.do?member_type=4">선생님
				회원가입></a>
		</div>
		
		<div class="mintitle">
			이미 아기공룡 가족이신가요? <br> <a href="login.do">여기서 로그인하세요!</a>
		</div>

	</section>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>