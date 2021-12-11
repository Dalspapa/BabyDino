<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
	<br>
	<br>
	<br>
	<div id="step1">
		<form name="makeKidsCard" action="makingKidCard.do">
			<div class="container">
				<h2>아이 카드 선택</h2>
				<p>아이정보</p>
				<div>
					아이 카드를 선택해주세요.<br>아이카드가 없을 시에 추가 버튼을 눌러 추가해주세요.
				</div>

				<!-- 아이카드선택영역 -->
				<div>
					<div>
						<div>
							<c:if test="${ empty k_dto }">
								<h2 align="center">등록된 아이카드가 없습니다!</h2>
							</c:if>

							<c:forEach items="${ k_dto }" var="k_dto">
								<input class="form-check-input" type="checkbox"
									value="${ k_dto.idx } " />
								<div style="width: 500px; height: 70px; border: 1px solid red;">
									<div>이름: ${ k_dto.k_name }</div>
									<div>
										생일: ${ k_dto.k_birth } 나이: ${ k_dto.age } 성별:
										<c:if test="${ k_dto.k_gender == 1 }">
										여아
										</c:if>
										<c:if test="${ k_dto.k_gender == 2 }">
										남아
										</c:if>
									</div>
								</div>
							</c:forEach>
						</div>
						<div>
							<button type="submit" class="btn btn-secondary btn-lg">+아이카드</button>
						</div>
						<div>
							<!-- 등록한 페이지 만들기 -->
							<button type="button" class="btn btn-outline-primary"
								onclick="goStep(2)">등록하기</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
		<br><br><br><br><br>
		<div id="step2" class="d-none" >
			<div class="wrapper">
				<div>
					<div>원하는 날짜가 언제인가요 ?</div>
					<div class="calendar"></div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-6">
						<div>시작시간</div>
						<input type="text" name="timepicker1" class="timepicker1" />
					</div>
					<div class="col-md-6">
						<div>종료시간</div>
						<input type="text" name="timepicker2" class="timepicker2" />
					</div>
				</div>

				<hr>
				<div>
					<div class="row">
						<div>맘시터에게 지급할 희망 시급을 적어주세요.</div>
						<div class="col-md-8">
							<input class="form-control" type="text" placeholder="희망시급" aria-label="default input example">
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>
	function goStep(step){

		if(step == 2){
			document.getElementById('step1').classList.add('d-none');
			document.getElementById('step2').classList.remove('d-none');

		}
	}

	$('.calendar').pignoseCalendar({
		lang: 'ko',
		minDate: moment().format("YYYY-MM-DD"),
		format: 'YYYY.MM.DD'
		});

	$('.timepicker1').wickedpicker();
	$('.timepicker2').wickedpicker();
</script>

</html>