<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* reset */
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

h2 {
	font-size: 0;
	line-height: 0;
	width: 0px;
	height: 0px;
	position: absolute;
	left: -9999px;
}

.wrapper {
	width: 80%;
}

.innerWrap {
	padding: 20px;
}

.myHeader {
	display: flex;
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
	font-size: 30px;
	font-weight: bold;
}

.myInfo {
	display: flex;
	border-bottom: 1px solid #ccc;
}

.myInfo .myInfo-th {
	width: 30%;
	font-weight: bold;
}

.myInfo .myInfo-th div{
	height: 50px;
	line-height: 50px;
}

.myInfo .myInfo-td {
	width: 50%;
}

.myInfo .myInfo-td div {
	height: 50px;
	line-height: 50px;
}

.updateInfo > div{
	border-bottom: 1px solid #ccc;
	height: 80px;
	line-height: 80px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<h2>계정 관리</h2>
		<section class="innerWrap">
			<div class="myHeader">
				<div><</div>
				<div>계정관리</div>
				<div></div>
			</div>
			<div class="myInfo">
				<div class="myInfo-th">
					<div>회원 유형</div>
					<div>사용중인 아이디</div>
					<div>가입한 휴대폰 번호</div>
					<div>가입한 이메일</div>
				</div>
				<div class="myInfo-td">	
					<div>###회원유형 코드 들어갈 부분</div>
					<div>###아이디 코드 들어갈 부분</div>
					<div>###폰 번호 코드 들어갈 부분</div>
					<div>###이메일 코드 들어갈 부분</div>
				</div>
			</div>
			<div class="updateInfo">
				<div>내 정보 수정</div>
				<div>내 주소 수정</div>
				<div>비밀번호 변경</div>
				<div>회원탈퇴 신청</div>
			</div>
		</section>
	</div>
</body>
</html>