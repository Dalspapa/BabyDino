<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>
<!-- main css -->
<link rel="stylesheet" href="./common/css/main.css">
<!-- 파비콘 -->
<link rel="shortcut icon" href="../webapp/common/img/favicon/favicon.png" type="image/x-icon">
<link rel="icon" href="../webapp/common/img/favicon/favicon.png" type="image/x-icon">

<!-- fontasome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="./common/css/bootstrap.min.css">
<!-- 전역css -->
<link rel="stylesheet" href="./common/css/reset.css">
<!-- 페이지 상위 버튼 -->
<div id="top-button">
	<a href="#page-top">
		<i class="fas fa-arrow-up"></i>
	</a>
	<!-- ./ 페이지 상위 버튼 -->
</div>

<!-- 챗 버튼 -->
<div id="chat">
	<a class="nav-link" href="#" data-bs-toggle="modal"	data-bs-target="#chatModal">
		<span id="caht-cnt">
			<p>1</p>
		</span>
	  <i class="fas fa-comments"></i>
	</a>
	<!-- ./ 챗 버튼 -->
</div>

    <!-- header -->
	<header>
		<c:set var="sid" value="${sessionScope.saveId}" />
		<c:set var="sname" value="${sessionScope.saveName}" />
		<c:set var="stype" value="${sessionScope.saveMemberType}" />
		<c:set var="sidx" value="${sessionScope.saveIdx}" />
		<nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
			<div class="container px-4 px-lg-5">
				<a id="header-logo" class="navbar-brand" href="main.do">
					<span>ㅇㄱ</span>
					<span>ㄱㄹ</span>
				</a>

				<!-- 반응형 메뉴바 -->
				<button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					Menu
					<i class="fas fa-bars"></i>
					<!--  ./반응형 메뉴바 -->
				</button>

				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item">
							<a class="nav-link" href="#about">돌봄신청</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="javascript:goCompulCheck(${ stype });">아이찾기</a>
						<li class="nav-item"><a class="nav-link" href="noticeMain.do">궁금해요</a>

						<c:if test="${ sid != null && (stype == 2 || stype == 3) }">
							<li class="nav-item">
		                    	${ sid } 부모님 환영합니다!&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.do" class="nav-link">로그아웃</a>
		                    </li>
	                    </c:if>
	                    <c:if test="${ sid != null && (stype == 4 || stype == 5) }">
							<li class="nav-item">
		                    	${sid} 선생님 환영합니다!&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.do" class="nav-link">로그아웃</a>
		                    </li>
	                    </c:if>
	                    <c:if test="${ sid == null }">
		                    <li class="nav-item">
		                      <a class="nav-link" data-bs-toggle="modal" data-bs-target="#loginModal">
		                        <i class="fas fa-user"></i>
		                      </a>
		                    </li>
	                    </c:if>


					</ul>
				</div>
			</div>
		</nav>
		<!-- ./header -->
	</header>

	<!-- jquery -->
	<script src="./common/js/jquery-3.6.0.min.js"></script>
</head>

<script>

alert("${sid}:${stype}");


	function goCompulCheck(stype) {

		if (stype == 1 || stype == 2 || stype == 3) {
			location.href = 'findKids.do';
		} else if (stype == 4) {
			let t4result = confirm("필수 인증을 마쳐야 공룡선생님이 활동을 할수 있어요~\n필수 인증을 하실건가요?");
			if( t4result == true ){
				location.href = 'compulsoryCheck.do';
			} else if( t4result == false ){
				window.alert('활동 전 꼭 인증해주세요~');
			}
		} else if (stype == 5){
			let t5result = confirm("활동 전 선생님 등록을 해야합니다. \n선생님 등록을 하실건가요?");
			if( t5result == true ){
				location.href = 'makeTeacherCard.do';
			} else if( t5result == false ){
				window.alert('활동 전 선생님 등록을 해주세요!');
			}
		} else if( stype == 6){
			location.href = 'findKids.do'
		}
	}

</script>












