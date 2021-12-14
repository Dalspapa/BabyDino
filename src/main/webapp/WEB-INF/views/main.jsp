<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- header -->
<!DOCTYPE html>
<html>
	<head>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<style>
		/*로그인 모달창*/
		.modal .modal-dialog .modal-content .modal-header .modal-title{
			font-size: 24px;
			font-weight: 500;
		}
		.modal .modal-dialog .modal-content .modal-footer .login-buton-box a{
			text-decoration: none;
			color: green;
		}
		.modal .modal-dialog .modal-content .modal-footer .login-buton-box a:hover{
			color: white;
		}
		/*카카오맵*/
		#section09 {
			width : 80%;
			height : 80%;
			margin-left : 10%;
			margin-right : 10%;
		}
		#section09 #map {
		position: absolute;
		left: 0px;
		width: 100%;
		height: 100%;
		margin-left : 70%;
		margin-right : 70%;
		touch-action: none;
		cursor: url("https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico") 7 5, url("https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico"), default;
		}


	</style>
	</head>
	<body id="page-top">
	  <!-- wrapper -->
	  <div class="wrapper">
	    <!-- 영상부분 -->
	    <section id="section01" >
	      <div class="active">
	        <video class="mainvideo" preload="auto" autoplay loop muted webkit-playsinline="true" playsinline="true"
	              src="./common/video/mainvideo.mp4" type="video/mp4"></video>
	      </div>
	    </section>
	    <!-- 아기공룡 안내글자 -->
	    <section id="section02">
	        <div>
	          <h1 class="text-uppercase mb-4" style="font-weight: 600;">아기<br>공룡</h1>
	          <p>육아에 도움이 필요할 땐 언제 어디서나 아기공룡이 해결하겠습니다.</p>
	        </div>
	    </section>


/*카카오맵*/
#section09 {
	width: 80%;
	height: 80%;
	margin-left: 10%;
	margin-right: 10%;
}

