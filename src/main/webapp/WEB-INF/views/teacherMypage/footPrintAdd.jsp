<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 공룡 발자국 추가 인증하기</title>
<style>
.d-flex{
	width: 100%;
}
.d-flex .title{
	text-align: center;
	font-family: 'S-Air';
	color: #68983b;
	margin: 5px;
    font-size: 25px;
}
.d-flex .kinds{
	text-align: center;
    margin-bottom: 8px;
	
}
.d-flex .btn{
	text-align: center;
}
</style>
</head>
<body>
	<div class="d-flex">
		<div class="title">내 공룡 발자국 추가 인증하기</div>
		<div class="kinds">
			종류
			<select>
				<option>백신인증서</option>
				<option>레크레이션 자격증</option>
				<option>학과 증명서</option>
				<option>지도사 자격증</option>
				<option>상담사 자격증</option>
				<option>예체능 관련 자격증</option>
				<option>교육 관련 자격증</option>
			</select>
		</div>
		<div class="kinds">
			업로드할 파일
			<button type="button">파일 선택하기</button>
		</div>
		<div class="btn">
			<button type="button" class="btn btn-outline-success"><a href="#">추가 인증하기</a></button>
		</div>
	</div>
</body>
</html>