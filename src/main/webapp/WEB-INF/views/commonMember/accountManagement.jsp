<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정관리</title>
<style>
section {
   	width: 694px;
    height: 641px;
    margin-top: 173px!important;
    text-align: center;
    border: 1px solid #68983b;
    border-radius: 110px;
    margin-left: 362px;
    margin-bottom: 113px;
}

._36gBs {
    width: 100%;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-bottom: 34px;
}
ttl {
	margin-top: 111px;
    margin-bottom: 111px;
}
.appbar {
    display: block;
    margin: 0px auto;
    margin-top : 45px;
    max-width: 600px;
    width: 100%;
    position: relative;
    height: 64px;
    background: rgb(255, 255, 255);
    border-bottom: 1px solid rgb(227, 227, 227);
}
.appbar .backward {
    padding: 10px;
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    cursor: pointer;
}
.appbar > .title {
    color: black;
    font-size: 17px;
    font-weight: 500;
    text-align: center;
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
._36gBs {
    width: 100%;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-bottom: 34px;
}
._2nIFL {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 290px;
}
._1vbgj {
    width: 100%;
    height: 100%;
    margin: 50px auto;
    padding: 0 18px;
}
.nATE5 {
    position: relative;
    margin: 0 auto;
    margin-bottom: 5px;
    display: -ms-flexbox;
    display: flex;
    width: 100%;
    font-size: 16px;
    font-weight: 400;
    letter-spacing: -.2px;
}
.nATE5 ._1QQ_I {
   	width: 200px;
    color: #aaa;
    margin-right: 60px;
}
.nATE5 .qlKb8 {
    color: #000;
}
._1Iazm {
    height: 18px;
    background-color: #eee;
}
._2MTRN {
    width: calc(100% - 36px);
    height: 1px;
    margin: 0 auto;
    background-color: #eee;
}
._39161 {
    width: 100%;
    height: 100%;
    margin: 0 auto;
}
.eJDRKz {
    box-sizing: border-box;
    padding: 10px;
    width: 38px;
    height: 51px;
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
}
.mintitle{
	padding: 15px;
}
.mintitle a{
	text-decoration: none;
	color: black;
}
.mintitle a:hover{
	color: #68983b;
}
</style>
</head>
<body>
   <div>
      <section>
      <div class="container">
     	 <div class="appbar">
     		 <div class="backward">
     		 <img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="">
     		 </div>
     	 <div class="title">계정 관리</div>
     		 <div class="_36gBs">
     	 		<div class = "_2nIFL">
     				<div class="_1vbgj">
      					<div class="nATE5">
     						<div class="_1QQ_I">회원 유형</div>
      						<div class="qlKb8">##유형 코드 들어갈 곳</div>
      					</div>
     					<div class="nATE5">
      						<div class="_1QQ_I">사용중인 아이디</div>
      						<div class="qlKb8">##아이디 코드 들어갈 곳</div>
      					</div>
      					<div class="nATE5">
      						<div class ="_1QQ_I">가입한 휴대폰 번호</div>
      						<div class="qlKb8">##번호 코드 들어갈 곳</div>
      					</div>
      					<div class="nATE5">
      						<div class ="_1QQ_I">가입한 이메일</div>
      						<div class="qlKb8">##메일 코드 들어갈 곳</div>
      					</div>
     	 			</div>
      			</div>
      	<div class="_1Iazm"></div>
	 		<div class="mintitle">
	 			<span><a href="#">내 주소 수정하기</a></span>
	 			<i class="far fa-angle-right"></i>
	 		</div>
      <div class="_2MTRN"></div>
     	<div class="mintitle">
     		<span><a href="#">비밀번호 변경</a></span>
     		<i class="far fa-angle-right"></i>
     	</div>
      <div class="_2MTRN"></div>
     	<div class="mintitle">
     		<span><a href="#">아기공룡 회원 탈퇴하기</a></span>
     		<i class="far fa-angle-right"></i>
     	</div>

     
   
      </section>
   </div>
</body>
</html>