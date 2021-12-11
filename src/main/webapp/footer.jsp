<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">

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

  <!-- jquery -->
  <script src="./common/js/jquery-3.6.0.min.js"></script>
  
  <!-- bootstrap js cdn -->
  <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
  
  <!-- 헤더이벤트처리 -->
  <script>	
    // 헤더 이벤트 처리
	window.addEventListener('DOMContentLoaded', event => {

    // 스크롤이 0보다 크면 클래스 이벤트 추가
    var navbarShrink = function () { 
        const navbarCollapsible = document.body.querySelector('#mainNav');
        const topBtn = document.getElementById('top-button');

        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink');
            setTimeout(function() {
              topBtn.classList.remove('block');
            }, 200);
            
        } else {
            navbarCollapsible.classList.add('navbar-shrink');
            setTimeout(function() {
              topBtn.classList.add('block');
            }, 200);
            
        }
    };

    // Shrink the navbar 
    navbarShrink();

    // 스크롤시 해당 영역이 어딘지 확인 후 헤더에 표시해주는 이벤트 
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 80,
        });
    };

    // 반응형 메뉴 바. (Collapse 추가되면 navbar에 메뉴 버튼이 생성된다.
    // 생성 된 후 이벤트 적용
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
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