<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
<script src="https://kit.fontawesome.com/3ae3ff2538.js" crossorigin="anonymous"></script>
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
</style>
<style>
#mainNav {
  min-height: 3.5rem;
  background-color: #fff;
}
#mainNav .navbar-toggler {
  font-size: 80%;
  padding: 0.75rem;
  color: #64a19d;
  border: 1px solid #64a19d;
}
#mainNav .navbar-toggler:focus {
  outline: none;
}
#mainNav .navbar-brand {
  color: #000;
  font-weight: 700;
  padding: 0.9rem 0;
}
#mainNav .navbar-nav .nav-item:hover {
  color: fade(#fff, 80%);
  outline: none;
  background-color: transparent;
}
#mainNav .navbar-nav .nav-item:active, #mainNav .navbar-nav .nav-item:focus {
  outline: none;
  background-color: transparent;
}
@media (min-width: 992px) {
  #mainNav {
    padding-top: 0;
    padding-bottom: 0;
    border-bottom: none;
    background-color: transparent;
    transition: background-color 0.3s ease-in-out;
  }
  #mainNav .navbar-brand {
    padding: 0.5rem 0;
    color: rgba(255, 255, 255, 0.5);
  }
  #mainNav .nav-link {
    transition: none;
    padding: 2rem 1.5rem;
    color: rgba(255, 255, 255, 0.5);
  }
  #mainNav .nav-link:hover {
    color: rgba(255, 255, 255, 0.75);
  }
  #mainNav .nav-link:active {
    color: #fff;
  }
  #mainNav.navbar-shrink {
    background-color: #fff;
  }
  #mainNav.navbar-shrink .navbar-brand {
    color: #000;
  }
  #mainNav.navbar-shrink .nav-link {
    color: #000;
    padding: 1.5rem 1.5rem 1.25rem;
    border-bottom: 0.25rem solid transparent;
  }
  #mainNav.navbar-shrink .nav-link:hover {
    color: #64a19d;
  }
  #mainNav.navbar-shrink .nav-link:active {
    color: #467370;
  }
  #mainNav.navbar-shrink .nav-link.active {
    color: #64a19d;
    outline: none;
    border-bottom: 0.25rem solid #64a19d;
  }
}
.mypage_icon{
	height: 40px;
	width: 40px;
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
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">아 기 공 룡</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about">돌봄신청</a></li>
                        <li class="nav-item"><a class="nav-link" href="#projects">아이찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">궁금해요</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup"><img class="mypage_icon" src="./common/img/icons/icons_main.png" /></a></li>
                    </ul>
                </div>
            </div>
        </nav>
	</header>
	<section class="#">	
		<article class="#">
			<div class="active">
            	<video preload="auto" autoplay loop muted webkit-playsinline="true" playsinline="true" 
            	src="./common/video/main_video.mp4" type="video/mp4" style="width:100%; height:500px;"></video>
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
      			<img src="./common/img/사진1.jpg" class="d-block w-100" alt="사진예시1">
    		</div>
    		<div class="carousel-item">
      			<img src="./common/img/사진2.jpg" class="d-block w-100" alt="사진예시2">
    		</div>
    		<div class="carousel-item">
      			<img src="./common/img/사진3.jpg" class="d-block w-100" alt="사진예시3">
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
<script>	
	window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    // Shrink the navbar 
    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 74,
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

});
</script>
</html>