<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 80%;
}
.headerTitle, .reviewIObtn, .reviewContent {
	margin-top: 20px;
}
.headerTitle {
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
}
.reviewContent {
	justify-content: space-around;
	align-items: center;
}
.reviewIObtn {
	justify-content: space-evenly;
}
.reviewIObtn div {
	width: 180px;
	height: 60px;
	background-color: #fff491;
	border-radius: 10px;
	text-align: center;
	line-height: 60px;
	color: #328f34;
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
	background-color: #ccc;
}
.d-none {
	display: none;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="d-flex headerTitle">
			<div>
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/mainCarousel/index-banner-left-bt.svg" alt="버튼">
			</div>
			<div>모든 후기</div>
			<div></div>
		</div>
		<div class="d-flex reviewIObtn">
			<div onclick="showDiv2();">내가 보낸 후기</div>
			<div onclick="showDiv1();">내가 받은 후기</div>
		</div>
		<div id="is-send">
			<div class="d-flex reviewContent">
				<div class="reImg">사진</div>
				<div>
					<div>#이름 #별점</div>
					<div class="reviewContent-con">#제가 보내는 후기 입니다. 너무 감사했어요!</div>
				</div>
				<div>
					<div><button type="button" class="">수정하기</button></div>
					<div><button type="button" class="">삭제하기</button></div>
				</div>
			</div>
			<div class="d-flex reviewContent">
				<div class="reImg">사진</div>
				<div>
					<div>#이름 #별점</div>
					<div class="reviewContent-con">#보낸후기내용</div>
				</div>
				<div>
					<div><button type="button" class="">수정하기</button></div>
					<div><button type="button" class="">삭제하기</button></div>
				</div>
			</div>
		</div>
		<div id="is-receive" class="d-none">
			<div class="d-flex reviewContent">
				<div class="reImg">사진</div>
				<div>
					<div>#이름 #별점</div>
					<div class="reviewContent-con">#제가 받은 후기 내용입니다. 감사했다고 하네요 !</div>
				</div>
				<div>
					<div><button type="button" class="">수정하기</button></div>
					<div><button type="button" class="">삭제하기</button></div>
				</div>
			</div>
			<div class="d-flex reviewContent">
				<div class="reImg">사진</div>
				<div>
					<div>#이름 #별점</div>
					<div class="reviewContent-con">#받은후기내용</div>
				</div>
				<div>
					<div><button type="button" class="">수정하기</button></div>
					<div><button type="button" class="">삭제하기</button></div>
				</div>
			</div>
		</div>
	</div>
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