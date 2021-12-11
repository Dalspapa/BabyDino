<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
	width: 100%;
	text-align: center;
}

.noteWrap {
	width: 80%;
	margin: 30px;
}
.noteWrap>div {
	padding-bottom: 30px;
	padding-left: 180px;
}

.noteTitle {
	font-size: 30px;
	text-align: center;
	border-bottom: 1px solid #ccc;
	font-weight: 600;
}

h3 {
	color: rgb(56, 173, 101);
}

.noteImg {
	width: 400px;
	height: 300px;
	border: 1px solid rgb(56, 173, 101);
	overflow: hidden;
	margin: 0 auto;
}


</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<div class="wrapper">
	<h2>돌봄 노트 영역</h2>
		<div class="noteTitle">#아이이름 돌봄노트</div>
		<form name="writefm" action="/carenote/write.do" method="post">
		<div class="noteWrap">
			<div class="noteInfo">
				<h3>돌봄정보</h3>
				<div>날짜 / 시간 / 놀이 정보 뿌려질 곳</div>
			</div>
			<div class="noteImage">
				<h3>돌봄 사진</h3>
				<div class="noteImg" ></div>
				<div>
				  <label for="formFileSm" class="form-label"></label>
				  <input class="form-control form-control-sm" id="formFileSm" type="file">
				</div>
			</div>
			<div class="noteCon">
				<h3>돌봄 내용</h3>
				<div>
				  <textarea class="form-control" name="c_content" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
				  <label for="floatingTextarea2">Comments</label>
				</div>
			</div>
			<div class="goList">
				<button type="submit" class="btn btn-outline-success">작성하기</button>
			</div>
		</div>
		</form>
	</div>
<%@include file="/footer.jsp" %>
</body>
</html>