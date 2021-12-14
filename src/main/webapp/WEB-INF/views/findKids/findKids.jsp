<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    width: 50px;
    heitht: 50px;
}
.isTest {
    background-color: red;
}
.container .search{
    margin-top: 107px;
    width: 80%;
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
			<div class="search">
			 	<form id="searchForm" class="" action="">
			 	
					<!-- 캘린더 -->
					<section>
						<div>
							<div class="row">
								<input type="hidden" name="reserve_date"/>
								<div class="calendar" id="calendar"></div>
							</div>
						</div>
						<hr>
						<div class="row d-none" id="selectDateRow">
							<div class="col-md-6" style="text-align: right;">
								<h5>시작시간</h5>
								<select id="start_date" name="start_date" class="form-control" style="width: 20%; float: right;">
									<c:forEach begin="07" end="22" var="startDate">
										<option value="${startDate}">${startDate}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-6" style="text-align: left;">
								<h5>종료시간</h5>
								<select id="end_date" name="end_date" class="form-control"  style="width: 20%;">
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
							<div>
								<strong>아이 이름</strong>
							</div>						
							<div>
								<input class="form-control me-2" name="k_name" type="search" placeholder="아이 이름을 입력해 주세요 :)" autocomplete="off" aria-label="Search">
							</div>
						</div>
						
						<!-- D_COMMON_OPTION  / C_CATEGORY : 10 val(op) 1,2,3,4 -->
						<div class="row">
							<div>
								<strong>아이 연령대</strong>
							</div>
							<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
								<input type="checkbox" class="btn-check" name="age_list" value="1,2" id="btncheck1"> 
								<label class="btn want-age btn-outline-success check-age" for="btncheck1">영아(1~2세)</label>
								
								<input type="checkbox" class="btn-check" name="age_list" value="2,3,4,5,6,7" id="btncheck2">
								<label class="btn want-age btn-outline-success check-age" for="btncheck2">유아(2~7세)</label>
								
								<input type="checkbox" class="btn-check" name="age_list" value="8,9,10,11" id="btncheck3">
								<label class="btn want-age btn-outline-success check-age" for="btncheck3">초등저학년(8~11세)</label> 
								
								<input type="checkbox" class="btn-check" name="age_list" value="12,13" id="btncheck4"> 
								<label class="btn want-age btn-outline-success check-age" for="btncheck4">초등저학년(11~12세)</label>
							</div>
						</div>
					
						<div class="row">
							<div>
								<strong>아이 성별</strong>
							</div>
							<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
							  <input type="radio" class="btn-check k_gender" name="k_gender" id="btnradio1" value="1"  autocomplete="off" checked>
							  <label class="btn btn-outline-primary k_gender" for="btnradio1">여아</label>
							  <input type="radio" class="btn-check" name="k_gender" id="btnradio2" value="2" autocomplete="off">
							  <label class="btn btn-outline-primary" for="btnradio2">남아</label>
							</div>
						</div>
						
						<div class="row">
							<div>
								<strong>돌봄 비용</strong>
							</div>
							<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
							  <input type="radio" class="btn-check teacherCost" name="teacher_cost" id="btnradio3" value="high" autocomplete="off" checked>
							  <label class="btn btn-outline-primary" for="btnradio3">시급 높은 순</label>
							  <input type="radio" class="btn-check teacherCost" name="teacher_cost" id="btnradio4" value="row" autocomplete="off">
							  <label class="btn btn-outline-primary" for="btnradio4">시급 낮은 순</label>
							</div>
						</div>
						
						<!-- 검색조건  끝-->
					</section>
					
					<!-- 돌봄분야 이미지 추가해야함. -->
					<section>
						<div class="row">
							<div>
								<strong>원하는 돌봄 분야</strong>
							</div>
							<!-- D_COMMON_OPTION  / C_CATEGORY : 5  val(op) 1 ~ 12 -->
							<c:forEach var="c_list" items="${ c_list }">
								<div class="col-md-2">
									<input type="checkbox" class="btn-check" name="k_care_type_list" id="${ c_list.c_introduce }" value="${ c_list.c_introduce }" autocomplete="off" /> 
									<label class="btn btn-outline-success check-type" for="${ c_list.c_introduce }">${ c_list.c_introduce }</label>
								</div>
							</c:forEach>
						</div>
					</section>
					
					<section>
						<input type="checkbox" class="btn-check" name="orderByNear" id="btn-check-1-outlined" checked autocomplete="off">
						<label class="btn btn-outline-secondary" for="btn-check-1-outlined" value="${ kidCardList.teacher_addr }">가까운 순</label> 
						<input type="checkbox" class="btn-check" name="orderByMeet" id="btn-check-2-outlined" checked autocomplete="off">
						<label class="btn btn-outline-secondary" for="btn-check-2-outlined">만났던 순</label> 
						<input type="checkbox" class="btn-check" id="btn-check-3-outlined" checked autocomplete="off">
						
					</section>
					
					<!-- 요 버튼 누르면 위에 조건들 수행 -->
					
					<!-- 검색버튼 좀 더 키워주세요 -->
					<div class="btns" style="text-align: center;margin-right: 190px;">
						<button class="btn btn-outline-success" type="reset">RESET</button>
				 		<button class="btn btn-outline-success" type="button" onclick="fnShowTeacherList()">SEARCH</button>
				 	</div>
		      	</form>
			</div>
		</div>
		<!-- 필터[END] -->
		<hr />
		<!-- 하단 정보[START] -->

		<div class="row" id="kidsCard">

		</div>
		<!-- 하단 정보[START] -->
	</section>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>



<!-- pignose-calendar -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/pignose.calendar.min.css">
<script src="${pageContext.request.contextPath}/common/js/pignose.calendar.full.min.js"></script>

	<script type="text/javascript">
	
		$(function(){
			
			var toDay = new Date().toISOString().substring(0,10);
			//달력
			$('#calendar').pignoseCalendar({
				lang : 'ko',
				minDate : toDay,
				format : 'YYYY-MM-DD',
				select: function(r) {
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
			
			fnShowTeacherList();
		});
		
		//데이터 넘기기
		function fnShowTeacherList() {
			
			var params          = $("#searchForm").serializeObject();
			params.saveIdx      = Number('${sidx}' == '' ? 0 : '${sidx}');
			params.member_p_idx = Number('${kDto.member_p_idx}' == '' ? 0 : '${kDto.member_p_idx}');
			params.teacher_addr = Number('${kidCardList.teacher_addr}' == '' ? 0 : '${kidCardList.teacher_addr}'); //null
			//validation 추가
	
			/* return false; */
			$.ajax({
				method      : 'POST',
				url         : '/findKidsList.do',
				data        : JSON.stringify(params),
				contentType : "application/json",
				success     : function(e){
					$("#kidsCard").html(e);
				},
				error       : function(e){
					console.log(e);
				}
			});
		}
		
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
		}		
		
	</script>

</html>
