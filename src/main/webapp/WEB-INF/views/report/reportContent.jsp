<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    width: 952px;
    margin-left: 12%;
    font-size: 12px;
    text-align: center;
}
h2 {
	color : green;
	text-align : center;
	margin-top : 50px;
	margin-bottom : 50px;
}
P {
	color : red;
}
.bodering {
    background-color: #BFEDC;
    border: 1px solid green;
    width: 750px;
    margin: 0px auto;
    padding: 15px;
}
.btn {
	float : right;
	font-size: 5px;
}
a {
	text-decoration: none;
	color : red;
	text-align: center;
}
a:hover {
	color : yellow;
}
.delupBtn {
	float : center;
	font-size: 5px;
}
</style>
</head>
<body>
	<h2>내 신고내역</h2>
		<hr>
		<div>
			<h4>신고유형  </h4>
				<div>
				<c:choose>
			   		<c:when test="${ dto.rp_type == 1 }"><p>허위정보</p></c:when>   
			   		<c:when test="${ dto.rp_type == 2 }"><p>부적절한 사진</p></c:when>   
			  		<c:when test="${ dto.rp_type == 3 }"><p>부적절한 내용</p></c:when>   
			   		<c:when test="${ dto.rp_type == 4 }"><p>규정 위반</p></c:when>   
			   		<c:when test="${ dto.rp_type == 5 }"><p>활동 부적절</p></c:when> 
			  		 <c:when test="${ dto.rp_type == 6 }"><p>기타</p></c:when>   
				</c:choose>
				</div>
		</div>
			<h4>내용</h4>	
		<div class = "bodering">
				<div>${dto.rp_content }</div>
		</div>
		
		<c:url var = "deleteUrl" value = "reportDelete.do">
			<c:param name = "idx">${dto.idx}</c:param>
		</c:url>		
			<a href="${ deleteUrl }">신고 삭제</a>
		|	
		<c:url var = "updateUrl" value = "reportUpdate.do">
				<c:param name="idx">${dto.idx}</c:param>
		</c:url>		
			<a href = "${ updateUrl }">내용 수정</a>
		<div class ="btn backbtn">
		<button type="button" class="btn btn-success" value = "뒤로가기"><a href = "reportList.do">뒤로가기</a></button>
			<input type="hidden" name="idx" value="${ dto.idx }">
		</div>
</body>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</html>