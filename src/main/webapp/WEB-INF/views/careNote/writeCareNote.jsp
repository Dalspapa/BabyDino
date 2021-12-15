<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
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
.wrapperk {
	margin: 130px auto;
	font-family: 'S-Air';
	text-align: center;
}
.title {
	font-size: 2.5rem;
	font-weight: bold;
	margin-bottom: 10px;
}
.noteWrap {
	width: 35rem;
	height: 40rem;
	background-color: #f5f5f5;
	border-radius: 15%;
	margin: 20px auto;
	padding: 40px;
	display: flex;
    flex-direction: column;
    justify-content: space-evenly;
}
.noteWrap > div {
	margin-top: 20px;
}

</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class="wrapperk">
		<form name="writefm" action="/carenote/write.do" method="post">
		<input type="hidden" name="d_reserve_idx" value="####"/>
		<div class="title">#아이이름 돌봄노트</div>
		<div class="noteWrap">
			<div>
				<p>돌봄 내용을 작성해주세요!</p>
			</div>
			<div class="noteCon">
				<div>
				  <textarea class="form-control" name="c_content" placeholder="무슨 일들이 있었나요 ?" id="floatingTextarea2" style="height: 300px"></textarea>
				  <label for="floatingTextarea2"></label>
				</div>
			</div>
			<div class="goList">
				<button type="submit" class="btn btn-outline-success">작성하기</button>
			</div>
		</div>
		</form>
	</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>