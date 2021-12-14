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
   margin-bottom: 61px;
}
.main .title{
   font-size: 25px;
   font-weight: 500;
   margin-bottom: 18px;
}
.main .btns{
	display: flex;
	justify-content: space-evenly;
	margin-bottom: 35px;
}
.contentbody {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 60px auto;
}
.main .t_card{
    width: 500px;
    height: 300px;
    border-radius: 10px;
    background-color: #ccc;
    display: flex;
    align-items: center;
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
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
   <div class="main">
         <!-- 돌봄 현황 제목 -->
         <div class="title">돌봄 현황</div>
         <!-- 현황버튼 -->
         <div class="btns">
            <div><button type="button" class="btn btn-outline-success" onclick="care_1();">요청현황</button></div>
            <div><button type="button" class="btn btn-outline-success" onclick="care_2();">요청받은현황</button></div>
            <div><button type="button" class="btn btn-outline-success" onclick="care_3();">완료현황</button></div>
		 </div>

		 <c:if test="${ empty list }">
				<h2 align="center">요청진행상황이 없습니다.</h2>
		 </c:if>

         <!-- 요청 받은 현황 섹션 -->
         <c:forEach var="list" items="${ list }">
	         <div id="section01" class="contentbody">
	            <!-- 선생님 카드 -->
	            <c:url var="contentUrl" value="caring.do">
	            	<c:param name="idx">${ list.r_idx }</c:param>
	            </c:url>
	            <a href="${ contentUrl }">
	            <div class="t_card">
	               <div class="pic">#선생님 프로필 사진들어가는 부분</div>
	               <div class="intro">선생님 소개 : ${list.t_introduce}</div>
	            </div>
	            </a>
	            <!-- 선생님 정보 -->
	            <div class="info">
	               <div>선생님 이름 : ${list.name}</div>
	               <div>돌봄 가능 유형 : ${list.t_care_type}</div>
	               <div>희망 시급 : ${list.t_cost}원</div>
	               <div>${list.care_time}</div>
	               <button type="button" class="btn btn-outline-success" onclick="#">채팅하기</button>
	            </div>
	         </div>
         </c:forEach>

         <!-- 요청한 현황 섹션 -->
         <c:forEach var="list" items="${ list }">
	         <div id="section02" class="contentbody">
	            <!-- 선생님 카드 -->
	            <div class="t_card">
	               <div class="pic">#선생님 프로필 사진들어가는 부분</div>
	               <div class="intro">#선생님 소개 들어가는 부분section02</div>
	            </div>
	            <!-- 선생님 정보 -->
	            <div class="info">
	               <div>선생님 이름 : ${list.name}</div>
	               <div>돌봄 가능 유형 : ${list.t_care_type}</div>
	               <div>희망 시급 : ${list.t_cost}원</div>
	               <div>${list.care_time}</div>
	               <button type="button" class="btn btn-outline-success" onclick="#">채팅하기</button>
	            </div>
	         </div>
         </c:forEach>

		 <!-- 진행 섹션 -->
		 <c:forEach var="list" items="${ list }">
	         <div id="section03" class="contentbody">
	            <!-- 선생님 카드 -->
	            <c:url var="contentUrl" value="caring.do">
	            	<c:param name="idx">${ list.r_idx }</c:param>
	            </c:url>
	            <a href="${ contentUrl }">
	            <div class="t_card">
	               <div class="pic">#선생님 프로필 사진들어가는 부분</div>
	               <div class="intro">#선생님 소개 들어가는 부분section03</div>
	            </div>
	            </a>
	            <!-- 선생님 정보 -->
	            <div class="info">
	               <div>선생님 이름 : ${list.name}</div>
	               <div>돌봄 가능 유형 : ${list.t_care_type}</div>
	               <div>희망 시급 : ${list.t_cost}원</div>
	               <div>${list.care_time}</div>
	               <button type="button" class="btn btn-outline-success" onclick="#">채팅하기</button>
	            </div>
	         </div>
         </c:forEach>

      </div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
<!-- 돌봄 현황 버튼 js -->
<script>

   let a = $('#section01');
   let b = $('#section02');
   let c = $('#section03');

   $(document).ready(function() {
      a.show();
      b.hide();
      c.hide();
   });
   function care_1() {
      a.show();
      b.hide();
      c.hide();
   }
   function care_2() {
      a.hide();
      b.show();
      c.hide();
   }
   function care_3() {
      a.hide();
      b.hide();
      c.show();
   }
</script>
</html>