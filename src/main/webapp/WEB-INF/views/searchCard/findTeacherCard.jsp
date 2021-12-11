<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    
    <link rel="stylesheet" href="./calendar/fonts/icomoon/style.css">

    <link rel="stylesheet" href="./calendar/css/rome.css">
    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./calendar/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="./calendar/css/style.css">
    
	<title>선생님찾기</title>
	
	
	<!-- main css -->
	<style type="text/css">
		.calendar{
			justify-content: left!important;
		}
	</style>
</head>
<body>
	<!-- TO DO : 현재 하드 코딩임. 각 세션별 ID값 줘서 데이터 받아서 처리해야함. -->
	<div class="search">
	 	<form class="" action="showTeacherList.do" method="post">
			<!-- 캘린더 -->
			<section id="calendar" class="calendar">
				<div class="content">
				    <div class="container text-left">
				      <div class="row justify-content-center">
				        <div class="col-md-10 text-center">
				          <h3 class="mb-5 text-center">언제 방문할까요?</h3>
				          <input type="text" class="form-control w-25 mx-auto mb-3" id="result" placeholder="Select date" disabled="">
				          <form action="#" class="row">
				            <div class="col-md-12">
				              <div id="inline_cal"></div>
				            </div>
				          </form>
				        </div>
				      </div>
				    </div>
			  	</div>
			  	<div id="reserveTime">
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
					  <option selected>돌봄 시작시간을 선택해주세요.</option>
					  <option value="07">오전 7시</option>
					  <option value="08">오전 8시</option>
					  <option value="09">오전 9시</option>
					  <option value="10">오전 10시</option>
					  <option value="11">오전 11시</option>
					  <option value="12">오후 12시</option>
					  <option value="13">오후 1시</option>
					  <option value="14">오후 2시</option>
					  <option value="15">오후 3시</option>
					  <option value="16">오후 4시</option>
					  <option value="17">오후 5시</option>
					  <option value="18">오후 6시</option>
					  <option value="19">오후 7시</option>
					  <option value="20">오후 8시</option>
					  <option value="21">오후 9시</option>
					  <option value="22">오후 10시</option>
					  <!-- TO DO : 공통테이블에서 시간 데이터 뿌려주세요. -->
					</select>
					
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
					  <option selected>돌봄 종료시간을 선택해주세요.</option>
					  <option value="08">오전 8시</option>
					  <option value="09">오전 9시</option>
					  <option value="10">오전 10시</option>
					  <option value="11">오전 11시</option>
					  <option value="12">오후 12시</option>
					  <option value="13">오후 1시</option>
					  <option value="14">오후 2시</option>
					  <option value="15">오후 3시</option>
					  <option value="16">오후 4시</option>
					  <option value="17">오후 5시</option>
					  <option value="18">오후 6시</option>
					  <option value="19">오후 7시</option>
					  <option value="20">오후 8시</option>
					  <option value="21">오후 9시</option>
					  <option value="22">오후 10시</option>
					  <option value="23">오후 11시</option>
					  <!-- TO DO : 공통테이블에서 시간 데이터 뿌려주세요. -->
					</select>
				</div>
			</section>
			
			<section>
		      <input class="form-control me-2" type="search" placeholder="선생님 이름을 입력해 주세요 :)" aria-label="Search">
		      
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
			</section>
			
			<section>
				<input type="checkbox">돌봄유형 bla~bla~ <!-- TO DO : 여기에 돌봄유형 뿌려주세요. -->
			</section>
			
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
		 	<button class="btn btn-outline-success" type="submit">Search</button>
      	</form>
	</div>
</body>

<!-- 캘린더  -->
<script src="./calendar/js/popper.min.js"></script>
<script src="./calendar/js/rome.js"></script>
<script src="./calendar/js/jquery-3.3.1.min.js"></script>

<!-- 부트스트랩 css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<!-- 캘린더 -->
<script>
	$(function() {

	  // rome(inline_cal, { time: false });


		rome(inline_cal, {time: false, inputFormat: 'MMMM DD, YYYY'}).on('data', function (value) {
		  result.value = value;
		});

	});
</script>

</html>