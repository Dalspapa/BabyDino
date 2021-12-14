<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 지원 css 추가 수정 -->
<style>
section{
	font-family: 'S-Air';
	width: 80%;
	margin: 0px auto;
}
section .row .mtitle{
	font-size: 20px;
	font-weight: 500;
	margin-top: 10px;
}
#cardImg {
	width: 50px;
	heitht: 50px;
}

.isTest {
	background-color:  #68983b;
}
section .container{
    margin: 10% 30%;
    text-align: center;
}

.pignose-calendar-unit-disabled a {
	color:#68983b !important;
}

.isTest {
	background-color: red;
}
.container .search{
	margin-top: 107px;
	width: 80%;
}
.container .search {
    margin: 146px auto;
}
.container .search .btns{
	text-align: center;
}
</style>
</head>
<body>

<!-- <h1>아이찾기 페이지</h1> -->
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
						<hr>
						<div class="row d-none" id="selectDateRow">
							<div class="col-md-6" style="text-align: right;">
								<h5>시작시간</h5>
								<select id="start_date" class="form-control" style="width: 20%; float: right;">
									<c:forEach begin="07" end="22" var="startDate">
										<option value="${startDate}">${startDate}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-6" style="text-align: left;">
								<h5>종료시간</h5>
								<select id="end_date" class="form-control"  style="width: 20%;">
									<c:forEach begin="08" end="23" var="endDate">
										<option value="${endDate}">${endDate}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<!-- 캘린더 -->
					</section>
					
					<!-- 검색조건  -->
					<section>
						<!-- 아이 이름 검색 -->
						<div class="row">
							<div class="mtitle">
								<div>아이 이름</div>
							</div>						
							<div>
								<input class="form-control me-2" type="search" placeholder="아이 이름을 입력해 주세요 :)" aria-label="Search">
							</div>
						</div>
						
						<!-- D_COMMON_OPTION  / C_CATEGORY : 10 val(op) 1,2,3,4 -->
						<div class="row">
							<div class="mtitle">
								<div>아이 연령대</div>
							</div>
							<c:forEach var="kidAge" items="${ kidAge }">
								<div class="col-md-2">
									<input type="checkbox" class="btn-check" name="check-type" id="${ kidAge.c_introduce }" value="${ kidAge.c_introduce }" autocomplete="off" /> 
									<label class="btn btn-outline-success check-type" for="${ kidAge.c_introduce }">${ kidAge.c_introduce }</label>
								</div>
							</c:forEach>
						</div>
					
						<div class="row">
							<div class="mtitle">
								<div>아이 성별</div>
							</div>
							<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
							  <input type="radio" class="btn-check" name="gender" id="btnradio1" autocomplete="off" checked>
							  <label class="btn btn-outline-primary" for="btnradio1">여아</label>
							  <input type="radio" class="btn-check" name="gender" id="btnradio2" autocomplete="off">
							  <label class="btn btn-outline-primary" for="btnradio2">남아</label>
							</div>
						</div>
						
						<div class="row">
							<div class="mtitle">
								<div>돌봄 비용</div>
							</div>
							<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
							  <input type="radio" class="btn-check" name="cost" id="btnradio3" autocomplete="off" checked>
							  <label class="btn btn-outline-primary" for="btnradio3">시급 높은 순</label>
							  <input type="radio" class="btn-check" name="cost" id="btnradio4" autocomplete="off">
							  <label class="btn btn-outline-primary" for="btnradio4">시급 낮은 순</label>
							</div>
						</div>
						
						<!-- 검색조건  끝-->
					</section>
					
					<!-- 돌봄분야 이미지 추가해야함. -->
					<section>
						<div class="row">
							<div class="mtitle">
								<div>원하는 돌봄 분야</div>
							</div>
							<!-- D_COMMON_OPTION  / C_CATEGORY : 5  val(op) 1 ~ 12 -->
							<c:forEach var="c_list" items="${ c_list }">
								<div class="col-md-2">
									<input type="checkbox" class="btn-check" name="check-type" id="${ c_list.c_introduce }" value="${ c_list.c_introduce }" autocomplete="off" /> 
									<label class="btn btn-outline-success check-type" for="${ c_list.c_introduce }">${ c_list.c_introduce }</label>
								</div>
							</c:forEach>
						</div>
					</section>
					
					<section style="margin: 1% auto; text-align: end;">
						<input type="checkbox" class="btn-check" id="btn-check-1-outlined" checked autocomplete="off">
						<label class="btn btn-outline-secondary" for="btn-check-1-outlined">가까운 순</label> 
						<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
						<label class="btn btn-outline-secondary" for="btn-check-2-outlined">만났던 순</label> 
						<input type="checkbox" class="btn-check" id="btn-check-3-outlined" checked autocomplete="off">

						<!-- <label class="btn btn-outline-secondary" for="btn-check-3-outlined">별점 높은 순</label> 
						<input type="checkbox" class="btn-check" id="btn-check-4-outlined" checked autocomplete="off">
						<label class="btn btn-outline-secondary" for="btn-check-4-outlined">리뷰 많은 순</label> 
						<input type="checkbox" class="btn-check" id="btn-check-5-outlined" checked autocomplete="off"> -->

					</section>
					
					<!-- 요 버튼 누르면 위에 조건들 수행 -->
					<!-- 검색버튼 좀 더 키워주세요-->
					<div class="btns" style="text-align: center;">
						<button class="btn btn-outline-success btn-lg" type="reset">RESET</button>
				 		<button class="btn btn-outline-success btn-lg" type="button" onclick="showTeacherList()">SEARCH</button>
				 	</div>
		      	</form>
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
									<img src="/upload/${kDto.c_imgpath}" alt="${kDto.k_name } 사진" ><br>
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



<!-- pignose-calendar -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/pignose.calendar.min.css">
<script src="${pageContext.request.contextPath}/common/js/pignose.calendar.full.min.js"></script>

<script>

	let reserveDate;
	
	//달력
	$('.calendar').pignoseCalendar({
		lang : 'ko',
		minDate : moment().format("YYYY-MM-DD"),
		format : 'YYYY-MM-DD',
		select: function(r) {
			console.log('r : ', r);
			var selectDate;
			if(r[0] == null) {
				selectDate = null;
			} else {
				reserveDate = r[0]._i;
				selectDate = r[0]._i;
			}
			if(selectDate == null) {
				$("#selectDateRow").addClass('d-none');
			} else {
				$("#selectDateRow").removeClass('d-none');
			}
		}
	});
	
	//데이터 넘기기
	function showTeacherList() {
	
		var start = reserveDate + ' ' + $("#start_date").val();
		if($("#start_date").val().length == 1) start = reserveDate + ' 0' + $("#start_date").val();
	
		var end = reserveDate + ' ' + $("#end_date").val();
		if($("#end_date").val().length == 1) end = reserveDate + ' 0' + $("#end_date").val();
	
		var saveIdx = '${sidx}';
		
		var formData = new FormData();
		formData.set('member_p_idx', Number(1));
		formData.set('kid_idx'     , kidCard);
		formData.set('start_date'  , start);
		formData.set('end_date'    , end);
		formData.set('cost'        , $("#cost").val());
		formData.set('status'      , 1);
		
		formData.forEach(function(value, key) {
			console.log(key, value);
		});		
		
		/* return false; */
		$.ajax({
			method : 'POST',
			url : '/findKidsList.do',
				data : formData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			cache: false, 			
			success : function(e){
				window.alert="예약등록되었습니다.";
				location.href="main.do";
				console.log(e);
			},
			error : function(e){
				console.log(e);
			}
		});
	}
	
</script>



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
