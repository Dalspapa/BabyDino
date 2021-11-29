<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공지사항</h1>
<hr>
	<table class="table table-hover">
<thead>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty list }">
			<tr>
				<td colspan="3" align="center">
				등록된 게시글이 없습니다.
				</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<c:url var="contentUrl" value="bbsContent.do">
					<c:param name="idx">${dto.idx }</c:param>
				</c:url>
				<td><a href="${contentUrl }">${dto.subject }</a></td>
				<td>${dto.writer }</td>
				<td>${dto.writedate }</td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4" align="center">
			${pageStr }
			</td>
			<td align="center">
			<a href="bbsWrite.do">글쓰기</a>
			</td>
		</tr>
	</tfoot>
	</table>
</body>
</html>