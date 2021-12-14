<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- ---------지원css------------- -->
<style>
#cardImg {
	width: 50px;
	heitht: 50px;
}

.pignose-calendar-unit-disabled a {
	color: #68983b !important
}

.isTest {
	background-color:  #68983b;
}
section .container{
    margin: 10% 34%;
    text-align: center;
    font-size: 22px;
    font-family: 'S-Air';
    font-weight: 500;
}
</style>
</head>
<body>
<!-- 	<h1>아이찾기 페이지</h1> -->
	<section>
		<div class="container">
			<!-- 필터[START] -->
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
				<!--  날짜 -->
				<div class="col-6"></div>
			</div>
		</div>
		<!-- 필터[END] -->
		<hr />
		<!-- 하단 정보[START] -->
		<div class="row" id="flipcard">
			<c:if test="${empty KidsList }">
				<h2 align="center">원하는 아이가 없습니다.</h2>
			</c:if>
			<c:forEach var="kDto" items="${ KidsList }">
				<div class="col-4 p-2">
					<!-- 카드정보[START] -->
					<!-- filp01 -->
					<div class="flip-card col-lg">
							<c:url var = "contentUrl" value="kidsContent.do">
								<c:param name="idx">${kDto.idx}</c:param>
							</c:url>
						<div class="flip-card-inner" onclick="location.href='${ contentUrl }'">
							<div class="flip-card-front">
								<div class="mb-2">
									<img src="/upload/${fn:replace(kDto.c_imgpath, ',', '')}" alt="선생님 사진" ><br>
									<input type="hidden" name="idx" value="${ kDto.idx }">
									<h5 id="tendetcy">
									<c:set  var="careType" value="${kDto.k_care_type}" />
									<c:forEach items="${fn:split(careType, ',') }" var="item">
										#${item}&nbsp;&nbsp;
									</c:forEach>
									</h5>
								</div>
								<div>
									<h6 class="text-warning" id="title">${kDto.k_name } / ${kDto.age}세 /
										<c:if test="${kDto.k_gender == 1 }">
											여아
										</c:if>
										<c:if test="${kDto.k_gender == 2 }">
											남아
										</c:if>
									</h6>
									<h6 id="info">${kDto.addr2}</h6>
								</div>
							</div>
							<div class="flip-card-back ">
								<h1 id="name">${kDto.k_name}</h1>
								<p id="tendency">
									${kDto.k_introduce}
								</p>
								<ul>
									<li id="palyday">이날 만났으면 좋겠어요~</li>
									<li id="playday">${kDto.start_day}일 ~ ${kDto.end_day}일<br></li>
									<li id="playtime">${kDto.start_time}시 ~ ${kDto.end_time}시</li>
									<li id="cost"><fmt:formatNumber value="${kDto.cost}" pattern="#,###" />원  / 협의가능</li>
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
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>

	function goUrl(){
		location.href='${contentUrl}';
	}

	function changeDiv(val) {
	   var a = document.getElementById(val);

	   if(a.classList.contains('isTest')){
	      a.classList.remove('isTest');
	    } else {
	       a.classList.add('isTest');
	    }
	}

	function check() {
	   var a = document.getElementsByName('cDiv');
	   var b = [];
	   for(var i = 0; i < a.length; i++ ) {

	      if(a[i].classList.contains('isTest')) b.push(a[i].id);
	   }

	   console.log("-- selected : ", b);
	}

</script>

</html>
