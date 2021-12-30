<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>

<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
#cardImg {
	width: 50px;
	heitht: 50px;
}

.pignose-calendar-unit-disabled a {
	color: #68983b !important
}

.isTest {
	background-color: #68983b;
}
.title{
	font-size: 22px;
    font-family: 'S-Air';
    font-weight: 500;
    margin-top: 200px;
    text-align: center;
}
section .container{
    margin: auto 34%;
    text-align: center;
}
</style>
</head>
<body>
	<!-- <div class="title">선생님찾기 페이지</div>-->
	<section class="title">
		<!-- <div class="container">
			필터[START]
			<div class="row">
				<div class="col-6">
					<div class="row" style="justify-content: space-between;">
						<div style="width: 20%; border: 1px solid #68983b; height: 30px;"
							name="cDiv" id="first" onclick="changeDiv('first')">1</div>
						<div style="width: 20%; border: 1px solid #68983b; height: 30px;"
							name="cDiv" id="second" onclick="changeDiv('second')">2</div>
						<div style="width: 20%; border: 1px solid #68983b; height: 30px;"
							name="cDiv" id="third" onclick="changeDiv('third')">3</div>
						<div style="width: 20%; border: 1px solid #68983b; height: 30px;"
							name="cDiv" id="four" onclick="changeDiv('four')">4</div>
					</div>
					<br>
					<button class="btn btn-outline-success" onclick="check()">check</button>
					<div class="row mt-4">
						<div class="form-check w-50">
							<input class="form-check-input" type="checkbox" value="1"
								id="flexCheckDefault1" /> <label class="form-check-label"
								for="flexCheckDefault1">등하원</label>
						</div>
						<div class="form-check w-50">
							<input class="form-check-input" type="checkbox" value="2"
								id="flexCheckDefault2" /> <label class="form-check-label"
								for="flexCheckDefault2">놀이</label>
						</div>
						<div class="form-check w-50">
							<input class="form-check-input" type="checkbox" value="3"
								id="flexCheckDefault3" /> <label class="form-check-label"
								for="flexCheckDefault3">학습</label>
						</div>
						<div class="form-check w-50">
							<input class="form-check-input" type="checkbox" value="4"
								id="flexCheckDefault4" /> <label class="form-check-label"
								for="flexCheckDefault4">기타</label>
						</div>
					</div>
				</div>

				 날짜
				<div class="col-6"></div>
			</div>
		</div> -->
		<!-- 필터[END] -->
		
		<h2>공룡샘 리스트</h2>
		<hr />

		<!-- 하단 정보[START] -->
		<div class="row">
			<c:if test="${ empty t_List }">
				<h2 align="center">등록된 선생님가 없습니다.</h2>
			</c:if>
			<c:forEach var="tDto" items="${t_List}">
				<div class="col-4 p-2">
					<!-- 카드정보[START] -->
					<!-- filp01 -->
					<div class="flip-card col-lg">
						<c:url var="contentUrl" value="teacherInfo.do">
							<c:param name="idx">${tDto.teacher_idx}</c:param>
						</c:url>
						<div class="flip-card-inner"
							onclick="location.href='${contentUrl}'">
							<div class="flip-card-front">
								<div class="mb-2">
									<img src="/upload/${fn:replace(tDto.c_imgpath,',','')}" alt="선생님사진" ><br>
									<input type="hidden" name="idx" value="${ tDto.idx }">
								</div>
								<div>
									<h6 class="text-warning" id="title">${tDto.name}
										/ ${tDto.age}세/
										<c:if test="${tDto.gender == 1 }">여자선생님</c:if>
										<c:if test="${tDto.gender == 2 }">남자선생님</c:if>
										<c:if test=""></c:if>
									</h6>
									<h5>
										<c:set var="ctype" value="${tDto.t_care_type}" />
										<c:forEach items="${fn:split(ctype,',')}" var="item">
					                     	#${item}&nbsp;&nbsp;&nbsp;
					                    </c:forEach>
									</h5>
								</div>
							</div>
							<div class="flip-card-back ">
								<h2>${tDto.name }</h2>
								<p>
									<c:set var="tintro" value="${tDto.t_introduce}" />
									${fn:substring(tintro,0,25)}
								</p>
								<ul>
									<li>희망 급여</li>
									<li><fmt:formatNumber value="${tDto.t_cost}"
											pattern="#,###" /> 원</li>
								</ul>
							</div>
						</div>
						<!-- ./ filp02 -->
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- 하단 정보[START] -->
	</section>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<script>
	//  $(document).ready(function(){
	//   console.log("-- : ", ${ t_dto.name })
	// });

	function changeDiv(val) {
		var a = document.getElementById(val);

		if (a.classList.contains('isTest')) {
			a.classList.remove('isTest');
		} else {
			a.classList.add('isTest');
		}
	}

	function check() {
		var a = document.getElementsByName('cDiv')
		var b = [];
		for (var i = 0; i < a.length; i++) {

			if (a[i].classList.contains('isTest'))
				b.push(a[i].id)
		}
		;
		console.log("-- selected : ", b);
	}
</script>