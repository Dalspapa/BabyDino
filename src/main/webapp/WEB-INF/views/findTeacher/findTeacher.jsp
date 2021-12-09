<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../header.jsp" %>
<!-- 파비콘 -->
<link rel="shortcut icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">
<link rel="icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">

<!-- fontasome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- css -->
<link rel="stylesheet" href="./common/css/bootstrap.min.css">
<link rel="stylesheet" href="./common/css/reset.css">
<link rel="stylesheet" href="./common/css/main.css">
<style>
#cardImg {
	width: 50px;
	heitht: 50px;
}

.pignose-calendar-unit-disabled a {
	color: red !important
}

.isTest {
	background-color: red;
}
</style>
</head>
<body>
	<%--    <form action="getImg.do" name="getimg">
      <c:forEach var="imgs" items="${imgName}">
         <img alt="teacherImg" src="/upload/${imgs}" id="cardImg">
      </c:forEach> --%>
	<h1>선생님찾기 페이지</h1>
	<section>
		<div class="container">

			<!-- 필터[START] -->
			<div class="row">
				<div class="col-6">
					<div class="row" style="justify-content: space-between;">
						<div style="width: 20%; border: 1px solid red; height: 30px;"
							name="cDiv" id="first" onclick="changeDiv('first')">1</div>
						<div style="width: 20%; border: 1px solid red; height: 30px;"
							name="cDiv" id="second" onclick="changeDiv('second')">2</div>
						<div style="width: 20%; border: 1px solid red; height: 30px;"
							name="cDiv" id="third" onclick="changeDiv('third')">3</div>
						<div style="width: 20%; border: 1px solid red; height: 30px;"
							name="cDiv" id="four" onclick="changeDiv('four')">4</div>
					</div>
					<button onclick="check()">check</button>

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

				<!--  날짜 -->
				<div class="col-6"></div>
			</div>
		</div>
		<!-- 필터[END] -->
		<hr />

		<!-- 하단 정보[START] -->
		<div class="row">
			<c:if test="${ empty TeachersList }">
				<h2 align="center">원하는 선생님가 없습니다.</h2>
			</c:if>
			<c:forEach var="kidsDto" items="${ TeachersList }">
				<div class="col-4 p-2">
					<!-- 카드정보[START] -->
					<!-- filp01 -->
					<div class="flip-card col-lg">
						<div class="flip-card-inner">
							<div class="flip-card-front">
								<div class="mb-2">
									<%-- <img src="/upload/${kidsDto.c_imgpath}" alt="선생님 사진" > --%>
								</div>
								<div>
									<h6 class="text-warning">새로운 추천01</h6>
									<h4>${ t_dto.name }</h4>
								</div>
							</div>
							<div class="flip-card-back ">
								<h1>${ t_dto.name }</h1>
								<p>${ t_dto.k_introduce }</p>
								<ul>
									<li>${ kidsDto.addr }/<c:choose>
											<c:when test="${ t_dto.gender == 1 }">여자</c:when>
											<c:when test="${ t_dto.gender == 2 }">남자</c:when>
										</c:choose>
									</li>
									<li>${ t_dto.r_endday }<br> <label id="timeTag">
									</label>
									</li>
									<li>테스트03</li>
								</ul>
							</div>
						</div>
						<!-- ./ filp01 -->
					</div>
					<!-- 카드정보[END] -->
				</div>
			</c:forEach>
		</div>
		<!-- 하단 정보[START] -->
	</section>
</body>
<%@include file="../footer.jsp" %>
<!-- J-query -->
<script src="./common/js/jquery-3.6.0.min.js"></script>

<!-- custome js -->
<script src="./common/js/bootstrap.min.js"></script>


<script>
   
   $(document).ready(function(){
      console.log("-- : ", ${ t_dto.name })
   });

   
   function changeDiv(val) {
      var a = document.getElementById(val);
      
      if(a.classList.contains('isTest')){
         a.classList.remove('isTest');
       } else {
          a.classList.add('isTest');
       }
   }
   
   function check() {
      var a = document.getElementsByName('cDiv')
      var b = [];
      for(var i = 0; i < a.length; i++ ) {
         
         if(a[i].classList.contains('isTest')) b.push(a[i].id)
      };
      console.log("-- selected : ", b);
   }
   
</script>

</html>


















