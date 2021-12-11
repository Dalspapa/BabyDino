<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
.findIdPwd{
	margin-top: 180px;
	text-align: center;
	margin-bottom: 200px;
	font-size: 19px;
}  
.title h4{
	font-family: 'S-Air';
    font-size: 30px;
    margin-bottom: 15px;
}
.title h6{
	margin-bottom: 53px;
}
.findIdPwd .result{
	margin-bottom: 50px;
}
</style>
</head>
  <!-- header -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
   <div class="findIdPwd">
      <div class="title">
         <h4>계정 정보</h4>
         <h6>입력하신 정보로 가입한 계정 정보입니다.</h6>
      </div>
      <div class="result">
         ID : ${ list[0].id }
      </div>
      <div>
      	<button type="button" class="btn btn-outline-success" onclick="goMain()">홈으로 가기</button>
								   
      </div>
   </div> 
</body>
  <!-- footer -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
function goMain() {
	window.location.replace("http://localhost:9090/BabyDino/main.do");
}
</script>
</html>