<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<!-- 20211215 지원css 수정 -->
<style>
/*옆에 메뉴바*/
.question{
    padding: 12% 10%;
    width: 28%;
    padding-left: 4%;
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
/*본문*/
.container h3{
    margin-left: 53%;
    margin-bottom: 2%;
    font-family: 'S-Air';
}
.container section table{
	margin-left: 20%;
}
.notice table td{
	padding: 1%;
}
.notice table tr{
	padding: 1%;
}
.container section {
	margin-top: -573px;
    margin-bottom: 77px;
}
.list-group-item{
	padding: 1.5rem 0rem!important;
}
</style>
</head>
  <!-- header -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
	<!-- 공지사항 리스트 -->
	<div class="question">
		<ul class="list-group list-group-flush">
		  <li class="list-group-item"><a href="notice.do">공지사항</a></li>
		  <li class="list-group-item"><a href="mostQna.do">자주묻는질문</a></li>
		  <li class="list-group-item"><a href="parentsGuide.do">부모님이용가이드</a></li>
		  <li class="list-group-item"><a href="TeacherGuide.do">선생님이용가이드</a></li>
		</ul>
	</div>
	<div class="container">
		<section class="notice">
			<h3>공지사항 페이지</h3>
				<table border="1">
					<thead>
						<tr>
							<td>NO.</td>
							<td>${list[0].idx}</td>
						</tr>
						<tr>
							<td></td>
							<td>${list[0].c_introduce}</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>NO.</td>
							<td>${list[1].idx}</td>
						</tr>
						<tr>
							<td></td>
							<td>${list[1].c_introduce}</td>
						</tr>
					</tbody>
				</table>
		</section>
	</div>
	  <!-- footer -->
	  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>