<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
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
	<form name="makeKidsCard" action="makingKidCard.do">
		<div class="container" style="padding: 120px 0;">
			<!--  아이카드 선택 [START] -->
			<div class="row" id="step1">
				<div class="col-12">
					<h2>아이 카드 선택</h2>
					<h4>아이정보</h4>
				</div>
				<div class="col-12">
					<h5>
						아이 카드를 선택해주세요.<br>아이카드가 없을 시에 추가 버튼을 눌러 추가해주세요.
					</h5>
				</div>

				<div class="col-12">
					<c:if test="${ empty k_dto }">
						<h2 align="center">등록된 아이카드가 없습니다!</h2>
					</c:if>
					<c:set var="kidCardLength" value="${fn:length(k_dto) }" />
					<c:forEach items="${ k_dto }" var="k_dto">
						<div class="row p-4 kid-card mb-3" onclick="toggleActive(this)"
							id="${k_dto.idx}"
							style="width: 50%; border: 1px solid #e5e5e5; border-radius: 8px;">							
							<div class="col-12 mb-2">
								<span style="font-weight: bold;">${ k_dto.k_name }</span>
							</div>
							<div class="col-12">
								<span>생일: ${ k_dto.k_birth }</span>
							</div>
							<div class="col-12">
								<span>나이: ${ k_dto.age }</span>
							</div>
							<div class="col-12">
								<span> 성별: <c:if test="${ k_dto.k_gender == 1 }">
									여아
									</c:if> <c:if test="${ k_dto.k_gender == 2 }">
									남아
									</c:if>
								</span>
							</div>
						</div>
					</c:forEach>
					<c:if test="${kidCardLength != 3 }">
						<div>
							<button type="submit" class="btn btn-secondary btn-lg">아이카드추가</button>
						</div>
					</c:if>
					<div>
						<!-- 추가한 아이카드로 등록하기-->
						<button type="button" class="btn btn-outline-primary" onclick="goStep(2)">다음으로</button>
					</div>
				</div>
			</div>
			<!-- 아이카드선택영역 -->

			<!-- 주소정보 선택 [START] -->
			<div id="step2" class="row d-none">
				<div class="col-12">
					<h2>주소 정보 선택</h2>
				</div>
				<div class="col-12">
					<h5>
						아이 카드를 선택해주세요.<br>아이카드가 없을 시에 추가 버튼을 눌러 추가해주세요.
					</h5>
				</div>
				<div>
					<div class="row p-4" style="width: 50%; border: 1px solid #68983b; border-radius: 8px;">
						<div class="col-12 mb-2">
							<c:if test="${ empty addrList }">
								<h2 align="center">등록된 주소가 없습니다!</h2>
							</c:if>
							<c:if test="${ not empty addrList }">
								<div class="col-12 mb-2">
									<span style="font-weight: bold;" id="addr1">(${ addrList.addr1 })</span>
								</div>
								<div class="col-12">
									<span id="addr2">${ addrList.addr2 }</span>
								</div>
								<div class="col-12">
									<input type="text" id="addr3" value="${ addrList.addr3 }" class="form-control"/>
								</div>
							</c:if>
						</div>
						<div class="col-12 mt-3">
							<button type="button" class="btn btn-primary" onclick="kakaopost()">수정하기</button>
						</div>
					</div>
					<div class="mt-3">
						<button type="button" class="btn btn-outline-primary" onclick="goStep(3)">다음으로</button>
					</div>
				</div>
			</div>
			<!-- 주소정보 선택 [END] -->
		</div>
	
		<div id="step3" class="d-none">
			<div class="wrapper">
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
								<option value="${startDate}">${startDate }</option>
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
				<div class="row">
					<div>
						<div class="row">
							<div>맘시터에게 지급할 희망 시급을 적어주세요.</div>
							<div class="col-md-8">
								<input id="cost" class="form-control" name="cost" type="text"
									placeholder="희망시급" aria-label="default input example">
							</div>
						</div>
					</div>
					<div>
						<!-- kidList GO -->
						<button type="button" class="btn btn-outline-primary"
							onclick="goKidList()">등록하기</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- 카카오 주소 API -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- pignose-calendar -->
<link rel="stylesheet" href="./common/css/pignose.calendar.min.css">

<script src="./common/js/pignose.calendar.full.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>

<script>

	let reserveDate;

	//카카오 주소 api
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				$("#addr1").text('(' + data.zonecode + ')');
				$("#addr2").text(data.jibunAddress);
				$("#addr3").val('');
			}
		}).open();
	}

	// 아이카드 클릭 이벤트
	function toggleActive(_this) {
		const selectId = _this.id;
		$('.kid-card').removeClass('is-invalid');
		$('.kid-card').removeClass('active');
		$("#" + selectId).addClass('active');
	}

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
	function goKidList() {

		var cost = $("#cost");
		var COST_VALID = false;

		if(cost.val().trim().length == 0) {
			cost.removeClass('is-valid');
			cost.addClass('is-invalid');
			COST_VALID = false;
		} else {
			cost.addClass('is-valid');
			cost.removeClass('is-invalid');
			COST_VALID = true;
		}

		/* if(!COST_VALID) {
			return false;
		} */
		
		var _kidCard = $(".kid-card");
		var kidCard;

		for (var i = 0; i < _kidCard.length; i++) {
			if (_kidCard[i].classList.contains('active')) {
				kidCard = _kidCard[i].id;
			}
		};

		var start = reserveDate + ' ' + $("#start_date").val();
		if($("#start_date").val().length == 1) start = reserveDate + ' 0' + $("#start_date").val();

		var end = reserveDate + ' ' + $("#end_date").val();
		if($("#end_date").val().length == 1) end = reserveDate + ' 0' + $("#end_date").val();

		var saveIdx = '${sessionScope.saveIdx}';
		
		var formData = new FormData();
		formData.set('member_p_idx', saveIdx);
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
			url : '/reserveCard.do',
 			data : formData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			cache: false, 			
			success : function(e){
				window.alert="예약등록되었습니다.";
				location.href='findTeacher.do?idx='+ saveIdx;
				console.log(e);
			},
			error : function(e){
				console.log(e);
			}
		});
	}

	function goStep(step) {

		if (step == 2) {
			var _kidCard = $(".kid-card");
			var kidCard;
			var KIDCARD_VALID = false;

			for (var i = 0; i < _kidCard.length; i++) {
				if (_kidCard[i].classList.contains('active')) {
					kidCard = _kidCard[i].id;
				}
			}

			if (kidCard == null) {
				KIDCARD_VALID = false;
				_kidCard.addClass('is-invalid');
			} else {
				KIDCARD_VALID = true;
				_kidCard.removeClass('is-invalid');
			}

			if (!KIDCARD_VALID) return false;


			document.getElementById('step1').classList.add('d-none');
			document.getElementById('step2').classList.remove('d-none');

		} else if (step == 3) {

			var detailAddr = $("#addr3");
			var ADDR_VALID = false;

			if(detailAddr.val().trim().length == 0) {
				detailAddr.removeClass('is-valid');
				detailAddr.addClass('is-invalid');
				ADDR_VALID = false;
			} else {
				detailAddr.removeClass('is-invalid');
				detailAddr.addClass('is-valid');
				ADDR_VALID = true;
			};

			if(!ADDR_VALID) return false;


			document.getElementById('step2').classList.add('d-none');
			document.getElementById('step3').classList.remove('d-none');
		}
	}
</script>
</html>