<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- pignose-calendar -->
<link rel="stylesheet" href="./common/css/pignose.calendar.min.css">

<script src="./common/js/pignose.calendar.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>

<style>
	.pignose-calendar-unit-disabled a{
		color:red !important
	}
</style>

<!-- wickedpicker  -->
<link rel="stylesheet" href="./common/css/wickedpicker.css">
<script src="./common/js/wickedpicker.js"></script>
</head>
<body>
<h1>예약테이블 만들기</h1><br><br><br><br><br><br><br>
<section>
	<form>
		<div class="wrapper">
			<div>
				<div>원하는 날짜가 언제인가요 ?</div>
				<div class="calendar"></div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<div>시작시간</div>
					<input type="text" name="timepicker1" class="timepicker1"/>
				</div>
				<div class="col-md-6">
					<div>종료시간</div>
					<input type="text" name="timepicker2" class="timepicker2"/>
				</div>
			</div>
			
			<hr>
			<div>
				<div class="row">
					<div >맘시터에게 지급할 희망 시급을 적어주세요.</div> 
					<div class="col-md-8">
						<input class="form-control" type="text" placeholder="희망시급" aria-label="default input example">
					</div>
				</div>
			</div>
			
		</div>
	</form>	
</section>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
$('.calendar').pignoseCalendar({
	lang: 'ko',
	minDate: moment().format("YYYY-MM-DD"),
	format: 'YYYY.MM.DD'
	});
	
$('.timepicker1').wickedpicker();
$('.timepicker2').wickedpicker();
</script>
</html>