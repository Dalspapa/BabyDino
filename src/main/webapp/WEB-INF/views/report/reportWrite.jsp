<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>신고하기</h1>
	<form name="reportWrite" action="reportWrite.do" method="post">
		<label>신고 유형</label><br> 
			<select name="rp_type">
				<option value="" selected disabled>신고유형</option>
				<c:forEach var="rpDto" items="${ rp_list }">
					<c:choose>
						<c:when test="${ rpDto.op == 1 }"><option value = "${rpDto.op}">허위정보를 기재하였습니다.</option></c:when>
						<c:when test="${ rpDto.op == 2 }"><option value = "${rpDto.op}">부적절한 사진입니다.</option></c:when>
						<c:when test="${ rpDto.op == 3 }"><option value = "${rpDto.op}">부적절한 내용입니다.</option></c:when>
						<c:when test="${ rpDto.op == 4 }"><option value = "${rpDto.op}">규정을 위반하였습니다.</option></c:when>
						<c:when test="${ rpDto.op == 5 }"><option value = "${rpDto.op}">아기공룡에서 활동하기에 적절하지 않습니다.</option></c:when>
						<c:when test="${ rpDto.op == 6 }"><option value = "${rpDto.op}">기타</option></c:when>
					</c:choose>
				</c:forEach>
			</select>	
			<div>
				<label>문의 내용</label><br>
				<textarea name="rp_content" rows="10" cols="40" placeholder="내용을 입력해주세요"></textarea>
			</div>
			<div>
				<label>첨부파일(선택사항)</label>
				<input type="file" name="upload" id="upload">
			</div>
		<input type="submit" value="신고하기">
	</form>
</body>
<script>
function checkForm(){
	/**카테고리 유효성 검사*/
	if(rp_type.value==""||rp_type.value==null){
		alert('신고유형을 선택해주세요.');
		rp_type.select();
		return false;
	}
} 
</script>
</html>