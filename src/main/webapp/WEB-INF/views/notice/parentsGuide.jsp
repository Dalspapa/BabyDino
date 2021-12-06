<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<!--부모회원 이용 가이드  -->
	<section id="guidesection">
		<div>
			<h3>부모님 이용 가이드</h3>
		</div>
		<div class="pguide">
			<span>아기 공룡은 어떤 서비스인가요?</span><br>
			<p>아기공룡은 부모님과 시터님이 서로의 정보를 자유롭게 확인하고 인터뷰를 신청하거나 지원할 수 있도록 도와드리는 구인/구직 플랫폼서비스입니다. 
					부모회원님이시라면 아기공룡 로그인 후,  돌봄신청을 통해 지역과 연령대 등을 설정하여 시터님의 프로필을 둘러보시고 우리 아이를 돌봐주실 좋은 선생님들께 인터뷰를 신청해 보실 수 있습니다.</p>
		</div>
		<div class="pguide">
			<span>부모회원으로 가입하기</span><br>
			<p>우리 아이가 어떤 아이인지, 시터님께 어떤 도움을 받고 싶은지, 언제 활동을 필요하로 하시는 지를 신청서에 상세하게 알려주세요.
				    신청서 작성이 완료되면 시터님을 직접 찾을 수 있습니다.
				  Tip.
				    신청서가 상세히 작성될 수록, 내 후기가 많을 수록, 응답을 빨리 할 수록 시터님을 더 빨리 찾을 수 있습니다.
				    주의!
				    부적합한 사진 및 신청서 내용은 신고 사유가 될 수 있으며, 경고 이 후에도 수정되지 않으면 "재가입 불가 회원"으로 탈퇴 처리 될 수 있습니다.
			</p>
		</div>
		<div class="pguide">
			<span>선생님에게 직접 인터뷰 신청하기/받은 신청 수락하기</span><br>
			<p>1. 선생님에게 인터뷰 신청하기
				   부모님이 직접 [돌봄신청] 를 통해 선생님을 검색하고, 선생님의 자기 소개, 활동 지역, 나이, 일정 등을 꼼꼼하게 확인한 후 마음에 쏙 드는 선생님을 찾아보세요.
                                   연락해보고 싶은 선생님이 있다면 신청하기 버튼을 눌러서 신청해보세요.
				  Tip.
				    완료된 인증 수, 채용 횟수, 후기 수가 많을수록 성실한 시터님일 확률이 높습니다 😉
				  2. 선생님의 신청에 수락하기
				    선생님들도 부모님이 올린 신청서를 보고 지원할 수 있어요
				    선생님의 프로필을 꼼꼼히 읽고 응답을 해주세요
				  Tip.
				    프로필이 100% 마음에 들지 않아도 여러 선생님과 채팅을 진행해보며 결정해보세요.
				    프로필에서는 알지 못했던 시터님의 장점을 확인하실 수 있습니다 ^ ^
			</p>
		</div>
	</section>
	  <!-- footer -->
	  <%@include file="../footer.jsp" %>	
</body>
</html>