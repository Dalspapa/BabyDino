<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
.findIdPwd{
    padding-top: 200px;
    padding-bottom: 220px;
    text-align: center;
    font-family: 'S-Air';
}  
</style>
</head>
  <!-- header -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
   <div class="findIdPwd">
      <div>
         <h4>계정 정보</h4>
         <h6>입력하신 정보를 확인하였습니다! :)</h6>
         <h6>지금 바로 비밀번호를 변경해주세요</h6>
      </div>
      <br>
      <div>
      <form name="updatePwd" action="updatePwd.do" method="post">
	         <label>비밀번호 :</label><input type="password" id="pwd" name="pwd" placeholder="6자리 이상 입력해주세요." onkeyup="pwdEqual()">
	         <label>비밀번호 확인 :</label><input type="password" id="pwdCheck" placeholder="비밀번호를 다시 입력해주세요." onkeyup="pwdEqual()"><br>
	         <input type="hidden" name="id" value="${ list[0].id }"><br>
	         <span id="msg"></span><br><br>
	         <button class="btn btn-outline-secondary" onclick="history.back(-1);">뒤로가기</button>
	         <button class="btn btn-outline-success">변경하기</button>
      </form>
      </div>
   </div>   
</body>
  <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
//유효성 검사
function regMember(){
	var id 		 = $("#id");
	var pwd 	 = $("#pwd");
	var pwdCheck = $("#pwdCheck");
	var name	 = $("#name");
	
	var ID_VALID 	   = false;
	var PWD_VALID	   = false;
	var PWDCHECK_VALID = false;
	var NAME_VALID 	   = false;
	
	// pwd 유효성검사
	if(pwd.val().trim().length < 6) {
			$("#pwd").addClass('is-invalid');
			$("#pwd").removeClass('is-valid');
			PWD_VALID = false;
	} else {
			$("#pwd").removeClass('is-invalid');
			$("#pwd").addClass('is-valid');
			PWD_VALID = true;
	}
	
	// pwdCheck 유효성검사
	if(pwdCheck.val() != pwd.val() || pwdCheck.val().trim().length == 0 ) {
			$("#pwdCheck").addClass('is-invalid');
			$("#pwdCheck").removeClass('is-valid');
			PWDCHECK_VALID = false;
	} else {
			$("#pwdCheck").removeClass('is-invalid');
			$("#pwdCheck").addClass('is-valid');
			PWDCHECK_VALID = true;
	}
	
}
//비밀번호 일치 확인 체크
function pwdEqual() {
	
	var pwd = document.getElementById('pwd');			
	var pwdok = document.getElementById('pwdCheck');	
	var msg = document.getElementById('msg');			
	var okColor = "#68983b";							
	var noColor ="#CD1039";								
	
	if(pwd.value == pwdok.value){						
		msg.style.color = okColor;						
		msg.innerHTML ="비밀번호가 일치합니다.변경하기 버튼을 눌러주세요";						
	}else {
		msg.style.color = noColor;
		msg.innerHTML ="비밀번호가 불일치합니다.다시 확인해주세요";
	}
}
</script>
</html>