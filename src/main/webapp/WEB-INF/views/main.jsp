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
@font-face {
    font-family: 'KOTRAHOPE';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
header { 
    font-family: 'BinggraeSamanco-Bold';
    font-size:150%;
}

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
    font-size:200%;
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
  .section2{
   	font-family: 'Cafe24SsurroundAir';
    font-size:150%;
    text-align: center;
    }
    ._36YEk {
    width: 510px;
    margin: 0 auto;
}
}
.mypage_icon{
	height: 40px;
	width: 40px;
}
.page-section-question{
	font-family: 'Cafe24SsurroundAir';
}
.page-section-recom{
	font-family: 'Cafe24SsurroundAir';
	text-align: center;
}
.col-lg-4{
	padding: 2rem;
}

.content-box{
	display: inline;
}
p{
   text-align:center;
   margin:1.5rem auto;
}
.page-section-gal{
   font-family:'Cafe24SsurroundAir';
   text-align: center;
}
hr.divider-light{
   background: #fff;
}
hr.divider {
    height: 0.2rem;
    max-width: 3.25rem;
    margin: 1.5rem auto;
    background-color: black;
    opacity: 1;
}
.section02 {
    background: #EADA22;
    color: #000;
}
.mainvideo{
 	object-fit:cover;
}
.img-sarce{
	width: 10%;
}
footer{
 	font-family: 'BinggraeSamanco-Bold';
  	font-size:150%;
  	color:#FAD846;
  	padding-top:3rem;
	background: #68983b;
	text-align: center;
}

