<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 지원 css수정 및 추가 -->
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
	margin: 9% auto;
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
section .btns{
	text-align: center;
}

@media all and (min-width: 720px) and (max-width: 1280px) {
	body {
		background-color: white;
	}
}

@media all and (min-width: 320px) and (max-width: 720px) {
	body {
		background-color: #333;
	}
}
</style>

</head>
<body>
	<div class="wrapper">
		<section>
			<div class="topCont d-flex justify-content-between">
				<div><a href="javascript:history.back();"> <-목록으로 </a></div>
				<div>${ t_dto.name }</div>
				<form name="reportIdx" action="reportWrite.do">
					<input type="hidden" name="idx" value="${t_dto.teacher_idx }">
				<div>
					<button type="submit">
						&#128680;
					</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a>
						#좋아요버튼 / ${t_dto.teacher_idx }
					</a>
				</div>
				</form>
			</div>

			<div class="item1">
				<img src="/upload/${fn:replace(t_dto.c_imgpath, ',', '')}" alt="선생님 사진" width="200px" height="200px"><br>
				<div class="childInfo">
					<div>이름: ${ t_dto.name } / 나이: <span id="teacherAge"></span></div>
					<div>직업: 
						<c:if test="${ t_dto.job == 105 }">일반</c:if>
						<c:if test="${ t_dto.job == 106 }">대학생</c:if>
						<c:if test="${ t_dto.job == 107 }">부모님</c:if>
						<c:if test="${ t_dto.job == 108 }">선생님</c:if>
						 / 성별: 
						<c:if test="${ t_dto.gender == 1 }">
							여자
						</c:if>
						<c:if test="${ t_dto.gender == 2 }">
							남자
						</c:if>
					</div>
					<div>희망시급: <fmt:formatNumber value="${ t_dto.t_cost }" type="number"/>원 / CCTV 촬영: 
						<c:if test="${ t_dto.cctvagree == 0 }">
							비동의
						</c:if>
						<c:if test="${ t_dto.cctvagree == 1 }">
							동의
						</c:if>
					</div>
				</div>
			</div>

			<ul class="item3">
				<li>
					<h3>간단 자기 소개</h3>
					<div class="contentBox ativeList">
						<div>
							<div>${ t_dto.t_introduce }</div>
						</div>
					</div>
				</li>

				<li>
					<h3>돌봄가능연령</h3>
					<div class="contentBox">
						<div class="row" style="width: 50%; margin: auto;">
							<div class="col-3 text-center">
								<img id="kidType1" src="${pageContext.request.contextPath }/common/img/kidType/kidstype1_off.png" class="w-100"/>
								<span>영아(1~2세)</span>
							</div>
							<div class="col-3 text-center">
								<img id="kidType2" src="${pageContext.request.contextPath }/common/img/kidType/kidstype2_off.png" class="w-100"/>
								<span>유아(2~7세)</span>
							</div>
							<div class="col-3 text-center">
								<img id="kidType3" src="${pageContext.request.contextPath }/common/img/kidType/kidstype3_off.png" class="w-100"/>
								<span>초등 저학년</span>
							</div>
							<div class="col-3 text-center">
								<img id="kidType4" src="${pageContext.request.contextPath }/common/img/kidType/kidstype4_off.png" class="w-100"/>
								<span>초등 고학년</span>
							</div>
						</div>
					</div>
				</li>
				
				<li>
					<h3>가능한 활동</h3>
					<div class="contentBox">
						<div>${ t_dto.t_care_type }</div>
					</div>
				</li>
				
				<li>
					<h3>활동 가능지역</h3>
					<div class="contentBox">
						<div>${ t_dto.addr2 }</div>
					</div>
				</li>
				
				<li>
					<h3>부모 후기</h3>
					<div class="contentBox">
					<c:forEach items="${t_dto.review_list}" var="review" >
						<div>익명: ${review.r_content }</div>
					</c:forEach>
					</div>
				</li>
				
				<li>
					<h3>관련 경험</h3>
					<div class="contentBox">
						<div>${ t_dto.career_experience }</div>
					</div>
				</li>
			</ul>
			<div class="btns">
				<button type="button" class="btn btn-outline-success">인터뷰요청</button>
			</div>
		</section>
	</div>	
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<!-- JQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<script>
	$(function(){
		
		// 현재날짜 구하는거
	  	var now = new Date();
		// 현재 연도 구하는거
      	var year= now.getFullYear();
		// 데이터 0~4자리까지 서브스트링친거 (ex : 1999)
	    var age = "${ t_dto.birth}".substring(0,4);
	    // 현재 연도 - age
	    var resultAge = year - age;
	    // 2021 - 1999 = 나이
	    $("#teacherAge").text(resultAge + '세');

		// modelandview에서 가져온 kidType;
		var kidType = "${t_dto.kid_type}";

		// kidType값을 ,로 잘라서 배열로 생성
		const typeArr = kidType.split(",");
		
		// 배열을 for문으로 돌면서 조건문 수행
		typeArr.forEach(function(type) {
			if(type == "영아(1~2세)") {
				$("#kidType1").attr("src", "${pageContext.request.contextPath }/common/img/kidType/kidstype1_on.png");
			} else if (type == "유아(2~7세)") {
				$("#kidType2").attr("src", "${pageContext.request.contextPath }/common/img/kidType/kidstype2_on.png");
			} else if (type == "초등 저학년(8~11세)") {
				$("#kidType3").attr("src", "${pageContext.request.contextPath }/common/img/kidType/kidstype3_on.png");
			} else if (type == "초등 고학년(12~13세)") {
				$("#kidType4").attr("src", "${pageContext.request.contextPath }/common/img/kidType/kidstype4_on.png");
			}
		});
	});	
</script>	
</html>