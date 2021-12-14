<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소사유 부모님 추가하기</title>
<!-- -------------지원 css---------------- -->
<style>
.title{
	width: 80%;
    margin-top: 100px;
    margin: 13% auto;
}
.title .add{
	font-size: 22px;
    font-family: 'S-Air';
    font-weight: 500;
    text-align: center;
    margin-bottom: 1%;
}
.title .btn{
	margin: 10px 336px;
}
</style>
<%@include file="/WEB-INF/views/include//header.jsp" %>
</head>
<body>
<form name="reason" action="parentAdd.do">
	<div class="title">
		<div>취소사유 추가하기</div>
		<div>			
			<input type="text" class="form-control" id="inputPassword2" placeholder="사유 번호를 입력해주세요" name="op">
			<input class="form-control" type="text" placeholder="예)몸이 안좋아요" aria-label="default input example" name="c_introduce">			
		</div>
		<div>
			<button type="submit" class="btn btn-outline-success">추가하기</button>
		</div>
	</div>
</form>	
</body>
<%@include file="/WEB-INF/views/include//footer.jsp" %>
</html>