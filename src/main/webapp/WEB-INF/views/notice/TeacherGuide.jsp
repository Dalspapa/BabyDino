<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../header.jsp" %>
<style>
/*옆에 메뉴바*/
.question{
	padding: 9%;
    width: 35%;
    padding-left: 5%;
    text-align: center;
    font-family: 'S-Air';
    font-size: 19px;
}
.question a{
	text-decoration: none!important;
	color:  black!important;
}
.question ul li a:hover{
	color: #68983b!important;
}
/*body*/
#guidesection {
	margin-top: -20%;
    margin-left: 31%;
    margin-bottom: 9%;
    width: 50%;
}
#guidesection h3{
    font-family: 'S-Air';
    text-align: center;
    padding-bottom: 5%;
}
.pguide{
	padding-bottom: 2%;
}
.pguide span{
	font-family: 'S-Air';
	font-size: 19px;
	font-weight: 600;
}
</style>
</head>
  <!-- header -->
	<%@include file="../header.jsp" %>
<body>
	<!-- 공지사항 리스트 -->
	<div class="question">
		<ul class="list-group list-group-flush">
		  <li class="list-group-item"><a href="notice.do">공지사항</a></li>
		  <li class="list-group-item"><a href="mostQna.do">자주묻는질문</a></li>
		  <li class="list-group-item"><a href="parentsGuide.do">부모님이용가이드</a></li>
		  <li class="list-group-item"><a href="TeacherGuide.do">선생님이용가이드</a></li>
		</ul>
	</div>
	<!-- 선생님 가이드 본문 -->
	<section id="guidesection">
		<div>
			<h3>부모님 이용 가이드</h3>
		</div>
		<div class="pguide">
			<span>아기 공룡은 어떤 서비스인가요?</span>
			<p>아기공룡은 부모님과 시터님이 서로의 정보를 자유롭게 확인하고 인터뷰를 신청하거나 지원할 수 있도록 도와드리는 구인/구직 플랫폼서비스입니다. </p>
		</div>
		<div class="pguide">
			<span>선생님으로 가입하기</span>
			<p>자신이 어떤 사람인지, 언제, 어떤 활동을 할 수 있는지 시터님의 프로필에 상세하게 작성해주세요.
                                    회원가입과 프로필 작성이 완료되면, 부모님을 직접 찾을 수 있습니다.
				  Tip.
				    자기소개를 상세하게 기입할 수록 아이를 더 빨리 찾을 수 있습니다! 
	 		</p>
		</div>
		<div class="pguide">
			<span>내 공룡 발자국이란?</span>
			<p>아기공룡에서는 선생님의 자격조건을 확인하고 인증 뱃지를 부여하는 인증 제도를 운영하고 있습니다.다양한 인증을 받을 수록 선생님의 신뢰도가 높아지며 프로필 경쟁력이 올라가 매칭확률이 훨씬 높아질 수 있습니다</p>
		</div>
	</section>
</body>
	  <!-- footer -->
	  <%@include file="../footer.jsp" %>
</html>