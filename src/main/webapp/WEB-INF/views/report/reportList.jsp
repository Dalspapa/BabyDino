<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
body {
    width: 952px;
    margin-left: 12%;
    font-size: 12px;
}
h2 {
	color : green;
	text-align : center;
	margin-top : 50px;
	margin-bottom : 50px;
}
a {
	text-decoration: none;
	color : black;
}
a:hover {
	color : yellow;
}
table {
	width : 800px;
}
table th,td {
	text-align : center;
}
.btn {
	float : right;
	font-size: 5px;
}
.paging {
	margin-top : 60px;
}
</style>
</head>
<body>
<h2>신고 내역</h2>
<form name = "reportList" action = "report.do">
<table class="table table-hover">
<!-- <table class = "table-hover" width = "1400"> --> 
	<thead>
		<tr>	
			<th>번호</th>
			<th>신고내용</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<c:if test = "${empty reportlist }">
			<tr>
				<td colspan = "3" align = "center">
					등록된 신고게시글이 없습니다.
				</td>
			</tr>
		</c:if>
		<c:forEach var = "dto" items = "${reportlist }">
			<tr>
				<td>${dto.idx }</td>
				<c:url var = "contentUrl" value = "reportContent.do">
					<c:param name="idx">${dto.idx }</c:param>
				</c:url>
				<td><a href="${contentUrl }">${dto.rp_content }</a></td>
				<td>
					<c:choose>
						<c:when test="${ dto.rp_status == 0 }"> 답변 대기중</c:when>
						<c:when test="${ dto.rp_status == 1 }"> 답변 완료</c:when>
					</c:choose>
				</td>
		</c:forEach>
	</tbody>
</table>
	<div class ="btn">
		<button type="button" class="btn btn-success"><a href = "reportWrite.do">글쓰기</a></button>
	</div>
	<!-- 페이징 처리 될 부분 -->
            <div class = "paging">
               <nav aria-label="Page navigation example">
                 <ul class="pagination justify-content-center">
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Previous">
                       <span aria-hidden="true">&laquo;</span>
                     </a>
                   </li>
                   <li class="page-item"><a class="page-link" href="#">1</a></li>
                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Next">
                       <span aria-hidden="true">&raquo;</span>
                     </a>
                   </li>
                 </ul>
               </nav>
            </div>
</form>
</body>
</html>