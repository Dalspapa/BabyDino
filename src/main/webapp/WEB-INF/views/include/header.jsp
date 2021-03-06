<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
<!-- 전역css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/reset.css">
<!-- main css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/main.css">
<!-- 파비콘 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/common/img/favicon/favicon.png" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/common/img/favicon/favicon.png" type="image/x-icon">
<!-- fontasome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Binggrae-Bold.eot">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Binggrae-Bold.ttf">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Binggrae-Bold.woff">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Cafe24SsurroundAir.eot">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Cafe24SsurroundAir.ttf">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/fonts/Cafe24SsurroundAir.woff">

<!-- 폰트어썸(아이콘) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<script src="${pageContext.request.contextPath}/common/js/jquery-3.6.0.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> -->
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- <link rel="stylesheet" href="/BabyDino/common/css/bootstrap.min.css"> -->

<style>
.btn{
    margin-bottom:5px;
}
.memberImg {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	background-color: yellow;
}
.offcanvas-end{
	width: 300px;
}
.offcanvas-body {
	text-align: center;
}
.offcanvas-body div{
	margin-top: 30px;
}
.offcanvas-body div a{
	margin-top: 30px;
	text-decoration: none!important;
	color: black;
	font-size: 17px;
}
.offcanvas-body div a:hover{
	font-weight:500;
	text-decoration: none!important;
	color: #68983b;
}
.offcanvas-header {
	justify-content: center!important;
	margin: 20px auto;
}
.login-nav{
	margin-top : 30px;
}

/* 채팅 깜빡임 */
@keyframes blink-effect { 
	50% { 
		opacity: 0; 
	} 
	
} 

.iconBlink { 
	animation: blink-effect 1s step-end infinite; 
}

</style>

<!-- 세션 -->
<c:set var="sid" value="${sessionScope.saveId}" />
<c:set var="sname" value="${sessionScope.saveName}" />
<c:set var="stype" value="${sessionScope.saveMemberType}" />
<c:set var="sidx" value="${sessionScope.saveIdx}" />

<!-- 채팅 알림음 -->
<audio id='audio_play' src='${pageContext.request.contextPath}/common/audio/dinotalk.mp3'></audio>
<script type="text/javascript"> 
	function play() { 
	    var audio = document.getElementById('audio_play'); 
	    if (audio.paused) { 
	        audio.play(); 
	    } else { 
	        audio.pause(); 
	        audio.currentTime = 0
	    } 
	} 
</script>

<!-- 페이지 상위 버튼 -->
<div id="top-button">
	<a href="#page-top">
		<i class="fas fa-arrow-up"></i>
	</a>
<!-- ./ 페이지 상위 버튼 -->
</div>

<!-- 챗 버튼 -->
<c:if test="${ sid != null }">
	<div id="chat" style="padding-top: 14px;">
		<a href="javascript:void(window.open('chatList.do', 'chatList','width=600, height=720'))">
		  <span id="caht-cnt">
        	<p id="p-caht-cnt"><!-- 읽지않은 메시지 --></p>
          </span>
		  <i class="fas fa-comments"></i>
		</a>
	<!-- ./ 챗 버튼 -->
	</div>
