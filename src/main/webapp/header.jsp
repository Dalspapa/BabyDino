<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 기 공 룡</title>

<!-- css -->
  <!-- 파비콘 -->
  <link rel="shortcut icon" href="../webapp/common/img/favicon/favicon.png" type="image/x-icon"> 
  <link rel="icon" href="../webapp/common/img/favicon/favicon.png" type="image/x-icon"> 

  <!-- fontasome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <!-- 부트스트랩 -->
  <link rel="stylesheet" href="./common/css/bootstrap.min.css">
  <!-- 전역css -->
  <link rel="stylesheet" href="./common/css/reset.css"> 
    <!-- 페이지 상위 버튼 -->
  <div id="top-button">
    <a href="#page-top">
      <i class="fas fa-arrow-up"></i>
    </a>
  <!-- ./ 페이지 상위 버튼 -->
  </div>

  <!-- 챗 버튼 -->
  <div id="chat">
    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#chatModal">
      <span id="caht-cnt">
        <p>1</p>
      </span>
      <i class="fas fa-comments"></i>
    </a>
  <!-- ./ 챗 버튼 -->
  </div>

<!-- header -->
<header>
    <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top" >
        <div class="container px-4 px-lg-5">
            <a id="header-logo" class="navbar-brand" href="main.do">
              <span>ㅇㄱ</span>
              <span>ㄱㄹ</span>
            </a>

             <!-- 반응형 메뉴바 -->
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            <!--  ./반응형 메뉴바 -->
            </button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                      <a class="nav-link" href="#about">돌봄신청</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#projects">아이찾기</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="noticeMain.do">궁금해요</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-bs-toggle="modal" data-bs-target="#loginModal">
                        <i class="fas fa-user"></i>
                      </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  <!-- ./header -->
</header>


</head>
</html>