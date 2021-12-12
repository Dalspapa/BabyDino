<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<style>
.ttl {
	margin-top : 10%;
}
.container {
   max-width: 600px;
   margin: 0px auto;
}
.appbar {
   display: block;
   margin: 0px auto;
   max-width: 600px;
   width: 100%;
   position: relative;
   height: 64px;
   background: rgb(255, 255, 255);
   border-bottom: 1px solid rgb(227, 227, 227);
}
.appbar .backward, .iWiUza .appbar .close {
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
.appbar>.title {
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
._2DdyV {
   font-weight: 400;
}
._2cs96 {
   max-width: 600px;
   margin: 60px auto;
   padding: 0;
}
._1BeOM, ._2jIzf {
   text-align: center;
}
._2jIzf {
   font-size: 14px;
   font-size: .875rem;
   font-weight: 500;
   color: #797979;
}
._6q4Xm {
   margin: 20px auto 40px;
   border: 1px solid #d9d9d9;
   border-radius: 3px;
}
._6q4Xm ul {
   list-style-image:
      url(https://cdn.mom-sitter.com/momsitter-app/static/public/icon/g-withdrawal-check.svg);
   font-size: 13px;
   font-size: .8125rem;
   font-weight: 500;
   color: #797979;
   line-height: 1.46;
   padding: 0 20px 0 40px;
}
._6q4Xm ul li, ._29uxm ul li {
   font-size: .9rem;
   margin: 15px 0;
}
.jdiWPe {
   margin-top: 26px;
   width: 100%;
   text-align: center;
   background-color: rgb(246, 246, 246);
   padding: 30px 0px 33px;
   box-sizing: border-box;
}
.jdiWPe>button {
   margin: 0px auto 14px;
   outline: none;
   border: none;
   width: 98px;
   height: 28px;
   border-radius: 17px;
   background-color: rgb(102, 102, 102);
   font-size: 11px;
   font-weight: 500;
   line-height: 1.55;
   letter-spacing: -0.2px;
   color: rgb(255, 255, 255);
   cursor: pointer;
}
._2jIzf {
   font-size: 14px;
   font-size: .875rem;
   font-weight: 500;
   color: #797979;
}
._1BeOM {
   font-size: 20px;
   font-size: 1.25rem;
   text-align: center;
}
.DxNpR {
   position: relative;
   font-weight: 700;
}
._29uxm {
   margin: 20px auto;
   background-color: #f6f6f6;
   border-radius: 3px;
}
._29uxm ul {
   color: #797979;
   line-height: 1.46;
   padding: 20px 20px 20px 30px;
}
._29uxm ul li {
   margin: 10px 0;
}
._1ZcJu {
   font-weight: 700;
   font-size: 16px;
   line-height: 1.13;
}
.xggqW {
   margin: 13px 0;
   border: 1px solid #bebebe;
   border-radius: 3px;
   padding: 13px;
   font-weight: 500;
   color: #aaa;
   width: calc(100% - 30px);
}
.xggqW, ._1ZcJu {
   font-size: 16px;
}
._2Uhi7 {
   font-size: 13px;
   font-weight: 500;
   color: #797979;
}
._3-aXc {
   height: 55px !important;
   background-color: #2F9D27 !important;
   border: 10px;
   box-sizing: border-box;
   min-width: 100%;
}
._3-aXc span, ._1nTB5 span {
   vertical-align: top !important;
   color: #fff !important;
   font-size: 16px !important;
}
.out {
   position: relative;
   padding-left: 16px;
   padding-right: 16px;
   vertical-align: middle;
   letter-spacing: 0px;
   text-transform: uppercase;
   font-weight: 500;
   font-size: 14px;
}
.memout {
   border: 10px;
   box-sizing: border-box;
   display: inline-block;
   cursor: pointer;
   text-decoration: none;
   margin: 0px;
   padding: 0px;
   outline: none;
   font-size: inherit;
   font-weight: inherit;
   position: relative;
   z-index: 1;
   height: 36px;
   line-height: 36px;
   min-width: 100%;
   color: rgba(0, 0, 0, 0.87);
   transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
   border-radius: 2px;
   user-select: none;
   overflow: hidden;
   text-align: center;"
}
</style>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
<form action="">
<div class="ttl">
	<div class="container">
   		<div class="appbar">
      		<div class="backward">
        		<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="회원탈퇴">
     		</div>
      		<div class="title">회원탈퇴 신청</div>
   		</div>
   		<div class="_2DdyV">
      		<div class="_2cs96">
        		<section>
            		<div>
               			<h2 class="_1BeOM">
                  			<span class="DxNpR">회원탈퇴 전</span> 꼭 확인해주세요!
               			</h2>
               			<p class="_2jIzf">
                  		아래 사유로 탈퇴를 원하실 경우<br>‘문의하기’버튼을 통해 먼저 연락주시기 바랍니다.
               			</p>
            		</div>
            		<div class="_6q4Xm">
               			<ul>
                  			<li>- 기존 계정을 버리고 새로운 계정으로 재가입 하려는 경우.</li>
                  			<li>- 부모 또는 선생님회원으로 회원 유형을 변경하고 싶은 경우.</li>
                  			<li>- 아기공룡 유형을 잘못 선택한 경우. (대학생, 엄마, 선생님, 일반)</li>
                  			<li>- 아이디 수정 및 변경이 필요한 경우.</li>
                  			<li>- 패스워드 수정 및 변경이 필요한 경우.</li>
                  			<li>- 당분간 구직/ 구인 활동 계획이 없을 경우.</li>
                  			<li>- 문자 및 카톡이 너무 많이 와서 조치가 필요한 경우.</li>
               			</ul>
               			<div class="sc-iNiQyp jdiWPe">
                  			<button type="button">문의하기</button>
                  			<!-- 문의하기 버튼 누르면 채팅하기로 넘어가는 코드 들어갈 부분 -->
                  			<p>운영시간 평일 10:00 ~ 18:00<br>( 점심시간 13:00 ~ 14:00 제외 | 주말, 공휴일 제외 )</p>
              			</div>
            		</div>
        		</section>
         		<section>
            		<div>
               			<p class="_2jIzf" style="margin: 0px;">위 내용을 잘 확인하셨나요?</p>
               			<h2 class="_1BeOM" style="margin: 0px;">
                 		 아기공룡 <span class="DxNpR">탈퇴신청을</span> 하시겠습니까?
               			</h2>
            		</div>
            		<div class="_29uxm">
               		<ul>
                  		<li>회원 탈퇴 요청 시 고객관리팀이 지난 활동 내용을 검토 후, 탈퇴처리가 진행됩니다.</li>
                  		<li>회원 탈퇴 처리가 완료되면, 약관에 따라 데이터가 삭제되며 복구되지 않습니다.</li>
               		</ul>
            		</div>
         	</section>
         	<div style="margin-bottom: 40px;">
            	<label for="inputReason" class="_1ZcJu">탈퇴 사유<input type="text" placeholder="여기에 적어주세요." class="xggqW" id="inputReason"></label>
            		<p class="_2Uhi7">알려주신 소중한 내용으로 더 좋은 아기공룡 서비스를 만들 수 있도록 노력하겠습니다.</p>
         </div>
         <button class="_3-aXc" type="button">
         	<a href = "memberOut.do?sidx=${sidx}">
	            <div>
	               <span class="out">탈퇴 신청</span>
	            </div>
			</a>
         </button>
      </div>
   </div>
</div>
</div>
</form>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>