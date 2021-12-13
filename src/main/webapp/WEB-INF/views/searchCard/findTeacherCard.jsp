<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
    
	<title>선생님찾기</title>

	<style>
	.pignose-calendar-unit-disabled a {
		color: red !important
	}
	
	.active {
		border: 1px solid #68983b !important;
	}
	
	.is-invalid {
		border: 1px solid #dc3545 !important;
	}
	</style>


</head>
<body>
	<div class="search">
	 	<form class="" action="showTeacherList.do" method="post">
	 	
			<!-- 캘린더 -->
			<section>
				<div>
					<div class="row">
						<div class="calendar"></div>
					</div>
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
				<div>
					<input class="form-control me-2" type="search" placeholder="선생님 이름을 입력해 주세요 :)" aria-label="Search">
				</div>
				
		        <div class="btn-group" role="group" aria-label="Basic outlined example">
				  <button type="button" class="btn btn-outline-primary">20대</button>
				  <button type="button" class="btn btn-outline-primary">30대</button>
				  <button type="button" class="btn btn-outline-primary">40대</button>
				  <button type="button" class="btn btn-outline-primary">50대</button>
				  <button type="button" class="btn btn-outline-primary">60대</button>
			    </div>
			
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				  <input type="radio" class="btn-check" name="gender" id="btnradio1" autocomplete="off" checked>
				  <label class="btn btn-outline-primary" for="btnradio1">여자 선생님</label>
				
				  <input type="radio" class="btn-check" name="gender" id="btnradio2" autocomplete="off">
				  <label class="btn btn-outline-primary" for="btnradio2">남자 선생님</label>
				</div>
			
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				  <input type="radio" class="btn-check" name="cost" id="btnradio3" autocomplete="off" checked>
				  <label class="btn btn-outline-primary" for="btnradio3">시급 높은 순</label>
				
				  <input type="radio" class="btn-check" name="cost" id="btnradio4" autocomplete="off">
				  <label class="btn btn-outline-primary" for="btnradio4">시급 낮은 순</label>
				</div>
				<!-- 검색조건  -->
			</section>
			
			<!-- 돌봄분야 이미지 추가해야함. -->
			<section>
				<div class="row">
					<div>
						<strong>원하는 돌봄 분야</strong>
					</div>
					
					<c:forEach var="c_list" items="${ c_list }">
						<div class="col-md-2">
							<input type="checkbox" class="btn-check" name="check-type" id="${ c_list.c_introduce }" value="${ c_list.c_introduce }" autocomplete="off" /> 
							<label class="btn btn-outline-success check-type" for="${ c_list.c_introduce }">${ c_list.c_introduce }</label>
						</div>
					</c:forEach>
				</div>
			</section>
			
			<!-- 밑에 섹션 오른쪽에 붙혀주세요. 스테이폴리오 최신순, 인기순 참조 -->
			<section>
				<input type="checkbox" class="btn-check" id="btn-check-1-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-1-outlined">가까운 순</label> 
				<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-2-outlined">만났던 순</label> 
				<input type="checkbox" class="btn-check" id="btn-check-3-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-3-outlined">별점 높은 순</label> 
				<input type="checkbox" class="btn-check" id="btn-check-4-outlined" checked autocomplete="off">
				<label class="btn btn-outline-secondary" for="btn-check-4-outlined">리뷰 많은 순</label> 
				<input type="checkbox" class="btn-check" id="btn-check-5-outlined" checked autocomplete="off">
			</section>
			
			<!-- 요 버튼 누르면 위에 조건들 수행 -->
			<!-- 검색버튼 좀 더 키워주세요 -->
			<div>
		 		<button class="btn btn-outline-success" type="button" onclick="showTeacherList()">SEARCH</button>
		 	</div>
      	</form>
	</div>
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
			url : '/showTeacherList.do',
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

</html>