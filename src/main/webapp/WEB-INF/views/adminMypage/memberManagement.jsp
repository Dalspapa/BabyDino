<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<!-- -------------지원 css---------------- -->
<style>
.likebody{
	margin-top: 225px;
	width: 90%;
	margin-left: 67px;
	
}
.likebody .search{
	text-align: center;
}
.likebody section .search .title{
	font-size: 22px;
    font-family: 'S-Air';
    font-weight: 500;
    margin-bottom: 12px;
}
.likebody .btn{
	margin-left: 700px;
}
</style>
<!-- -------------지원 css---------------- -->
</head>
 <!-- header -->
	<%@include file="/WEB-INF/views/include//header.jsp" %>
<body>
	<div class="likebody">
		<section>
			
			<!-- 회원목록(관리자) -->
			<div class="memList">
				<div class="title">회원목록(관리자)</div>
				<div class="select">
					<select>
						<option>전체</option>
						<option>학부모</option>
						<option>부모님</option>
					</select>
					<input type="text" placeholder="아이디 입력">
					<select class="form-select-sm">
						<option>평점</option>
						<option>높은순</option>
						<option>낮은순</option>
					</select>
					<select class="form-select-sm">
						<option>별점</option>
						<option>높은순</option>
						<option>낮은순</option>
					</select>
					<select class="form-select-sm">
						<option>리뷰</option>
						<option>많은순</option>
						<option>적은순</option>
					</select>
					<select class="form-select-sm">
						<option>총수익</option>
						<option>많은순</option>
						<option>적은순</option>
					</select>
					<br><div>
						<button type="button" class="btn btn-outline-success">검색</button>
					</div>
				</div>
			</div>
			<br>
			<!-- 회원테이블 -->
			<div>
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">회원번호</th>
			      <th scope="col">회원유형</th>
			      <th scope="col">아이디</th>
			      <th scope="col">이름</th>
			      <th scope="col">성별</th>
			      <th scope="col">가입날짜</th>
			      <th scope="col">주소</th>
			      <th scope="col">전화번호</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test = "${empty list}">
			  		<tr>
						<td colspan = "3" align = "center">
							등록된 회원이 없습니다.
						</td>
					</tr>
				</c:if>
				<c:forEach var ="dto" items = "${list}">
			    <tr>
			      <th scope="row"><input type="checkbox"></th>
			      	<td>${dto.idx}</td>
			      	<td>
			      		<c:if test="${dto.member_type == 1 }">어드민</c:if>
			      		<c:if test="${dto.member_type == 2 }">부모님</c:if>
			      		<c:if test="${dto.member_type == 3 }">멤버십 부모님</c:if>
			      		<c:if test="${dto.member_type == 4 }">일반 선생님</c:if>
			      		<c:if test="${dto.member_type == 5 }">필수인증요청 선생님</c:if>
			      		<c:if test="${dto.member_type == 6 }">필수인증완료 선생님</c:if>
			      		<c:if test="${dto.member_type == 7 }">경고당한 선생님</c:if>											
			      		<c:if test="${dto.member_type == 8 }">경고받은 선생님</c:if>											
			      		<c:if test="${dto.member_type == 9 }">탈퇴회원</c:if>											
			      		<c:if test="${dto.member_type == 10 }">검증 및 카드완료 선생님</c:if>											
			      		<c:if test="${dto.member_type == 11 }">등급업 해주기 전 상태</c:if>											
					</td>
					<td>${dto.id}</td>
					<td>${dto.name}</td>
					<td>	
						<c:if test="${dto.gender == 1 }">여자</c:if>											
				      	<c:if test="${dto.gender == 2 }">남자</c:if>
					</td>
					<td>${dto.joinDate}</td>
					<td>${dto.addr2}</td>
					<td>${dto.tel}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div class="btns">
					<button type="button" class="btn btn-outline-success">탈퇴처리</button>
				</div>
				<div>
					${pageStr }
				</div>
			</div>
		</section>
	</div>
</body>
 <!-- footer -->
	<%@include file="/WEB-INF/views/include//footer.jsp" %>
</html>