<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <form name="loginForm" action="login.do" method="post">
                    <div class="login-input">
                        <div id="loginId" class="input-group input-group-sm mb-3">
                          <input type="text" class="form-control"
                            aria-label="Sizing example input"
                            aria-describedby="inputGroup-sizing-sm"
                            name="id" id="ID"
                            placeholder="아이디를 입력해주세요."
                            autocomplete="off" value="${cookie.saveId.value}" />
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
                            <p> message</p>
                        </span>
                        <span class="#">
                            <input type="checkbox" name="saveId" value="on"
                            ${empty cookie.saveId.value ? '' : 'checked'} />ID 기억
                        </span>
                        <span class="login" >
                            <button class="btn" style="background-color: #68983b; color: white;" >LOGIN</button>
                        </span>
                    </div>
                </form>
              </div>
            </div>
            <div class="modal-footer">
                <div class="login-buton-box">
                    <button class="btn button">
                      <a href="findIdPwd.do">아이디, 비밀번호 찾기</a>
                    </button>
                </div>
                <div class="login-buton-box">
                    <button class="btn button">
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
    <div class="col-sm-10 col-xs-12 pl-5">
      <span class="footer-logo">
        <h5>
          <span class="d-block">BABY</span>
          <span>DINODAUR</span>
        </h5>
      </span>
      <div class="footer-address">
            <p>상호 : (주)아기공룡</p>
            <span>
              <p>대표자 : 김이최</p>
            </span>
            <address>
              <p>서울특별시 마포구 망원동 479-2</p>
              <p>TEL : 1677-0707</p>
              <p>E-MAIL : babydino@dinosaur.com</p>
              <p>사업자등록번호 : 404-0707-1215</p>
            </address>
            <div class="footer-copyright">
              <p>ⓒBABYDINOSAUR</p>
            </div>
      </div>
    </div>

    <div class="col-sm-2 col-xs-12">
      <span class="footer-about">
        <h5>ABOUT</h5>
      </span>
      <div class="footer-menu">
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

  <!-- bootstrap js cdn -->
  <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

  <!-- 헤더이벤트처리 -->
  <script>

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

</script>

</html>