#section09 #map {
	position: absolute;
	left: 0px;
	width: 100%;
	height: 100%;
	margin-left: 70%;
	margin-right: 70%;
	touch-action: none;
	cursor:
		url("https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico")
		7 5,
		url("https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico"),
		default;
}
</style>
</head>
<body id="page-top">
	<!-- wrapper -->
	<div class="wrapper">
		<!-- 영상부분 -->
		<section id="section01">
			<div class="active">
				<video class="mainvideo" preload="auto" autoplay loop muted
					webkit-playsinline="true" playsinline="true"
					src="./common/video/mainvideo.mp4" type="video/mp4"></video>
			</div>
		</section>
		<!-- 아기공룡 안내글자 -->
		<section id="section02">
			<div>
				<h1 class="text-uppercase mb-4" style="font-weight: 600;">
					아기<br>공룡
				</h1>
				<p>육아에 도움이 필요할 땐 언제 어디서나 아기공룡이 해결하겠습니다.</p>
			</div>
		</section>

		<!-- 메인사진+안내문구 -->
		<section id="section03 services " class="page-section-question">
			<div class="col-xxl col-lg">
				<img class="mianimg" src="./common/img/메인사진1.png" alt="메인사진1">
			</div>
			<div id="about" class="px-4 px-lg-2 miantext">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-lg-8 col-sm-6 text-center">
						<h2 class="text-white mt-0">믿을 수 있는</h2>
						<h2 class="text-white mt-0">육아 파트너</h2>
						<hr class="divider divider-light">
						<p class="text-white-75 mb-4 fw-bold">우리는,</p>
						<p>
							시대에 맞춰 아이돌봄서비스를 육아 가정에 제공하고</br> 부모님의 육아를 함께합니다.</br> 아이, 양육자, 교사 간의 시너지를
							일으켜</br>
							<strong class="text-white-75 mb-4 fw-bold">가장 큰 행복</strong>을 위해
							노력합니다.</br>
							</br> 소통을 일순위로</br> 신뢰할 수 있는 서비스와 품격으로 다가갑니다.</br>
						</p>
					</div>
				</div>
			</div>
			<!--  ./메인사진+안내문구 -->
		</section>
		<!-- 광고배너 -->
		<section id="section04" class="container">
			<div class="text-center">
				<hr class="divider divider-black mt-5 mb-5">
				<h2 class="section-heading text-uppercase"
					style="font-family: 'S-Air';">아기공룡이 인증하는 후기</h2>
			</div>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./common/img/인증.png" class="d-block w-100" alt="사진예시1">
					</div>
					<div class="carousel-item">
						<img src="./common/img/인증2.png" class="d-block w-100" alt="사진예시2">
					</div>
					<div class="carousel-item">
						<img src="./common/img/인증3.png" class="d-block w-100" alt="사진예시3">
					</div>
				</div>

				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>

		<!-- 놀이학습예시 이미지부분 -->
		<section id="section05" class="page-section-gal">
			<div class="container">
				<div class="text-center">
					<div>
						<hr class="divider divider-black mt-5 mb-5">
						<h2 class="section-heading text-uppercase">모든 순간이 놀이가 되도록</h2>
						<h5 class="">공룡선생님과 놀면서 배우는 다양한 놀이학습</h5>
						<div class="tag">
							<p>#독서</p>
							<p>#촉감놀이</p>
							<p>#카드놀이</p>
							<p>#인형놀이</p>
							<p>#과학놀이</p>
							<p>#숫자놀이</p>
						</div>

						<div class="row nori-imgs">
							<div class="col-xxl-2 col-lg col-sm-6 col-xs-6">
								<span class="nori-box "> <img src="./common/img/1.jpg"
									alt="책읽기">
								</span>
							</div>
	                <div class="col-xxl-2 col-lg col-sm-6 col-xs-6" >
	                  <span class="nori-box " >
	                    <img src="./common/img/img2.jpg" alt="책읽기">
	                  </span>
	                </div>
	                <div class="col-xxl-2 col-lg col-sm-6 col-xs-6" >
	                  <span class="nori-box " >
	                    <img src="./common/img/img3.jpg" alt="책읽기">
	                  </span>
	                </div>
	                <div class="col-xxl-2 col-lg col-sm-6 col-xs-6" >
	                  <span class="nori-box">
	                    <img src="./common/img/img8.jpg" alt="책읽기">
	                  </span>
	                </div>
					<div class="col-xxl-2 col-lg col-sm-6 col-xs-6">
	                  <span class="nori-box">
	                    <img src="./common/img/img12.jpg" alt="책읽기">
	                  </span>
	                </div>
	                <div class="col-xxl-2 col-lg col-sm-6 col-xs-6">
	                  <span class="nori-box">
	                    <img src="./common/img/img6.jpg" alt="책읽기">
	                  </span>
	                </div>
	              </div>
	            </div>
	          </div>
	      </div>
	    </section>

	      <!-- 아기공룡 궁금해요 -->
	    <section id="section06" class="page-section-question">
	          <div class="container">
	              <div class="text-center">
	                  <hr class="divider divider-black mt-5 mb-5">
	                  <h2 class="section-heading text-uppercase">아기공룡이 궁금하신가요?</h2><br>
	              </div>
	              <div class="row faq-imgs">
	                <div class="col-lg col-sm-4 col-xs text-center" >
	                  <span class="faq-box" >
	                    <img src="./common/img/icon1.png" alt="아이공룡을 어떻게 믿죠?"><hr>
	                    <h5>전문 1:1 놀이 돌봄</h5>
	                  </spn>
	                </div>
	                <div class="col-lg col-sm-4 col-xs text-center" style="MARGIN: -4px;" >
	                  <span class="faq-box" >
	                    <img src="./common/img/icon2.png" alt="부모님을 어떻게 믿죠?"><hr>
	                    <h5>아이의 일상을 기록하는 성장노트</h5>
	                  </span>
	                </div>

	                <div class="col-lg col-sm-4 col-xs text-center" style="MARGIN-TOP: -17PX;" >
	                  <span class="faq-box">
	                    <img src="./common/img/icon3.png" alt="아기공룡 멤버쉽은 무엇인가요?"><hr>
	                  </span>
	                 	<h5>믿을 수 있는 아기공룡 시스템</h5>
	                </div>
	              </div>
	              <div class="m-5">
	                <button class="btn btn btn-warning text-center d-block m-auto">FAQ 더 알아보기</button>
	              </div>
	          </div>
	    </section>
	    <!-- 공룡선생님 추천 -->
	    <section id="section07" class="page-section-recom">
	      <div class="text-center">
	        <hr class="divider divider-black mt-5 mb-5">
	        <h3 class="section-heading text-uppercase">이번달 우리동네 공룡 선생님</h3><br>
	      </div>
	      <div class="container marketing">
	          <div class="teacher-proposal row">
	            <div class="row p-0 m-auto">
	              <!-- filp01 -->
	              <div class="flip-card col-lg">
	                <div class="flip-card-inner">
	                  <div class="flip-card-front">
	                    <div class="mb-2">
	                      <img src="./common/img/faq-img.png" alt="선생님 사진" >
						</div>
						<div>
							<h6 class="text-warning">새로운 추천01</h6>
							<h4>선생님 이름</h4>
						</div>
						</div>
								<div class="flip-card-back ">
									<h1>선생님 이름</h1>
									<p>선생님을 설명하는 부분입니다.</p>
									<ul>
										<li>테스트01</li>
										<li>테스트02</li>
										<li>테스트03</li>
									</ul>
								</div>
							</div>
							<!-- ./ filp01 -->
						</div>

						<!-- filp02 -->
						<div class="flip-card col-lg">
							<div class="flip-card-inner">
								<div class="flip-card-front">
									<div class="mb-2">
										<img src="./common/img/faq-img.png" alt="선생님 사진">
									</div>
									<div>
										<h6 class="text-warning">새로운 추천02</h6>
										<h4>선생님 이름</h4>
									</div>
								</div>
								<div class="flip-card-back ">
									<h1>선생님 이름</h1>
									<p>선생님을 설명하는 부분입니다.</p>
									<ul>
										<li>테스트01</li>
										<li>테스트02</li>
										<li>테스트03</li>
									</ul>
								</div>
							</div>
							<!-- ./ filp02 -->
						</div>

						<!-- filp03 -->
						<div class="flip-card col-lg">
							<div class="flip-card-inner">
								<div class="flip-card-front">
									<div class="mb-2">
										<img src="./common/img/faq-img.png" alt="선생님 사진">
									</div>
									<div>
										<h6 class="text-warning">새로운 추천03</h6>
										<h4>선생님 이름</h4>
									</div>
								</div>
								<div class="flip-card-back">
									<h1>선생님 이름</h1>
									<p>선생님을 설명하는 부분입니다.</p>
									<ul>
										<li>테스트01</li>
										<li>테스트02</li>
										<li>테스트03</li>
									</ul>
								</div>
							</div>
							<!-- ./ filp03 -->
						</div>
					</div>
					<!-- ./teacher-proposal -->
				</div>
			</div>
		</section>
		<!-- 아기공룡 이용방법 -->

		<section id="section08" class="container guide">
			<div class="text-center">
				<span class="faq-mainImg d-block"> <img
					src="./common/img/faq-img.png" alt="이렇게 이용하세요!">
				</span>
				<h3 class="section-heading text-uppercase">아기공룡 이렇게 이용하세요!</h3>
			</div>
			<div id="faq-content">
				<div class="text-center mt-5 mb-3">
					<button type="button" class="btn btn-primary d-inline m-1"
						onclick="p_member();">부모 회원</button>
					<button type="button" class="btn btn-secondary d-inline m-1"
						onclick="t_member();">선생님 회원</button>
				</div>

				<!-- 부모 회원( userParents )-->
				<div id="p_member" class="row">
					<div class="col-lg col-sm-4 col-xs-12 joinguide">
						<div class="faq-box">
							<div class="img-sarce">
								<img
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-1-v2.svg"
									alt="회원가입하기">
							</div>
							<div class="contents">
								<h6 class="guide-title">회원가입하기</h6>
								<p class="guide-content">빠르고 간편한 회원가입을 진행해주세요.</p>
							</div>
						</div>
					</div>
					<div class="col-lg col-sm-4 col-xs-12 joinguide">

						<div class="faq-box">
							<div class="img-sarce">
								<img class="lL3tq"
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-2-v2.svg"
									alt="신청서작성하기">
							</div>
							<div class="contents">
								<h6 class="guide-title">신청서 작성하기</h6>
								<p class="guide-content">돌봄이 필요한 요일, 장소, 원하는 돌봄 방식 등을 작성하게
									됩니다.</p>
							</div>
						</div>
					</div>

					<div class="col-lg col-sm-4 col-xs-12 joinguide">
						<div class="faq-box">
							<div class="img-sarce">
								<img class="lL3tq"
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-3-v2.svg"
									alt="선생님신청하기">
							</div>
							<div class="contents">
								<h6 class="guide-title">선생님 신청하기</h6>
								<p class="guide-content">우리동네로 검색해서, 맘에 드는 공룡선생님을 찾아 신청메시지를
									보내세요.</p>
							</div>
						</div>
					</div>
					<div class="col-lg col-sm-6 col-xs-12 joinguide">
						<div class="faq-box">
							<div class="img-sarce">
								<img class="lL3tq"
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-4-v2.svg"
									alt="인터뷰 후 채용하기">
							</div>
							<div class="contents">
								<h6 class="guide-title">인터뷰 후 채용하기</h6>
								<p class="guide-content">내 신청메시지에 수락한 공룡선생님들과 인터뷰를 진행한 뒤 맘에
									드는 공룡선생님를 채용합니다.</p>
							</div>
						</div>
					</div>
					<div class="col-lg col-sm-6 col-xs-12 joinguide">
						<div class="faq-box">
							<div class="img-sarce">
								<img class="lL3tq"
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/mom-guide-5-v2.svg"
									alt="후기 작성하기">
							</div>
							<div class="contents">
								<h6 class="guide-title">후기 작성</h6>
								<p class="guide-content">채용한 공룡선생님에 대한 후기를 작성하세요. 내가 작성한 후기는
									공룡선생님 프로필에 노출됩니다.</p>
							</div>
						</div>
					</div>
				</div>

				<!-- 선생님 회원( userTeacher ) -->
				<div id="t_member" class="row">
					<div class="col-xxl col-sm-4 col-xs-12 joinguide">
						<div class="faq-box">
							<div class="img-sarce">
								<img
									src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/sitter-guide-1-v2.svg"
									alt="회원가입하기">
							</div>
	                  <div class="contents">
	                    <h6 class="guide-title">회원가입하기</h6>
	                    <p class="guide-content"> 빠르고 간편한 회원가입을 진행해주세요.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="col-xxl col-sm-4 col-xs-12 joinguide">
	                <div class="faq-box">
	                  <div class="img-sarce">
	                    <img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/sitter-guide-2-v2.svg" alt="프로필 작성하기">
	                  </div>
	                  <div class="contents">
	                    <h6 class="guide-title">프로필 작성하기</h6>
	                    <p class="guide-content"> "내 활동 지역, 희망 시급,<br> "활동 기간 등을 상세하게 작성해주세요"</p>
	                  </div>
	                </div>
	              </div>
	              <div class="col-xxl col-sm-4 col-xs-12 joinguide">
	                <div class="faq-box">
	                  <div class="img-sarce">
	                    <img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/sitter-guide-3-v2.svg" alt="부모 지원하기">
	                  </div>
	                  <div class="contents">
	                    <h6 class="guide-title">부모 지원하기</h6>
	                    <p class="guide-content"> 지역과 우리 동네 등으로 검색해서, 나와 맞는 부모님을 찾아 지원해보세요</p>
	                  </div>
	              </div>
	              </div>
	              <div class="col-xxl col-sm-6 col-xs-12 joinguide">
	                <div class="faq-box">
	                  <div class="img-sarce">
	                    <img class="lL3tq" src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/sitter-guide-4-v2.svg" alt="인터뷰 후 활동하기">
	                  </div>
	                  <div class="contents">
	                    <h6 class="guide-title">인터뷰 후 활동하기</h6>
	                    <p class="guide-content"> 인터뷰 시, 내가 안전하게 아이를 돌볼 수 있는 환경인지 확인한 뒤 공룡선생님로 활동합니다</p>
	                  </div>
	                </div>
	              </div>
	              <div class="col-xxl col-sm-6 col-xs-12 joinguide">
	                <div class="faq-box">
	                  <div class="img-sarce">
	                    <img class="lL3tq"  src="https://cdn.mom-sitter.com/momsitter-app/static/public/index/sitter-guide-5-v2.svg" alt="후기작성">
	                  </div>
	                  <div class="contents">
	                    <h6 class="guide-title">후기 작성</h6>
	                    <p class="guide-content">공룡선생님도 부모님에 대한 후기를 작성해주세요. 내가 작성한 후기는 부모님 신청서에 노출됩니다.</p>
	                  </div>
	                </div>
	              </div>
	            </div>
					<span class="d-block m-3 text-center" >
						<a href="TeacherGuide.do">아기공룡 가이드 보러가기 ></a>
					</span>
	          </div>
	    </section>
	  </div>

	  <!-- 챗 Modal -->
	  <div class="modal fade" id="chatModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLabel">채팅</h5>
	          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	        </div>
	        <div class="modal-body">
	          <div id="chatBox">
	            <form name="chatForm" action="#" method="post">
	              <h3>여기는 채팅 박스 영역입니다.</h3>
	              <a href="chatList.do">채팅</a>
	              <%@ include file="/WEB-INF/views/chat/chatList.jsp" %>
	            </form>
	          </div>
	        </div>
	      </div>
	    </div>
	  <!-- ./챗 Modal -->
	  </div>
	  
