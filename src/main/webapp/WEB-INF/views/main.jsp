<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
<style>
@font-face {
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
	font-family: 'BinggraeSamanco-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/BinggraeSamanco-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
header { 
    font-family: 'BinggraeSamanco-Bold';
    font-size:150%;
}
.col-sm{
	padding-right: 50%;
	font-size:200%;
}
.display-4{
    font-family: 'Cafe24SsurroundAir';
    padding-left: 600px;
    font-size:150%;
}
.lead{
    font-family: 'Cafe24SsurroundAir';
    padding-left: 370px;
    font-size:150%;
}
footer{
	width: 1200px;
	height: 280px;
	background-color: lightgray;
	margin-top: 50px;
}
.footerImg img{
	width: 70px;
	height: auto;
	margin-top: 20px;
	margin-left: 20px;
}
.footerPanel{
	font-size: 12px;
	margin-top: 20px;
	margin-left: 20px;
	padding-bottom: 20px;
	font-family: 'BinggraeSamanco-Bold';
}
</style>
<!--부트스트랩 링크-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!--부트스트랩 링크-->
</head>
<body>
	<header>
		<nav class="container">
			<ul class="nav justify-content-end">
				<li class="col-sm">
					<a class="nav-link active"> 아기공룡</a>
				</li>
				<li class="nav-item2">
					<a class="nav-link active" href="findTeacher.do">돌봄신청</a>
				</li>
				<li class="nav-item2">
					<a class="nav-link" href="findKids.do">아이찾기</a>
				</li>
				<li class="nav-item2">
					<a class="nav-link" href="noticeMain.do">궁금해요</a>
				</li>
				<li class="nav-item2">
					<a class="nav-link disabled" href="icon.do">아이콘</a>
				</li>
			</ul>
		</nav>
	</header>
	<section class="#">	
		<article class="#">
			<div class="active">
            	<video preload="auto" autoplay loop muted webkit-playsinline="true" playsinline="true" 
            	src="./common/video/mainvideo.mp4" type="video/mp4" style="width:100%; height:500px;"></video>
			</div>
			<div class="container">
					<h6 class="display-4">아기<br>공룡</h6>
					<p class="lead">육아에 도움이 필요할 땐 언제 어디서나 아기공룡이 해결하겠습니다.</p>
			</div>
			<div class="container">
				<div class="col-sm-pic">
						<img class="d-block w-100" src="./common/img/main_image.jpg" alt="아기공룡" />
				</div>
			</div>
		</article>
		<section class="container">
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  			<div class="carousel-indicators">
   				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  			</div>
  			<div class="carousel-inner">
    		<div class="carousel-item active">
      			<img src="./common/img/베이비위크.jpg" class="d-block w-100" alt="사진예시1">
    		</div>
    		<div class="carousel-item">
      			<img src="./common/img/어린이미래교육.jpg" class="d-block w-100" alt="사진예시2">
    		</div>
    		<div class="carousel-item">
      			<img src="./common/img/어린이박람회.jpg" class="d-block w-100" alt="사진예시3">
    		</div>
  			</div>
  			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Previous</span>
  			</button>
  			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Next</span>
  			</button>
			</div>
		</section>
		
		<article class="#">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">새로운 추천</h5>
					<h6 class="card-subtitle mb-2 text-muted">김태형 선생님</h6>
				</div>
			</div>
		</article>
	</section>
	<footer>
	<div class="footerImg">
		<img src="#" alt="하단로고">
	</div>
	<p class="footerPanel">
		상호 : (주) 아기공룡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표자 :김이최<br><br>
		서울특별시 마포구 망원동 123-12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL : 1677 - 0707 / +82 70 - 1234- 4567&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binzip@binzip.com<br><br>		
		사업자등록번호 : 404-0707-1215&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 : 제2021-서울마포-0123[사업자정보확인]<br><br>
		관광사업자등록 : 일반여행업 2021-000012(마포구청)<br><br><br><br>
		&copy; BINZIP<br>
	</p>
</footer>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
</html>