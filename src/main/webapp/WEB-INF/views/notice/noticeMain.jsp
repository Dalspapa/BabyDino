<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
.noticecontent{
	text-align: center;
    margin-top: 10%;
    font-family: 'S-Air';
}
.noticeMenu{
	margin: 4% 29% 20%;
    width: 106%;
}
.noticeMenu ul li{
	float: left;
	text-decoration: none;
	font-size: 10%;
	color: black;
}
.noticeMenu .noticeblock span{
	float: left;
    color: black;
    margin-top: 13%;
    font-size: 16px;
    font-family: 'S-Air';
}
.noticeMenu .noticeblock span:hover{
	color: #68983b;
}
.noticeMenu .noticeblock .n_img{
	margin: 3%;
}
</style>
</head>
  <!-- header -->
<body>
<section>
	<div>
		<div class="noticecontent">
			<h3>아기공룡 고객센터</h3>
			<p>안녕하세요. 아기공룡 고객센터입니다.</p>
			<p>반갑습니다. 무엇을 도와드릴까요?</p>
		</div>
		<div class="noticeMenu">
	      <div class="noticeblock">
	        <span class="n_img">
	        	<a href="notice.do">
	            <img src="https://cdn.mom-sitter.com/momsitter-cs/icon/faq.svg" alt="자주 묻는 질문"><br>
	            <span>공지사항</span>
	            </a>
	        </span>
	        <span class="n_img">
	        	<a href="mostQna.do">
	            <img src="https://cdn.mom-sitter.com/momsitter-cs/icon/parent.svg" alt="부모회원 이용가이드"><br>
	            <span>자주묻는<br>질문</span>
	            </a>
	        </span>
	        <span class="n_img">
	          <a href="parentsGuide.do">
	            <img src="https://cdn.mom-sitter.com/momsitter-cs/icon/sitter.svg" alt="alt=" 시터회원="" 이용가이드""=""><br>
	            <span>부모님<br>이용가이드</span>
	          </a>
	        </span>
	        <span class="n_img">
	          <a href="TeacherGuide.do">
	            <img src="https://cdn.mom-sitter.com/momsitter-cs/icon/notice.svg" alt="공지사항"><br>
	            <span>선생님<br>이용가이드</span>
	           </a>
	        </span>
	      </div>
	     </div>
	</div>
</section>
</body>
	  <!-- footer -->
	  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
	  <!-- custome js -->
	  <script src="./common/js/bootstrap.min.js"></script>
</html>