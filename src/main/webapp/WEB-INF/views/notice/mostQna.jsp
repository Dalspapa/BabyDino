<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*사이드바*/
.question{
	padding: 9%;
    width: 35%;
    padding-left: 5%;
    text-align: center;
    font-family: 'S-Air';
    font-size: 19px;
}
.question a{
	text-decoration: none!important;
	color:  black!important;
}
.question ul li a:hover{
	color: #68983b!important;
}
/*자주묻는 질문 드롭다운바 */
details { 
	margin:5px 0 10px; 
}
details > summary {
 	background:#444; 
 	color:#fff; 
 	padding:10px; 
 	outline:0; 
 	border-radius:5px; 
 	cursor:pointer; 
 	transition:background 0.5s; 
 	text-align:left; 
 	box-shadow: 1px 1px 2px gray;
}
details > summary::-webkit-details-marker { 
	background:#444; 
	color:#fff; 
	background-size:contain; 
	transform:rotate3d(0, 0, 1, 90deg); 
	transition:transform 0.25s;
}
details[open] > summary::-webkit-details-marker { 
	transform:rotate3d(0, 0, 1, 180deg);
}
details[open] > summary { 
	background:#white;
}
details[open] > summary ~ * { 
	animation:reveal 0.5s;
}
.tpt { 
	background:#444; 
	color:#fff; 
	margin:5px 0 10px; 
	padding:5px 10px; 
	line-height:25px; 
	border-radius:5px; 
	box-shadow: 1px 1px 2px gray;
}
@keyframes reveal {
    from { opacity:0; transform:translate3d(0, -30px, 0); }
    to { opacity:1; transform:translate3d(0, 0, 0); }
}
/*.자주묻는 질문 드롭다운바 */
h3{ 
	padding-left: 49%;
	margin-top: -21%!important;
	padding-bottom: 1%!important;
    font-family: 'S-Air';
}
.mostQnabtn{
	padding-left: 46%;
	padding-bottom: 2%;
}
p{
	width: 74%;
    padding-left: 33%;
}
h4{
	text-align: center;
	padding-bottom: 1%;
	font-family: 'S-Air';
	padding-left: 10%;
}
details summary{
	width: 47%;
	margin-left: 32%;
	background-color: white;
    color: black;
}
.qnaList{
	padding-bottom: 9%;
}
</style>
</head>
 <!-- header -->
	<%@include file="../header.jsp" %>
<body>
	<div>
		<section>
		<!-- 공지사항 리스트 -->
			<div class="question">
				<ul class="list-group list-group-flush">
				  <li class="list-group-item"><a href="notice.do">공지사항</a></li>
				  <li class="list-group-item"><a href="mostQna.do">자주묻는질문</a></li>
				  <li class="list-group-item"><a href="parentsGuide.do">부모님이용가이드</a></li>
				  <li class="list-group-item"><a href="TeacherGuide.do">선생님이용가이드</a></li>
				</ul>
			</div>
			<div>
				<h3>자주묻는질문페이지</h3>
			</div>
			<div class="mostQnabtn">
               <button type="button" id="memberbtn" class="btn btn-light">회원관련 질문</button>
               <button type="button" id="governmentbtn" class="btn btn-light">정부지원</button>
               <button type="button" id="paybtn" class="btn btn-light">결제 | 환불</button>
			</div>
			<div id="member">
			</div>
			<div id="qnaList">
				<h4>회원 관련 질문</h4>
				<details>
				   <summary>Q.${list[0].op}</summary>
				   <p>A.<br>${list[0].c_introduce}</p>
				</details>
				<details>
				   <summary>Q.${list[1].op}</summary>
				   <p>A.<br>${list[1].c_introduce}</p>
				</details>
			</div>
			
			<div id="government">
				<h4> 정부 지원 관련 질문</h4>
				<details>
				   <summary>Q.${g_list[0].op}</summary>
				   <p>A.<br>${g_list[0].c_introduce}</p>
				</details>
				<details>
				   <summary>Q.${g_list[1].op}</summary>
				   <p>A.<br>${g_list[1].c_introduce}</p>
				</details>
			</div>
			
			<div id="pay">
				<h4>환불 결제관련 질문</h4>
				<details>
				   <summary>Q.${p_list[0].op}</summary>
				   <p>A.<br>${p_list[0].c_introduce}</p>
				</details>
				<details>
				   <summary>Q.${p_list[1].op}</summary>
				   <p>A.<br>${p_list[1].c_introduce}</p>
				</details>
			</div>
		</section>
		
	</div>
 <!-- footer -->
	<%@include file="../footer.jsp" %>
</body>
<script src="./common/js/jquery-3.6.0.min.js"></script>
<script>
//버튼 클릭시 js


$(document).ready(function() {
	
	let a = $('#qnaList');
	let b = $('#government');
	let c = $('#pay');
	
	
    a.show();
    b.hide();
    c.hide();
    
    
    
    $('#memberbtn').click(function(){
    	a.show();
    	b.hide();
    	c.hide();
    }); 
    
    
    $('#governmentbtn').click(function(){
    	a.hide();
    	b.show();
    	c.hide();
    });
    
    $('#paybtn').click(function(){
    	a.hide();
    	b.hide();
    	c.show();
    });
});


</script>
</html>