<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄 노트 상세 페이지</title>
<style>
.careNote{
	text-align: center;
	width: 100%;
}
.careNote .childName{
	font-family: 'S-Air';
	color: #68983b;
	font-size: 22px;
}
.careNote .info{
	font-weight: 500;
    font-size: large;
    margin-top: 20px;
}
</style>
</head>
<body>
   <div class="careNote">
      <section>
         <div class="childName">
            <div>#아이이름 돌봄노트</div>
         </div>
         <hr>
         <div>
            <div class="info">돌봄정보</div>
            <div>
             #날짜 / 시간 / 인원 / 놀이 정보 뿌려질 곳
            </div>
         </div>
         <div>
            <div class="info">돌봄 사진</div>
            <div>
            	<button type="button">파일 선택</button>
            </div>
         </div>
         <div>
            <div class="info">돌봄 계획</div>
            <div>
            <p>
             	#본문 글 들어갈 곳  
            </p>
            </div>
         </div>
         <div>
            <div class="info">활동 내용</div>
            <div>
            <p>
                #활동 글 들어갈 곳
            </p>
            </div>   
         </div>
         <div>
            <button type="button" class="btn btn-outline-success"><a href="#">작성하기</a></button>
            <button type="button" class="btn btn-outline-success"><a href="#">목록으로</a></button>
         </div>
      </section>
   </div>
</body>
</html>