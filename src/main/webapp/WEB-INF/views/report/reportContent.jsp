<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>신고내역 보기</h1>
		<strong>신고유형 : </strong>
			<c:choose>
			   <c:when test="${ dto.rp_type == 1 }"><p>허위정보</p></c:when>   
			   <c:when test="${ dto.rp_type == 2 }"><p>부적절한 사진</p></c:when>   
			   <c:when test="${ dto.rp_type == 3 }"><p>부적절한 내용</p></c:when>   
			   <c:when test="${ dto.rp_type == 4 }"><p>규정 위반</p></c:when>   
			   <c:when test="${ dto.rp_type == 5 }"><p>활동 부적절</p></c:when> 
			   <c:when test="${ dto.rp_type == 6 }"><p>기타</p></c:when>   
			</c:choose>
		<hr>
		<strong>문의내용</strong>	
			<p>${dto.rp_content }</p>	
		<button value="뒤로가기" onclick="history.back(-1);">뒤로가기</button>
		<input type="hidden" name="idx" value="${ dto.idx }">
		
		<c:url var = "deleteUrl" value = "reportDelete.do">
			<c:param name = "idx">${dto.idx}</c:param>
		</c:url>		
			<a href="${ deleteUrl }">신고 삭제</a>
			
		<c:url var = "updateUrl" value = "reportUpdate.do">
				<c:param name="idx">${dto.idx}</c:param>
		</c:url>		
			<a href = "${ updateUrl }">내용 수정</a>
		
</body>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</html>