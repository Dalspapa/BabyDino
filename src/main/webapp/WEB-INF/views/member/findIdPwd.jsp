<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID / PWD 찾기</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
section{
	margin-top: 180px;
	text-align: center;
	margin-bottom: 157px;
	font-size: 19px;
}
section .title{
	font-family: 'S-Air';
    font-size: 30px;
    margin-bottom: 15px;
}
section .idPwdbtn{
	margin-bottom: 10px;
}
section .find_id{
	float: left;
}
section .findIdBtn{
	margin-top: 20px;
	margin-bottom: 50px;
}

</style>
</head>
<body>
					   
	<section>
		<div class="title">계정찾기</div>
		<article>
			<form>
				<div class="idPwdbtn">
					<button type="button" class="btn btn-outline-success" onclick="find_id();">아이디 찾기</button>
					<button type="button" class="btn btn-outline-success"  onclick="find_pwd();">비밀번호 찾기</button>
																											 
				</div>
			</form>
			<!-- 아이디 계정찾기 -->
			<form action="findIdCheck.do" method="post">
				<div id="find_id">
					<div>
						<p>이름과 ,휴대폰 번호를 입력하시면, 가입한 계정 정보를 알려드립니다.</p>
					</div>

					<div>
						이름<input type="text" name="name" placeholder="이름을 입력하세요">
					</div>

							  
																 
																					  
						  

					<div>
						전화번호<input type="text" name="tel"
							placeholder="휴대폰 번호를 '-'없이  입력하세요" />
					</div>

					<div class="findIdBtn">
						<button type="submit" class="btn btn-outline-success">다음으로</button>
					</div>
				</div>
			</form>
			<!-- 비밀번호 계정찾기 -->
			 <form action="findPwdCheck.do" method="post"> 
				<div id="find_pwd">
					<div>
						<p>이름과 아이디,휴대폰 번호를 입력하시고 인증을 완료해주세요.</p>
					</div>
	
					<div>
						이름<input type="text" name="name" placeholder="이름을 입력하세요" autocomplete="off" >
					</div>
	
					<div>
						아이디<input type="text" name="id" placeholder="이름을 입력하세요" autocomplete="off" >
					</div>
					<div class="phone" style="margin-left: 768px; margin-bottom: 20px;">
                      <div class="d-flex">
                      	<div>핸드폰 번호</div>
                          <input id="tel" type="text" name="tel"style="margin-right: 4px;" autocomplete="off" />
                          <!-- 문자인증하기 --> 
                          <button id="phoneChk" class="doubleChk btn btn-sm btn-outline-primary" type="button">인증번호 보내기</button>
                       </div>

                       <div class="d-flex">
                       	  <div>인증번호</div>
                          <input id="phone2" style="margin-right: 4px;" type="text" name="phone2" title="인증번호 입력"/> 
																	 
                          <button id="phoneChk2" class="doubleChk btn btn-sm btn-outline-primary d-none" type="button">본인인증</button> 
                       </div>


                	</div>
	
					<div>
						<a href="findPwdCheck.do"><button type="type" class="btn btn-outline-success">다음으로</button></a>
					</div>
				</div>
			</form>
		</article>
	</section>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>
	//아이디찾기 비밀번호 찾기 js
	let a = $('#find_id');
	let b = $('#find_pwd');
	$(document).ready(function() {
		a.show();
		b.hide();
	});
	function find_id() {
		a.show();
		b.hide();

	}
	function find_pwd() {
		a.hide();
		b.show();

	}
</script>
</html>