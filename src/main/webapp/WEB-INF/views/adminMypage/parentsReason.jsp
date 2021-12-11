<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소사유 부모님 추가하기</title>
<style>
.title{
	width: 100%;
	margin-top: 100px;
}
</style>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
	<div class="title">
		<div>취소사유 추가하기</div>
		<div>
			<input  class="form-control" id="inputPassword2" placeholder="사유 번호를 입력해주세요" name="#">
			<input class="form-control" type="text" placeholder="예)몸이 안좋아요" aria-label="default input example">
		</div>
		<div>
			<button type="button" class="btn btn-outline-success"><a href="parentAdd.do">추가하기</a></button>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>