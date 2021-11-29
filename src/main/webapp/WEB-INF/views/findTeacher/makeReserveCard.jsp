<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
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
<h1>예약테이블 만들기</h1>
<section>
	<form>
		<div class="container">
			
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