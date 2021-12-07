<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
}
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
/* userInfo 사용자 상태영역 */
.userInfo {
	display: flex;
	justify-content: center;
	padding: 2em 0;
}

.userInfo .userImg {
	border: 5px solid rgb(60, 221, 73);
	width: 80px;
	height: 80px;
	border-radius: 50%;
	text-align: center;
}

.userInfo .userImg img {
	width: 100%;
	vertical-align: middle;
}

.userInfo .nameText {
	line-height: 80px;
	margin-left: 20px;
}

.userLiveWrap {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 2em 0;
}

.userLive {
	display: flex;
	justify-content: space-between;
	margin-bottom: 30px;
}

.userLive>div {
	width: 14%;
	margin-right: 10px;
	text-align: center;
}

.userLive>div:last-child {
	margin-right: 0;
}

.userLive .aa {
	background-color: rgb(56, 173, 101);
	padding: 2rem 0;
	text-align: center;
	border-radius: 10px;
	color: #fff;
}

.aa+button {
	width: 80%;
	margin-top: 10px;
}

.progress {
	width: 100%;
}

.progress-center {
	display: flex;
	justify-content: center;
}

.topCont {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 1em .5em;
	font-size: 1.1em;
}

.item1 {
	display: flex;
	justify-content: center;
	padding: 1.7em 0;
}

.item1 .childInfo {
	margin-left: 1em;
}

.item1 .childImg {
	width: 200px;
	height: 200px;
	background-color: #ccc;
	border-radius: 50%;
	overflow: hidden;
}

.item3 {
	background-color: #f0f0f0;
	padding: 20px 10px;
	margin-bottom: 20px;
	border-radius: 5px;
}

.item3 li {
	margin-bottom: 20px;
}

.item3 li:last-child {
	margin-bottom: 0;
}

.item3 h3 {
	font-size: 16px;
	font-weight: 500;
}

.contentBox {
	background-color: #fff;
	border-radius: 5px;
	padding: 10px;
	box-sizing: border-box;
	word-break: keep-all;
}

.ageWrap {
	display: flex;
	justify-content: space-around;
}

.circle-div {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	background-color: #d9fbf7;
	text-align: center;
	line-height: 60px;
	font-size: 14px;
	color: rgb(50, 179, 136);
	font-weight: 500;
}

.flex-list {
	padding-left: 0px;
}

.flex-list li {
	display: flex;
}

.contentBox .flex-list li {
	font-size: 14px;
}

.ativeList {
	text-align: center;
	display: flex;
}

.ativeList>div img {
	display: block;
	margin: 0 auto 10px;
}

.box div {
	width: 80px;
	height: 80px;
	background-color: #caaddb;
	display: table-cell;
	vertical-align: middle; /* 수직정렬이 안됨 ㅜㅡㅜ */
	text-align: center;
	border-radius: 20px 20px;
}

section {
	padding: 10px;
	margin: 1rem;
}

@media all and (min-width: 720px) and (max-width: 1280px) {
	body {
		background-color: skyblue;
	}
}

@media all and (min-width: 320px) and (max-width: 720px) {
	body {
		background-color: #333;
	}
}

.star {
	position: relative;
	font-size: 2rem;
	color: #ddd;
}

.star input {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	opacity: 0;
	cursor: pointer;
}

.star span {
	width: 0;
	position: absolute;
	left: 0;
	color: red;
	overflow: hidden;
	pointer-events: none;
}
</style>

</head>
<body>
	<!-- offcanvas(부모회원) -->
	<style>
.memberImg {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	background-color: yellow;
}

.offcanvas-end {
	width: 300px;
}

.offcanvas-body {
	text-align: center;
}

.offcanvas-body div {
	margin-top: 25px;
}
.memberImg {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	background-color: yellow;
}

.offcanvas-end {
	width: 300px;
}

.offcanvas-body {
	text-align: center;
}

