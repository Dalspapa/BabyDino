<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄 현황</title>
<!-- 이거 링크 삭제하기!부트스트랩 링크임 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<style>
.careNote{
	width: 80%;
}
.careNote .title{
	font-weight: 500;
	font-size:30px;
	font-family: 'S-Air';
	color: #68983b;
	text-align: center;
}
.careNote .btns{
    display: flex;
    justify-content: center;
}
.careNote .btns .requestbtn{
    padding: 10px;
    background-color: #68983b;
    border-radius: 12px;
    margin: 14px;
}
.careNote .btns .requestbtn a{
	text-decoration: none;
	color: white;
}
.careNote section .care{
    margin-left: 427px;
    margin-bottom: 10px;
    margin-top: 10px;
}
.careNote section .requestCare{
	 display: flex;
     margin-left: 59px;
}
.careNote section .requestCare .care{
	margin-left: -375px;
}
.careNote section .requestCare .tInfo{
	margin: 11px;
}
.careNote section .requestCare .careSta{
	background-color: gray;
    width: 418px;
    height: 215px;
    margin-left: 357px;
    border-radius: 10px;
}
.careNote .lastbtn{
	text-align: center;
	margin-top: 14px;
}
</style>
<body>
	<div class="careNote">
			<!-- 돌봄 현황 제목 & 요청 현황 버튼 -->
			<div class="title">
				<div>돌봄 현황</div>
			</div>
			<div class="btns">
				<div class="requestbtn"><a href="#">요청 받은 돌봄 현황</a></div>
				<div class="requestbtn"><a href="#">요청한 돌봄 현황</a></div>
			</div>
			
			<!-- 요청받은 돌봄 현황 섹션 -->
			<section>
				<div class="care">#돌봄 상태 들어가는 부분</div>
				<div class="requestCare">
					<!-- 선생님 카드 -->
					<div class="careSta">
						<div>#선생님 프로필 사진들어가는 부분</div>
						<div>#선생님 소개 들어가는 부분</div>
					</div>
					<!-- 선생님 정보 -->
					<div class="tInfo">
						<div>#선생님 이름 들어가는 부분</div>
						<div>#종이접기 등 놀이 부분 </div>
						<div>결제 금액: #결제 금액</div>
						<div>#날짜 들어가는 부분</div>
						<div>#시간 들어가는 부분</div>
						<button type="button" class="btn btn-outline-success" onclick="#">채팅하기</button>
					</div>
				</div>
			</section>
			
			
		 	<!-- 요청한 돌봄 현황 섹션 -->
			<section>
				<div class="care">#돌봄 상태 들어가는 부분</div>
				<div class="requestCare">
					<!-- 선생님 카드 -->
					<div class="careSta">
						<div>#선생님 프로필 사진들어가는 부분</div>
						<div>#선생님 소개 들어가는 부분</div>
					</div>
					<!-- 선생님 정보 -->
					<div class="tInfo">
						<div>#선생님 이름 들어가는 부분</div>
						<div>#종이접기 등 놀이 부분 </div>
						<div>결제 금액: #결제 금액</div>
						<div>#날짜 들어가는 부분</div>
						<div>#시간 들어가는 부분</div>
						<button type="button" class="btn btn-outline-success" onclick="#">채팅하기</button>
					</div>
				</div>
			</section>
			
			<div class="lastbtn">
				<button type="button" class="btn btn-outline-success" onclick="#">지난 예약 보기</button>
			</div>
	</div>
</body>
</html>