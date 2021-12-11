<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발자국 추가하기</title>
</head>
<style>
.flex{
	width: 80%;
}
.flex .title{
	font-weight: 500;
	font-size:30px;
	font-family: 'S-Air';
	color: #68983b;
	text-align: right;
}
.flex . 
</style>
<body>
	<div class="flex">
		<div class="title">발자국 추가하기</div>
		<div>
			<div>
			<label>이미지 파일 업로드</label>
			<input type="text">
			<button type="button">이미지 업로드</button>
			</div>
			<div>
			<label>발자국 이름</label>
			<input type="text" placeholder="발자국의 이름을 설정해주세요">
			</div>
			<div>
			<label>발자국 설명</label>
			<textarea rows="10" cols="30" placeholder="발자국의 설명글을 작성해주세요"></textarea> 
			</div>
		</div>
		<div>
			<button type="button">등록하기</button>
		</div>
	</div>
</body>
</html>