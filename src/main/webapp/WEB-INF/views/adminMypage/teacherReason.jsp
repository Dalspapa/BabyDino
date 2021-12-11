<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소사유 선생님 추가하기</title>
<style>
.title{
	width: 100%;
	margin-top: 100px;
}
</style>
<%@include file="/header.jsp" %>
</head>
<body>
<form name="reason" action="teacherAdd.do">
	<div class="title">
		<div>취소사유 추가하기</div>
		<div>			
			<input type="text" class="form-control"  placeholder="사유 번호를 입력해주세요" name="op">
			<input class="form-control" type="text" placeholder="예)몸이 안좋아요" aria-label="default input example" name="c_introduce">			
		</div>
		<div>
			<button type="submit" class="btn btn-outline-success">추가하기</button>
		</div>
	</div>
</form>	
</body>
<%@include file="/footer.jsp" %>
</html>