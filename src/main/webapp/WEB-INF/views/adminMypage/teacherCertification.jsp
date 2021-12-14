<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 필수 인증</title>
<!-- -------------지원 css---------------- -->
<style>
.teacherTable{
	margin-top: 168px;
    width: 90%;
    margin-left: 104px;
    text-align: center;
}
</style>
<!-- -------------지원 css---------------- -->
</head>
 <!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
			<!-- 선생님회원테이블 -->
			<div class="teacherTable">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">선생님 이름</th>
			      <th scope="col">선생님 아이디</th>
			      <th scope="col">전화번호</th>
			      <th scope="col">가입날짜</th>
			      <th scope="col">이미지</th>
			      <th scope="col">성범죄 동의 여부</th>
			      <th scope="col">인증하기</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test = "${empty t_list}">
			  		<tr>
						<td colspan = "8" align = "center">
							등록된 선생님이 없습니다.
						</td>
					</tr>
				</c:if>
				<c:forEach var ="dto" items = "${t_list}">
				    <tr>
				    	<td>${dto.idx}</td>
				      	<td>${dto.name}</td>
						<td>${dto.id}</td>
						<td>${dto.tel}</td>
						<td>${dto.joinDate}</td>
						<td>#이미지 들어갈 부분(쿼리 수정해야함!)</td>
						<td><button type="button" class="btn btn-outline-success">동의여부</button></td>
						<td><button type="button" class="btn btn-outline-success">인증하기</button></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					페이징 처리 될 부분
				</div>
			</div>
 <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>