.offcanvas-body div {
	margin-top: 25px;
}
</style>
	<!-- /offcanvas -->
	<div class="wrapper">
		<section>
			<div class="topCont d-flex justify-content-between">
				<div>#뒤로가기버튼</div>
				<div>${ kidInfoDto.k_name }</div>
				<div>#좋아요버튼</div>
			</div>
			<div class="item1">
				<div class="childImg">
					<img src="/upload/${ kidInfoDto.c_imgpath }" alt="메인 아이 사진" width="200" height="200">
				</div>
				<div class="childInfo">#아이정보 / #성별</div>
			</div>
			<ul class="item3">
				<li>
					<h3>이런 활동을 하고 싶어요~</h3>
					<div class="contentBox" id="wnatSam">
					<c:set  var="kType" value="${kidInfoDto.k_care_type}" />
						<c:forEach items="${fn:split(kType, ',') }" var="kType">
							<c:if test="${item == '1'}">#등하원&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '2'}">#야외활동&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '3'}">#책읽기&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '4'}">#학습지도&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '5'}">#한글놀이&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '6'}">#영어놀이&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '7'}">#실내놀이&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '8'}">#체육놀이&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '9'}">#미술놀이&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '10'}">#간단청소&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '11'}">#밥챙겨주기&nbsp;&nbsp;&nbsp;</c:if>
							<c:if test="${item == '12'}">#간단설거지&nbsp;&nbsp;&nbsp;</c:if>							
						</c:forEach>
					</div>
				</li>
				<li>
					<h3>원하는 시터 나이</h3>
					<div class="contentBox ageWrap">
						<div class="circle-div">#20대</div>
						<div class="circle-div">#50대</div>
						<div class="circle-div">#60대</div>
					</div>
				</li>
				<li>
					<h3>돌봄 지역</h3>
					<div class="contentBox">
						<div>#주소정보</div>
					</div>
				</li>
			</ul>
			<ul class="item3">
				<li>
					<h3>아이정보</h3>
					<div class="contentBox">
						<ul class="flex-list">
							<li>
								<div>#아이유형이미지</div>
								<div style="margin-left: 10px">#아이유형텍스트</div>
							</li>
							<li>
								<div>#아이유형이미지</div>
								<div style="margin-left: 10px">#아이유형텍스트</div>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<h3>원하는 활동</h3>
					<div class="contentBox ativeList">
						<div>
							<!--<img src=""/>-->
							#원하는활동명
						</div>						
					</div>
				</li>
				<li>
					
				</li>
			</ul>
		</section>
	</div>	
</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
<script>
const drawStar = (target) => {
    document.querySelector('.star span').style.width = '${target.value * 10}%';
  }
  
  $(document).ready(function(){
		let wnatSamText = "";
			<c:set  var="kType" value="${kidInfoDto.k_care_type}" />
				<c:forEach items="${fn:split(intro, ',') }" var="kType">
					<c:if test="${item == '1'}">7~8시</c:if>
					<c:if test="${item == '2'}">8~9시</c:if>
					<c:if test="${item == '3'}">9~10시</c:if>
					<c:if test="${item == '4'}">10~11시</c:if>
					<c:if test="${item == '5'}">11~12시</c:if>
					<c:if test="${item == '6'}">12~13시</c:if>
					<c:if test="${item == '7'}">13~14시</c:if>
					<c:if test="${item == '8'}">14~15시</c:if>
					<c:if test="${item == '9'}">15~16시</c:if>
					<c:if test="${item == '10'}">16~17시</c:if>
					<c:if test="${item == '11'}">17~18시</c:if>
					<c:if test="${item == '12'}">18~19시</c:if>
					<c:if test="${item == '13'}">19~20시</c:if>
					<c:if test="${item == '14'}">20~21시</c:if>
					<c:if test="${item == '15'}">21~22시</c:if>
					<c:if test="${item == '16'}">22~23시</c:if>
				</c:forEach>
  });
</script>
</html>