</c:if>
    <!-- header -->
	<header>
		<nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
			<div class="container px-4 px-lg-5">
				<a id="header-logo" class="navbar-brand" href="main.do"> <!-- href="redirect:/main.do" -->
					<span>ㅇㄱ</span>
					<span>ㄱㄹ</span>
				</a>
			<!-- 반응형 메뉴바 -->
			<button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars"></i>
				<!--  ./반응형 메뉴바 -->
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive" style="font-size: 20px;">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item">
						<a class="nav-link" href="javascript:dinoCare(${stype});">돌봄신청</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="javascript:dinoKids(${stype});">아이찾기</a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="findTeacher.do">공룡샘 찾기</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link" href="noticeMain.do">궁금해요</a>
					</li>

					<c:if test="${empty stype}">
						<li class="nav-item">
	                      <a class="nav-link" data-bs-toggle="modal" data-bs-target="#loginModal">
	                        <i class="fas fa-user"></i>
	                      </a>
	                    </li>
                    </c:if>

                    <c:if test="${stype == 1}">
	                    <li class="nav-item ">
		                    <a class="nav-link">
		                    	&#128073; 관리자 로그인 중
		                    </a>
	                    </li>
                    </c:if>
                    <c:if test="${stype == 2 || stype == 3}">
	                    <li class="nav-item">
	                    	<a class="nav-link">
	                    		&#128073; ${sname} 부모님 로그인 중
	                    	</a>
	                    </li>
                    </c:if>
                     <c:if test="${stype == 4}">
	                    <li class="nav-item">
	                    	<a class="nav-link">
	                    		&#128073; ${sname} 선생님 로그인 중
                    		</a>
	                    </li>
                    </c:if>
                    <c:if test="${stype == 5}">
	                    <li class="nav-item ">
                     		<a class="nav-link">
	                    		&#128073; ${sname} 선생님 로그인 중
	                    	</a>
	                    </li>
                    </c:if>
                    <c:if test="${stype == 6}">
	                    <li class="nav-item">
	                    	<a class="nav-link">
	                    		&#128073; ${sname} 선생님 로그인 중
	                    	</a>
	                    </li>
                    </c:if>
                    <c:if test="${stype == 10}">
	                    <li class="nav-item">
	                    	<a class="nav-link">
	                    		&#128073; ${sname} 선생님 로그인 중
	                    	</a>
	                    </li>
                    </c:if>


                    <c:if test="${stype == 1}">
						<li class="nav-item">
	                      <a class="nav-link" href="javascript:setNavImg(${sidx});" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight4">
	                        <i class="fas fa-user"></i>
	               		  </a>
						</li>
                    </c:if>
                    <c:if test="${stype == 2 || stype == 3}">
						<li class="nav-item">
	                      <a class="nav-link" href="javascript:setNavImg(${sidx});" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">
	                        <i class="fas fa-user"></i>
	               		  </a>
						</li>
                    </c:if>
                    <!-- teacher navbar 4, 5, 6 -->
                    <c:if test="${stype == 4 || stype == 5 || stype == 6}">
						<li class="nav-item">
	                      <a class="nav-link" href="javascript:setNavImg(${sidx});" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight3">
	                        <i class="fas fa-user"></i>
	               		  </a>
						</li>
                    </c:if>
                    <!-- teacher navbar 10 -->
                    <c:if test="${stype == 10}">
						<li class="nav-item">
	                      <a class="nav-link" href="javascript:setNavImg(${sidx});" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight2">
	                        <i class="fas fa-user"></i>
	               		  </a>
						</li>
                    </c:if>
                   </ul>
				</div>
			</div>
		</nav>
		<!-- ./header -->
		<!-- side navbar parents -->
		<div class="offcanvas offcanvas-end" id="offcanvasRight">
		  <div class="offcanvas-header">
		 <%--  <c:if test="navImg" value="${getNavImg.c_imgpath}" />
		  	<div class="memberImg"><img src="/upload/${fn:replace(${navImg,','""')}" alt="navImg"></div> --%>
		    <h5 id="offcanvasRightLabel">${sname} 부모님</h5>
		    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		  </div>
		  <div class="offcanvas-body">
		    <div><a href="proceedingMain.do?idx=${sidx}">돌봄현황</a></div>
		    <div><a href="kidsCard.do?idx=${sidx}">아이카드</a></div>
		    <div><a href="careNoteList.do?idx=${sidx}">돌봄노트</a></div>
		    <div><a href="reviewMain.do?idx=${sidx}">후기내역</a></div>
		    <div><a href="reportList.do?idx=${sidx}">신고내역</a></div>
		    <div><a href="accountManagement.do">계정관리</a></div>
		    <div><a href="logout.do" class="nav-link">로그아웃</a></div>
		  </div>
		</div>

		<!-- side navbar teacher 10 -->
		<div class="offcanvas offcanvas-end" id="offcanvasRight2">
		  <div class="offcanvas-header">
		    <h5 id="offcanvasRightLabel">${sname} 선생님</h5>
		    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		  </div>
		  <div class="offcanvas-body">
		    <div><a href="t_proceedingMain.do?idx=${sidx}">돌봄현황</a></div>
		    <div><a href="teacherProfile.do?idx=${sidx}">프로필</a></div>
		    <div><a href="t_reviewMain.do?idx=${sidx}">후기내역</a></div>
		    <div><a href="accountManagement.do">계정관리</a></div>
		    <div><a href="logout.do" class="nav-link">로그아웃</a></div>
		  </div>
		 </div>
