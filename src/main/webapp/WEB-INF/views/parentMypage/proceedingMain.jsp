<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부모님-돌봄현황</title>
<style>
a:link, a:visited {
  color: #333;
  text-decoration: none;
}
.main{
   width: 100%;
   margin-top: 130px;
   text-align: center;
   font-family: 'S-Air';
}
.main .title{
   font-size: 2.5rem;
   font-weight: bold;
   margin-bottom: 18px;
}
.main .btns{
	display: flex;
	justify-content: space-evenly;
}
.contentbody {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 60px auto;
	width: 60%;
}
.main .t_card{
    width: 500px;
    height: 300px;
    border-radius: 10px;
    background-color: #f5f5f5;
    display: flex;
    align-items: center;
}
.main .t_card:hover {
	transform:scale(1.05); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
        -o-transform:scale(1.05);
        -moz-transform:scale(1.05);
        -webkit-transform:scale(1.05);
    transition: transform .35s;
        -o-transition: transform .35s;
        -moz-transition: transform .35s;
        -webkit-transition: transform .35s;
}
.main .t_card .pic{
    width: 151px;
    height: 151px;
    background-color: yellow;
    border-radius: 50%;
    overflow: hidden;
}
.intro {
	width: 349px;
}
.notitle {
	text-align: center;
	margin: 100px auto;
}
.info {
	margin-left: 60px;
	width: 400px;
}
.nolist {
	height: 600px;
	line-height: 600px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
   <div class="main">
         <!-- 돌봄 현황 제목 -->
         <div class="title">돌봄 현황</div>
         <!-- 현황버튼 -->
         <div class="btns">
            <div><button type="button" class="btn btn-outline-success" onclick="care_1();">돌봄진행중</button></div>
            <div><button type="button" class="btn btn-outline-success" onclick="care_2();">완료된돌봄</button></div>
		 </div>

        <!-- 진행중 섹션 -->
		<div id="section01">
			<c:if test="${ empty list_ing }">
				<div class="nolist"><h2 style="line-height: 300px;"> 진행중인 돌봄 사항이 없습니다. </h2></div>
			</c:if>
		   	<c:forEach var="l_ing" items="${ list_ing }">
		   	
		   	<!-- chat url -->
			<c:url var="enterChatRoom" value="enterChatRoom.do">
			    <c:param name="partnerIdx" value="${ l_ing.d_member_idx }"/>
			</c:url>
		   	
				<div class="contentbody">
					<!-- 선생님 카드 -->
					<c:url var="contentUrl" value="caring.do">
						<c:param name="idx">${ l_ing.r_idx }</c:param>
					</c:url>
					<a href="${ contentUrl }">
					<div class="t_card">
						<div class="pic"><img alt="선생님기본사진" src="./common/img/basic/teacher.png" style="width: auto; max-height: 100%;"></div>
						<div class="intro">${l_ing.t_introduce}</div>
					</div>
					</a>
					<!-- 선생님 정보 -->
					<div class="info">
						<div>선생님 이름 : ${l_ing.name}</div>
						<div>돌봄 가능 유형 : ${l_ing.t_care_type}</div>
						<div>희망 시급 : ${l_ing.t_cost}원</div>
						<button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('${enterChatRoom}', 'chatRoom','width=600, height=700'))">채팅하기</button>
					</div>
				</div>
			</c:forEach>
		</div>

        <!-- 완료된 섹션 -->
		<div id="section002">
			<c:if test="${ empty list_done }">
				<div class="nolist"><h2 style="line-height: 300px;"> 완료된 돌봄 사항이 없습니다. </h2></div>
			</c:if>
		   	<c:forEach var="l_done" items="${ list_done }">
				<div class="contentbody">
					<!-- 선생님 카드 -->
					<c:url var="contentUrl" value="caring.do">
						<c:param name="idx">${ l_done.r_idx }</c:param>
					</c:url>
					<a href="${ contentUrl }">
					<div class="t_card">
						<div class="pic"><img alt="선생님기본사진" src="./common/img/basic/teacher.png" style="width: auto; max-height: 100%;"></div>
						<div class="intro">선생님 소개 : ${l_done.t_introduce}</div>
					</div>
					</a>
					<!-- 선생님 정보 -->
					<div class="info">
						<div>선생님 이름 : ${ l_done.name}</div>
						<div>돌봄 가능 유형 : ${ l_done.t_care_type}</div>
						<div>희망 시급 : ${ l_done.t_cost}원</div>
						<div>${ l_done.care_time}</div>
						<button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('chatList.do', 'chatList','width=600, height=700'))">채팅하기</button>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
<!-- 돌봄 현황 버튼 js -->
<script>

   let a = $('#section01');
   let b = $('#section002');

   $(document).ready(function() {
      a.show();
      b.hide();
   });
   function care_1() {
      a.show();
      b.hide();
   }
   function care_2() {
      a.hide();
      b.show();
   }
</script>
</html>