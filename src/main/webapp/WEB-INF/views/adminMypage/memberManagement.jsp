<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
 <!-- header -->
	<%@include file="/WEB-INF/views/include//header.jsp" %>
<body>
	<div>
		<section>
			
			<!-- 회원목록(관리자) -->
			<div>
				<div>회원목록(관리자)</div>
				<div>
					<select class="form-select-sm">
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
					<div>
						<button type="button" class="btn btn-outline-success">검색</button>
					</div>
				</div>
			</div>
			
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
							등록된 회원이 없습니다.
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
		</section>
	</div>
</body>
 <!-- footer -->
	<%@include file="/WEB-INF/views/include//footer.jsp" %>
</html>