<!-- 		</div> -->
		<!-- side navbar teacher 4, 5, 6 -->
		<div class="offcanvas offcanvas-end" id="offcanvasRight3">
		  <div class="offcanvas-header">
		    <h5 id="offcanvasRightLabel">${sname} 선생님</h5>
		    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		  </div>
		  <div class="offcanvas-body">
		    <div><a href="t_proceedingMain.do?idx=${sidx}">돌봄현황</a></div>
		    <div><a href="javascript:noCard();">프로필</a></div>
		    <div><a href="t_reviewMain.do?idx=${sidx}">후기내역</a></div>
		    <div><a href="accountManagement.do">계정관리</a></div>
		    <div><a href="logout.do" class="nav-link">로그아웃</a></div>
		  </div>
		</div>
		<!-- side navbar admin -->
		<div class="offcanvas offcanvas-end" id="offcanvasRight4">
		  <div class="offcanvas-header">
		    <h5 id="offcanvasRightLabel">${sid}</h5>
		    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		  </div>
		  <div class="offcanvas-body">
		    <div><a href="memberManagement.do">회원 관리</a></div>
		    <div><a href="settlement.do">선생님 정산</a></div>
		    <div><a href="teacherCertification.do">선생님 필수인증</a></div>
		    <div><a href="reportManagement.do">신고내역</a></div>
		    <div><a href="functionEdit.do">기능 편집</a></div>
		    <div><a href="logout.do" class="nav-link">로그아웃</a></div>
		  </div>
		</div>
	</header>
</head>
<script>


	function noCard(){
		alert('선생님 카드 등록 후 이용할 수 있는 서비스입니다.');
	}

	function dinoCare(stype){


		if (stype == 1 || stype == 4 || stype == 5 || stype == 6 || stype == 10) { //2,3 는 아이카드 선택으로 이동

			location.href = 'findTeacher.do?idx=${sidx}';

		} else if ( stype == 2 || stype == 3 || stype == 8 ) {

			location.href = 'pickKidsCard.do?idx=${sidx}'; //2,3 는 아이카드 선택으로 이동

		} else if ( stype == null){

			window.alert('회원 가입 후 이용할 수 있습니다.');
			$('#loginModal').modal('show');

		}
	}

	function dinoKids(stype){

		if (stype == 1 || stype == 2 || stype == 3 || stype == 10) {
			location.href = 'findKidsForm.do';

		} else if (stype == 4) {

			let t4result = confirm("필수 인증을 하셔야 공룡선생님이 활동을 할수 있어요~\n필수 인증을 하실건가요?");
			if( t4result == true ){
				location.href = 'compulsoryCheck.do';
			} else if( t4result == false ){
				window.alert('활동 전 꼭 인증해주세요~');
			}

		} else if (stype == 5){

			alert("관리자의 요청을 기다리고 있습니다!\n조금만 더 기다려주세요^^");

			location.href = 'redirect:/main.do';


		} else if( stype == 6){
			let t6result = confirm("공룡 선생님 등록을 하셔야 서비스가 가능합니다.\n공룡 선생님 등록을 하시겠습니까?");
			if( t6result == true ){
				location.href = 'makeTeacherCard.do';
			} else if( t6result == false ){
				window.alert('활동 전 꼭 인증해주세요~');
			}

		} else if( stype == null){

			window.alert('회원 가입 후 이용할 수 있습니다.');
			$('#loginModal').modal('show');
		}
	}

</script>

<!-- 채팅알림 -->
<script>
	
	var sIdx = '${sidx}';
	var chatCount = 0;
	
	function getReadCnt() {
		
		$.ajax({
			method : 'post',
			url : '/chatAlarm.do',
			dataType : 'json',
			data : {
				sIdx : sIdx
			},
			success : function(readCnt) {
				$("#p-caht-cnt").html(readCnt);
				chatCount = readCnt;
			},
			error : function(e) {
				console.log(e);
			}
		})
	}
		
	if (sIdx > 0) {
		$(window).on('load', function() {
			// 2초에 한번씩 읽지 않은 방 갯수 불러오기(실시간 알림 전용)
		    setInterval(function() {
		        // 읽지 않은 방 갯수 불러오기
		        getReadCnt();
		        
		        // 읽지 않은 메세지 총 갯수가 0개가 아니면
		        if(chatCount != 0) {
		            // 채팅 icon 깜빡거리기
		            $('#chat').addClass('iconBlink');
		            play();
		        } else {
		            // 깜빡거림 없애기
		            $('#chat').removeClass('iconBlink');
			    }
			},2000);
		});
	}  
	
</script>

</html>
