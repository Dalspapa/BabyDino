<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
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
.d-flex {
	display: flex;
}
.wrapper {
	width: 100%;
	font-family: 'S-Air';
	margin-top: 130px;
}
.headerTitle {
	font-size: 2.5rem;
    font-weight: bold;
}
.d-flex, headerTitle {
	margin-top: 130px;
}
.reviewIObtn, .reviewContent {
	margin: 20px auto;
}
.headerTitle {
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
}
.reviewContent {
	justify-content: center;
	align-items: center;
}
.reviewIObtn {
	justify-content: space-evenly;
}
.reImg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background-color: yellow;
	overflow: hidden;
}
.reviewContent-con {
	width: 600px;
	height: 100px;
	background-color: #f5f5f5;
	border-radius: 10px;
	padding: 10px;
}
.d-none {
	display: none;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class="wrapper">
		<div class="d-flex headerTitle">
			<div>
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/mainCarousel/index-banner-left-bt.svg" alt="버튼">
			</div>
			<div>모든 후기</div>
			<div></div>
		</div>
		<div class="d-flex reviewIObtn">
			<div><button type="button" class="btn btn-outline-warning" onclick="showDiv2();">내가 보낸 후기</button></div>
			<div><button type="button" class="btn btn-outline-warning" onclick="showDiv1();">내가 받은 후기</button></div>
		</div>
		<!-- 내가 보낸 후기 -->
		<div id="is-send">
			<c:if test="${ empty myreview }">
				<h2>작성한 후기가 없습니다.</h2>
			</c:if>
			<c:forEach var="rl" items="${myreview}">
				<div class="d-flex reviewContent">
					<div>
						<div>TO. ${ rl.name} 회원님  ${ rl.r_writedate }/
							<c:forEach begin="1" end="${ rl.star }" step="1">
								<span>★</span>
							</c:forEach>
						</div>
						<div class="reviewContent-con">${ rl.r_content }</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<!-- 내가 받은 후기 -->
		<div id="is-receive" class="d-none">
			<c:if test="${ empty getreview }">
				<h2>받은 후기가 없습니다.</h2>
			</c:if>
			<c:forEach var="gl" items="${getreview}">
				<div class="d-flex reviewContent">
					<div>
						<div>FROM. ${ gl.name} 회원님 ${ gl.r_writedate }/
							<c:forEach begin="1" end="${ gl.star }" step="1">
								<span>★</span>
							</c:forEach>
						</div>
						<div class="reviewContent-con">${ gl.r_content }</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
<script>
function showDiv1() {
	var a = document.getElementById('is-receive');
	a.classList.remove('d-none');
	var b = document.getElementById('is-send');
	b.classList.add('d-none');
}
function showDiv2() {
	var a = document.getElementById('is-send');
	a.classList.remove('d-none');
	var b = document.getElementById('is-receive');
	b.classList.add('d-none');
}
</script>
</html>