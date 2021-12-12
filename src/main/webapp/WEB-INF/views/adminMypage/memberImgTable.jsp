<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 이미지 테이블</title>
</head>
 <!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
			<!-- 회원테이블 -->
			<div>
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">회원번호</th>
			      <th scope="col">회원유형</th>
			      <th scope="col">이름</th>
			      <th scope="col">아이디</th>
			      <th scope="col">가입날</th>
			      <th scope="col">신고당한 횟수</th>
			      <th scope="col">평균 별점</th>
			      <th scope="col">리뷰수</th>
			      <th scope="col">총수익</th>
			      <th scope="col">약속 파기 횟수</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test = "${empty list}">
			  		<tr>
						<td colspan = "3" align = "center">
							등록된 이미지가 없습니다.
						</td>
					</tr>
				</c:if>
				<c:forEach var ="dto" items = "${list}">
			    <tr>
			      <th scope="row"><input type="checkbox"></th>
			      	<td>${dto.idx}</td>
					<td>${dto.name}</td>
					<td>${dto.id}</td>
					<td>${dto.joinDate}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					<button type="button" class="btn btn-outline-success">탈퇴처리</button>
				</div>
				<div>
					페이징 처리 될 부분
				</div>
			</div>
 <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>