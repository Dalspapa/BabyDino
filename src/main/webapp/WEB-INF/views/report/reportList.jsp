<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<!-- 20211215 지원 css 수정-->
<style>
.title {
    color: green;
    text-align: center;
    margin-top: 123px;
    margin-bottom: 50px;
    font-family: 'S-Air';
}
.btn a {
	text-decoration: none;
	color : black;
}
.table tbody a {
	text-decoration: none;
	color : black;
}
table{
	width: 1400px!important;
    font-size: 14px;
    margin: auto;
}
table a:hover {
	color : #68983b;
}
table th,td {
	text-align : center;
}
.btns {
    justify-content: flex-end;
    margin-left: 1400px;
    margin-bottom: 21px;
    margin-top: 55px;
}
.paging {
	margin-top: 43px;
	margin-bottom: 190px;
}
.bodysize {
	width: 80%;
}
/*페이징 부분*/
.paging a{
	color: #68983b;
}
</style>
</head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class = "title">
		<h2>신고 내역</h2>
	</div>
		<form name = "reportList" action = "reportList.do">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>NO</th>
					<th>신고내용</th>
					<th>상태</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty reportlist }">
					<tr>
						<td colspan="3" align="center">등록된 신고게시글이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="dto" items="${reportlist }">
					<tr>
						<td>${dto.idx }</td>
						<c:url var="contentUrl" value="reportContent.do">
							<c:param name="idx">${dto.idx }</c:param>
						</c:url>
						<td><a href="${contentUrl }">${dto.rp_content }</a></td>
						<td><c:choose>
								<c:when test="${ dto.rp_status == 0 }"> 답변 대기중</c:when>
								<c:when test="${ dto.rp_status == 1 }"> 답변 완료</c:when>
							</c:choose></td>
				</c:forEach>
			</tbody>
		</table>
		<div class ="btns">
		<button type="button" class="btn btn-outline-success" onclick=  "location.href = 'reportWrite.do'">글쓰기</button>
		</div>
	<!-- 페이징 처리 될 부분 -->
    <!--22222222222 동현 작업 시작 2222222222222-->
            <div class = "paging">
              ${pageStr }
            </div>
            <!--22222222222 동현 작업 끝 2222222222222-->
		</form>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>