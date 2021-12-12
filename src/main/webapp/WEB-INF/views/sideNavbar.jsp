<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
<!-- offcanvas(부모회원) -->
<style>
.memberImg {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	background-color: yellow;
}
.offcanvas-end{
	width: 300px;
}
.offcanvas-body {
	text-align: center;
}
.offcanvas-body div{
	margin-top: 25px;
}
</style>

<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">아이콘이미지</button>

<div class="offcanvas offcanvas-end" id="offcanvasRight">
  <div class="offcanvas-header">
  	<div class="memberImg">#이미지</div>
    <h5 id="offcanvasRightLabel">#부모님이름 회원님</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div><a href="#">돌봄현황</a></div>
    <div><a href="#">아이카드</a></div>
    <div><a href="#">돌봄노트</a></div>
    <div><a href="#">후기내역</a></div>
    <div><a href="#">신고내역</a></div>
    <div><a href="#">계정관리</a></div>
  </div>
</div>
<!-- /offcanvas -->

<!-- offcanvas(선생님회원) -->
<button class="btn btn-success" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight2">아이콘이미지</button>

<div class="offcanvas offcanvas-end" id="offcanvasRight2">
  <div class="offcanvas-header">
  	<div class="memberImg">#이미지</div>
    <h5 id="offcanvasRightLabel">#선생님이름 회원님</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div><a href="#">돌봄현황</a></div>
    <div><a href="#">프로필</a></div>
    <div><a href="#">공룡발자국</a></div>
    <div><a href="#">돌봄노트</a></div>
    <div><a href="#">후기내역</a></div>
    <div><a href="#">신고내역</a></div>
    <div><a href="#">계정관리</a></div>
  </div>
</div>
<!-- /offcanvas -->

<!-- offcanvas(관리자회원) -->
<button class="btn btn-success" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight2">아이콘이미지</button>

<div class="offcanvas offcanvas-end" id="offcanvasRight2">
  <div class="offcanvas-header">
  	<div class="memberImg">#이미지</div>
    <h5 id="offcanvasRightLabel">#선생님이름 회원님</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div><a href="#">돌봄현황</a></div>
    <div><a href="#">프로필</a></div>
    <div><a href="#">공룡발자국</a></div>
    <div><a href="#">돌봄노트</a></div>
    <div><a href="#">후기내역</a></div>
    <div><a href="#">신고내역</a></div>
    <div><a href="#">계정관리</a></div>
  </div>
</div>
<!-- /offcanvas -->
</body>
</html>