</style>
<!--부트스트랩 링크-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<header>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">ㅇㄱㄱㄹ</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about">돌봄신청</a></li>
                        <li class="nav-item"><a class="nav-link" href="#projects">아이찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">궁금해요</a></li>
                        <li class="nav-item"><a class="nav-link" href="loginForm.do"><img class="mypage_icon" src="./common/img/icons/icons_main.png" /></a></li>
                    </ul>
                </div>
            </div>
        </nav>
	</header>
	
	<!-- 영상부분 -->
	<section class="container">	
			<div class="active">
            	<video class="mainvideo" preload="auto" autoplay loop muted webkit-playsinline="true" playsinline="true" 
            	src="./common/video/mainvideo.mp4" type="video/mp4" style="width:100%; height:500px;"></video>
			</div>
	</section>
	<br>	
	
	<!-- 아기공룡 안내글자 -->	
	<section class="section2">
			<div>
				<h1>아기<br>공룡</h1>
				<p>육아에 도움이 필요할 땐 언제 어디서나 아기공룡이 해결하겠습니다.</p>
			</div>
	</section>
	<br>
	<br>
	
   <!-- 메인사진+안내문구 -->
   <section class="page-section-question" id="services">
      <div class="container ">
         <div class="text-center">
            <img src="./common/img/메인사진1.png" alt="메인사진1">
         </div>
         <section class="section02" id="about">
      <div class="container px-4 px-lg-2">
         <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8 text-center">
               <h2 class="text-white mt-0">
                  <br> 믿을 수 있는 <br> 육아 파트너
               </h2>
               <hr class="divider divider-light">
               <p class="text-white-75 mb-4">
               우리는, 
               <ul>
                  <ol>시대에 맞춰 아이돌봄서비스를 육아 가정에 제공하고, 부모님의 육아를 함께합니다.</ol>
                  <ol>아이,양육자,교사 간의 시너지를 일으켜 가장 큰 행복을 위해 노력합니다.</ol>
                  <ol>소통을 일순위로, 신뢰할 수 있는 서비스와 품격으로 다가갑니다.</ol>
               </ul>
            </div>
         </div>
      </div>
   </section>
	
	<!-- 광고배너 -->
	<br>
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
      			<img src="./common/img/어린이1.jpg" class="d-block w-100" alt="사진예시2">
    		</div>
    		<div class="carousel-item">
      			<img src="./common/img/어린이2.jpg" class="d-block w-100" alt="사진예시3">
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
		<br><br>
		
   <!-- 놀이학습예시 이미지부분 -->
   <section class="page-section-gal" id="services">
      <div class="container">
         <div class="text-center" ><br>
            <h2 class="section-heading text-uppercase">모든 순간이 놀이가 되도록</h2>
            <img src="./common/img/1.jpg" alt="책읽기">
            <img src="./common/img/2.jpg" alt="보드게임">
            <img src="./common/img/3.jpg" alt="과학놀이">
            <img src="./common/img/4.jpg" alt="카드놀이"> 
            <img src="./common/img/5.jpg" alt="과학놀이"> 
            <img src="./common/img/6.jpg" alt="모래놀이">
         <br><br>
         <div><p>#독서 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;#촉감놀이 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;#카드놀이  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;#인형놀이 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;#과학놀이 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;#숫자놀이</p></div>
         <br>
         <h2 class="section-heading text-uppercase">공룡선생님과 놀면서 배우는 다양한 놀이학습</h2>
            <img src="./common/img/7.jpg" alt="퀴즈"> 
            <img src="./common/img/13.jpg" alt="모래놀이"> 
            <img src="./common/img/9.jpg" alt="물놀이"> 
            <img src="./common/img/10.jpg" alt="촉감놀이"> 
            <img src="./common/img/11.jpg" alt="블럭놀이"> 
            <img src="./common/img/12.jpg" alt="도형놀이"> 
         </div>
      </div>
   </section>
   <br><br><br><br><br><br><br>
   
		<!-- 아기공룡 궁금해요 -->
	    <section class="page-section-question" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">아기공룡이 궁금하신가요?</h2><br>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <p class="my-3"><img src="./common/img/icons/smile.jpg"></p>
                        <h4 class="text-muted">아기공룡을 어떻게 믿죠?</h4>
                    </div>
                    <div class="col-md-4">
                        <p class="my-3"><img src="./common/img/icons/people.jpg"></p>
                        <h4 class="text-muted">부모님을 어떻게 믿죠?</h4>
                    </div>
                    <div class="col-md-4">
                        <p class="my-3"><img src="./common/img/icons/membershipticket.jpg"></p>
                        <h4 class="text-muted">아기공룡 멤버쉽은 무엇인가요?</h4>
                    </div>
                </div>
            </div>
        </section>
        <br><br>
        
        <!-- 공룡선생님 추천 -->
	 <section class="page-section-recom" id="services">
	 	 <div class="text-center">
               <h3 class="section-heading text-uppercase">이번달 우리동네 공룡 선생님</h3><br>
         </div>
 		<div class="container marketing">
    		<div class="row">
      			<div class="col-lg-4">
      				<p>새로운 추천</p>
        			<svg class="bd-placeholder-img rounded-circle" width="140" height="140" ><rect width="100%" height="100%" fill="#777"/></svg>
        			<p><br>선생님 이름</p>
      			</div>
      			<div class="col-lg-4">
      				<p>새로운 추천</p>
        			<svg class="bd-placeholder-img rounded-circle" width="140" height="140" ><rect width="100%" height="100%" fill="#777"/></svg>
        			<p><br>선생님 이름</p>
	   			</div>
      			<div class="col-lg-4">
      				<p>새로운 추천</p>
        			<svg class="bd-placeholder-img rounded-circle" width="140" height="140" ><rect width="100%" height="100%" fill="#777"/></svg>
        			<p><br>선생님 이름</p>
      			</div>
    		</div>
    	</div>
	 </section>
	 <br>
	 
	<!-- 아기공룡 이용방법 -->
	<section class="container">
		<div class="text-center">
			   <img src="./common/img/icons/click.jpg">
               <h3 class="section-heading text-uppercase">아기공룡 이렇게 이용하세요!</h3><br>
        </div>
        <div class="guide-box">
        	<div class="content-box">
		        <div class="img-sarce">
					<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-1-v2.svg" alt="회원가입하기">
				</div>
				<div class="contents">
					<h6>회원가입하기</h6>
					<p class="_1Up6C"> 빠르고 간편한 회원가입을 진행해주세요.</p>
				</div>
			</div>
		
			<div class="content-box">
				<div class="img-sarce">
					<img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-2-v2.svg" alt="신청서작성하기">
				</div>
				<div class="contents">
					<h6>신청서 작성하기</h6>
					<p class="_1Up6C"> 돌봄이 필요한 요일, 장소, 원하는 돌봄 방식 등을 작성하게 됩니다.</p>
				</div>
			</div>
		
			<div class="content-box">
				<div class="img-sarce">
					<img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-3-v2.svg" alt="선생님신청하기">
				</div>
				<div class="contents">
					<h6>선생님 신청하기</h6>
					<p class="_1Up6C"> 우리동네로 검색해서, 맘에 드는 공룡선생님을 찾아 신청메시지를 보내세요.</p>
				</div>
			</div>
		
		
			<div class="content-box">
		        <div class="img-sarce">
					<img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-4-v2.svg" alt="인터뷰 후 채용하기">
				</div>
			
				<div class="contents">
					<h6>인터뷰 후 채용하기</h6>
					<p class="_1Up6C"> 내 신청메시지에 수락한 공룡선생님들과 인터뷰를 진행한 뒤 맘에 드는 공룡선생님를 채용합니다.</p>
				</div>
			</div>
			
		
			<div class="content-box">
		        <div class="img-sarce">
					<img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-5-v2.svg" alt="후기 작성하기">
				</div>
				<div class="contents">
					<h6>후기 작성</h6>
					<p class="_1Up6C">채용한 공룡선생님에 대한 후기를 작성하세요. 내가 작성한 후기는 공룡선생님 프로필에 노출됩니다.</p>
				</div>
			</div>
		</div>	
	</section>
	
	<footer>
                  상호 : (주) 아기공룡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표자 : 김이최<br> <br>
                  서울특별시 마포구 망원동 479-15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br>TEL : 1677 - 0707 /+82 70 - 1234-4567&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br>E-Mail:babydino@dinosour.com<br>
         <br> 사업자등록번호 : 404-0707-1215&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
         <br> <br> &copy; BabyDino<br>
	</footer>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
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