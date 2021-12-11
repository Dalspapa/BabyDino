<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 공룡 발자국</title>
<!-- 이거 링크 삭제하기!부트스트랩 링크임 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
.flex{
	width: 80%;
}
.flex .title{
	font-weight: 500;
	font-size:30px;
	font-family: 'S-Air';
	color: #68983b;
	text-align: center;
}
.flex .minititle{
	text-align: right;
	margin-right: 9px;
}
</style>
</head>
<body>
	<div class="flex">
		<div class="title"> 내 공룡 발자국</div>
		<div class="minititle">
			<button type="button" class="btn btn-outline-success">발자국 추가 인증하기</button>
		</div>
		
		<div class="container">
		  <div class="row">
		    <div class="col" data-bs-toggle="modal" data-bs-target="#footprintModal">#발자국 이미지 추가될 부분</div>
		    <div class="col">#발자국 이미지 추가될 부분</div>
		    <div class="col">#발자국 이미지 추가될 부분</div>
		    <div class="col">#발자국 이미지 추가될 부분</div>
		  </div>
		  <div class="row">
		    <div class="col"></div>
		    <div class="col"></div>
		    <div class="col"></div>
		    <div class="col"></div>
		  </div>
		  <div class="row">
		    <div class="col"></div>
		    <div class="col"></div>
		    <div class="col"></div>
		    <div class="col"></div>
		  </div>
		</div>			
	</div>
</body>
<!--  공룡 발자국 설명 Modal-->
<div class="modal fade" id="footprintModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">내 공룡 발자국</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	#공룡 발자국 설명
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" class="btn btn-outline-success">Close</button>
      </div>
    </div>
  </div>
</div>
</html>