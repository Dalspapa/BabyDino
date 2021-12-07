<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* reset */
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

a:link, a:visited {
	color: #333;
	text-decoration: none;
}

h2 {
	font-size: 0;
	line-height: 0;
	width: 0px;
	height: 0px;
	position: absolute;
	left: -9999px;
}	

.wrapper {
	width: 80%;
}

.noteTitle {
	font-size: 30px;
	font-weight: 500;
	text-align: center;
	border-bottom: 1px solid #ccc;
	display: flex;
    justify-content: center;
}

.noteList {
	display: flex;
	justify-content: center;
	padding: 30px 0;
}

.noteselect {
	background-color: #f0f0f0;
	width: 400px;
	height: 200px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	border-radius: 5px;
}

.noteImg {
	width: 150px;
	height: 150px;
    border-radius: 50%;
    overflow: hidden;
}

</style>
</head>
<body>
   <div class="wrapper">
   <h2>돌봄 노트 목록 영역</h2>
      <div class="noteTitle">돌봄 노트</div>
      <section class="noteList">
         <div class="noteselect">
            <div class="noteImg"># 사진들어가는 부분</div>
            <div class="noteInfo">
            	<div>#이름</div>
            	<div>#날짜</div>
            	<div>#인원/#놀이정보</div>
            </div>
 		 	<div class="goMore">
               <button>#더보기</button>
            </div>
         </div>
      </section>
   </div>
</body>
</html>