<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>신고 내용 수정하기</h1>
<form name = "reportUpdate" action = "reportUpdate.do" method = "post">
	<input type = "hidden" name = "idx" value = "${dto.idx}">
	<table>	
		<tr>
			<th>신고 유형</th>
			<c:choose>
			   <c:when test="${ dto.rp_type == 1 }"><td>허위 정보를 기재하였습니다.</td></c:when>   
			   <c:when test="${ dto.rp_type == 2 }"><td>부적절한 사진입니다.</td></c:when>   
			   <c:when test="${ dto.rp_type == 3 }"><td>부적절한 내용입니다.</td></c:when>   
			   <c:when test="${ dto.rp_type == 4 }"><td>규정을 위반하였습니다.</td></c:when>   
			   <c:when test="${ dto.rp_type == 5 }"><td>아기공룡에서 활동하기에 적절하지 않습니다.</td></c:when>
			   <c:when test="${ dto.rp_type == 6 }"><td>기타</td></c:when>
			</c:choose>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="4">
				<textarea rows="10" cols="55" name="rp_content">${dto.rp_content}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<button>수정하기</button>
				<c:url var="reportUrl" value="reportContent.do">
					<c:param name="idx">${dto.idx}</c:param>
				</c:url>
				<button value="뒤로가기" onclick="history.back(-1);">뒤로가기</button>
			</td>
		</tr>
	</table>
</form>
</body>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</html>