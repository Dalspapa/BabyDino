<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
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
		<div class="#">
			<h5>아기공룡</h5>
		</div>
		<nav class="#">
			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link active" href="findTeacher.do">돌봄신청</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="findKids.do">아이찾기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="noticeMain.do">궁금해요</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="icon.do">아이콘</a>
				</li>
			</ul>
		</nav>
	</header>
	<section class="#">	
		<article class="#">
			<div class="active">
            	<video preload="auto" autoplay loop muted webkit-playsinline="true" playsinline="true" 
            	src="./common/video/main_video.mp4" type="video/mp4" style="width:100%; height:500px;"></video>
			</div>
			<div class="jumbotron jumbotron-fluid">
				<div class="container">
					<h6 class="display-4">아기공룡</h6>
					<p class="lead">육아에 도움이 필요할 땐 언제 어디서나 아기공룡이 해결하겠습니다.</p>
				</div>
			</div>
			<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="active">
						<img class="d-block w-100" src="./common/img/main_image.jpg" alt="First slide" />
					</div>
					<div class="#">
						<img class="d-block w-100" src="./common/img/ex.jpg" alt="Second slide" />
					</div>
					<div class="#">
						<img class="d-block w-100" src="#" alt="Third slide" />
					</div>
				</div>
			</div>
		</article>
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
			<img src="#" alt="하단로고" />
		</div>
		<p>
			상호 : (주) 아기공룡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표자 : 김이최<br> <br>
			서울특별시 마포구 망원동 479-15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL : 1677 - 0707 /
			+82 70 - 1234-
			4567&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-Mail:babydino@dinosour.com<br>
			<br> 사업자등록번호 : 404-0707-1215&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
			<br> <br> <br> <br> <br> &copy; BINZIP<br>
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