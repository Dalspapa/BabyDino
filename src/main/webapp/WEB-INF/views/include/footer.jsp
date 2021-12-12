<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
      
  <!-- 로그인 Modal -->
  <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" >L O G I N</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="login-box"> 
            <form name="loginForm">
                <div class="login-input">
                   <div id="loginId" class="input-group input-group-sm mb-3">
                 <input type="text" class="form-control input_id" 
                  aria-label="Sizing example input" 
                  aria-describedby="inputGroup-sizing-sm" 
                  name="id" id="ID" 
                  placeholder="아이디를 입력해주세요." 
                  autocomplete="off" />
               </div>
                   <div id="loginPwd" class="input-group input-group-sm mb-3">
                  <input type="password" class="form-control" 
                  aria-label="Sizing example input" 
                  aria-describedby="inputGroup-sizing-sm" 
                  name="pwd" id="PWD" 
                  placeholder="비밀번호를 입력해주세요." autocomplete="off" /> 
                  <span class="input-group-text" id="inputGroup-sizing-sm">V</span>
               </div>
               <span id="loginCheck">
                  <p id="checkId"></p>
               </span>
               <span class="#">
                  <label for="idRemember"><input type="checkbox" id="idRemember" name="saveId" value="on" 
                  ${empty cookie.saveId.value ? '' : 'checked'} />ID 기억</label>
               </span>
               <span class="login" >
                  <button type="button" class="btn btn-outline-success" onclick="ajaxTest()">LOGIN</button>
               </span>         
                </div>
            </form>
          </div>
        </div>
        <div class="modal-footer">
         <div class="login-buton-box">
            <button class="btn btn-outline-success">
              <a href="findIdPwd.do">아이디, 비밀번호 찾기</a>
            </button>
         </div>
         <div class="login-buton-box">
            <button class="btn btn-outline-success">
              <a href="join.do">회원가입</a>
            </button>
         </div>
        </div>
      </div>
    </div>
  <!-- ./로그인 Modal -->
  </div>

<!-- footer -->
<footer class="row">
    <div class="col-xxl-12 col-lg-8 col-sm-4 col-xs  foot">
      <span class="footer-logo">
        <h5>
          <span class="d-block">BABY</span>
          <span>DINODAUR</span>
        </h5>
      </span>
      <div class="footer-address">
		<p>상호 : (주)아기공룡</p><br>
		
		<address>
		  <p>육아에 도움이 필요할 땐</p>
		  <p>아기공룡이 도와드리겠습니다.</p>													  
		</address>
		<div class="footer-copyright">
		  <p>ⓒBABYDINOSAUR</p>				  
      </div>
    </div>
    <div class="footer-address">							  
		<div>오시는 길</div><br>
		   <address>
			 <p>본사</p>
			 <p>서울특별시 마포구 망원동 <br>이젠 그라운드 E479</p>
		   </address>
	</div>
	<div class="footer-address">
		<div>아기공룡 고객지원</div><br>
		   <address>
				<p>운영시간 | 평일 10:00~19:00</p>
				<p>카톡 | 카카오톡 친구 아기공룡</p> 
				<p>전화 | 1577 4040</p>
				<p>메일 | contact@jaranda.kr</p>
				<p>블로그 | blog.naver.com/jaranblog</p>			
		   </address>
	 </div>
	 <div class="footer-about">
        <h5>ABOUT</h5>
			<p>
              <strong>NEWSLETTER</strong> 
            </p>
            <p>
              <strong>CONTACTUS</strong> 
            </p>
            <p></p>
            <p>이용약관</p>
            <p>개인정보취급방침</p>
      </div>      
   </div>
</footer>
 <body onkeydown="javascript:onEnterLogin();">



</body>

  <!-- 헤더이벤트처리 -->
  <script>
  
  <!--login -->
  function ajaxTest(){

	var id = $("#ID").val();
	var pwd = $("#PWD").val();
	
	const formData = new FormData();
	formData.set('id', id);
	formData.set('pwd', pwd);
	
	formData.forEach(function(value, key) {
		console.log(key, value);	 
	});

	$.ajax({
		method: 'POST',
		url : 'login.do',
		data :  {
			id : id,
			pwd: pwd
		},
		success : function(r){
			console.log('------------ r :', r);
			
			if (r.outMember) {
				idCheckBtn = true;
				$('#checkId').html('탈퇴한 회원입니다.');
				$('#checkId').css('color','red');
				<% session.invalidate(); %>
			} else {
			
				if(r.result){
					idCheckBtn = true;
					$('#checkId').html('환영합니다!');
					$('#checkId').css('color','green');
					location.href="main.do"
				}else{
					$('#checkId').html('아이디 및 비밀번호를 확인해주세요');
					$('#checkId').css('color','red');
					
				}
			}
		},
		error:function(){
			alert("회원가입을 진행해주세요");
		}			
	});		
};
															 
  $(function(){

	// 스크롤이 0보다 크면 클래스 이벤트 추가
	var navbarShrink = function () {
		 
	    if (window.scrollY === 0) {
	        $("#mainNav").removeClass('navbar-shrink');
	        setTimeout(function() {
	          $("#top-button").removeClass('block');
	        }, 200);

	    } else {
	        $("#mainNav").addClass('navbar-shrink');
	        setTimeout(function() {
	          $("#top-button").addClass('block');
	        }, 200);
	    }
	};

	// Shrink the navbar
	navbarShrink();

	// 스크롤시 해당 영역이 어딘지 확인 후 헤더에 표시해주는 이벤트
														 
	document.addEventListener('scroll', navbarShrink);

	// Activate Bootstrap scrollspy on the main nav element
	var mainNav = document.body.querySelector('#mainNav');
	if (mainNav) {
	    new bootstrap.ScrollSpy(document.body, {
	        target: '#mainNav',
	        offset: 80,
	    });
	};

	// 반응형 메뉴 바. (Collapse 추가되면 navbar에 메뉴 버튼이 생성된다.
	// 생성 된 후 이벤트 적용
	var navbarToggler = document.body.querySelector('.navbar-toggler');
	var responsiveNavItems = [].slice.call(
	    document.querySelectorAll('#navbarResponsive .nav-link')
	);
	responsiveNavItems.map(function (responsiveNavItem) {
	    responsiveNavItem.addEventListener('click', () => {
	        if (window.getComputedStyle(navbarToggler).display !== 'none') {
	            navbarToggler.click();
	        }
	    });
	});

  });
	
//엔터키로 로그인하기
 	function onEnterLogin(){

		var keyCode = window.event.keyCode;

		if (keyCode == 13) { //엔테키면

			ajaxTest();

		}

	} //onEnterLogin()

</script>

</html>