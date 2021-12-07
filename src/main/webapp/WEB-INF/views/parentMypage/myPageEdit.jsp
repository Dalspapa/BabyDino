<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.myPageEdit h3{
    font-family: 'S-Air';
    text-align: center;
}
.myPageEdit myPage h2{
    font-family: 'S-Air';
}
.myPageEdit .myPage{
	width: 26%;
	border-bottom: 1px solid;
	text-align: center;
    margin-block: auto;
    margin-left: 38%;
}
.type{
	text-align: center;
}
.btn{
	margin-top: 1%;
}
</style>
</head>
  <!-- header -->

<body>
	<div class="myPageEdit">
		<div class="myPage">
			<h2>내 정보 수정하기</h2>
		</div>
		<div>
			<h3>회원 유형</h3>
			<div class="type">#회원 유형 코드 들어갈 부분</div>
		</div>
		<div>
			<h3>사용중인 아이디</h3>
			<div class="type">
				<input type="text">
			</div>
		</div>
		<div>
			<h3>가입한 휴대폰 번호</h3>
			<div class="type">
				<input type="text">
			</div>
		</div>
		<div>
			<h3>가입한 이메일</h3>
			<div class="type">
				<input type="text">
			</div>
		</div>
		<div class="type btn">
			<button class="btn btn-outline-success">수정하기</button>
		</div>
	</div>
</body>
  <!-- footer -->

</html>