<!-- 선생님 부모님 이용가이드 관련 js -->
<!-- <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=799ea40d2e8454d64bcb4e4aae11d125"></script> -->
<script>
/* 	function showDiv1() {
		var a = document.getElementById('p_member');
		a.classList.remove('d-none');
		var b = document.getElementById('t_member');
		b.classList.add('d-none');
	} */
</script>
<!-- 부모님회원 선생님 회원 버튼 js -->
  <script>
	  let a = $('#p_member');
	  let b = $('#t_member');
	  $(document).ready(function() {
	      a.show();
	      b.hide();
	  });

	  function p_member() {
		a.show();
		b.hide();
	  }

	  function t_member() {
		a.hide();
		b.show();
	  }

	<!-- 선생님 부모님 이용가이드 관련 js -->
	<!-- <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=799ea40d2e8454d64bcb4e4aae11d125"></script> -->
	<script>
		/* 	function showDiv1() {
		 var a = document.getElementById('p_member');
		 a.classList.remove('d-none');
		 var b = document.getElementById('t_member');
		 b.classList.add('d-none');
		 } */
	</script>
	<!-- 부모님회원 선생님 회원 버튼 js -->
	<script>
		let a = $('#p_member');
		let b = $('#t_member');
		$(document).ready(function() {
			a.show();
			b.hide();
		});

		function p_member() {
			a.show();
			b.hide();
		}

		function t_member() {
			a.hide();
			b.show();
		}

		/** 카카오 지도 api */
		/* var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.51795334189508, 126.89483972060654), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)

		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	    var markerPosition  = new kakao.maps.LatLng(37.556852, 126.941569);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	}



	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);

	  function find_id(){
	  a.show();
	  b.hide();
	  }

	  function find_pwd(){
	  a.hide();
	  b.show();
	  }
  </script>	  
	  
	</body>
	  <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

