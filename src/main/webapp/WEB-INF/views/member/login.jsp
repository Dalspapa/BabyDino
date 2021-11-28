<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
	<section>
		<h1>L O G I N</h1>
	</section>
	
	<section>
		<form name="loginForm" action="login.do" method="post">
			<div>
				<label for="id_label">ID</label>
				<input type="text" name="id" id="id_label"
				placeholder="아이디를 입력해주세요." 
				autocomplete="off" value="${cookie.saveId.value}" />
			</div>
			<div>
				<label for="pwd_label">PASSWORD</label>
				<input type="password" name="pwd" id="pwd_label" 
				placeholder="비밀번호를 입력해주세요." autocomplete="off" />
			</div>
			<div>
				<input type="checkbox" name="saveId" value="on" 
				${empty cookie.saveId.value ? '' : 'checked'} />ID 기억
				<button>LOGIN</button>
				<button type="button" id="logout">LOGOUT</button>
			</div>
		</form>
	</section>
	
	<section>
		<a href="findIdPwd.do">로그인 정보를 잊으셨나요?</a>
	</section>
	
	<section>
		<form action="join.do">
			<button>회원가입</button>
		</form>
	</section>
</body>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>

<script type="text/javascript">
	$(document).ready(function(e) {
		
		$('#logout').click(function() {
			location.href = 'logout.do';
		});
		
	});
	
</script>
</html>