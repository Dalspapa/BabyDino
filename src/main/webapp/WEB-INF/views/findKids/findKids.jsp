<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/3ae3ff2538.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
	<h1>아이찾기 페이지</h1>
	<section>
	<c:if test="${empty k_list}">
		<h2>등록된 아이가 없습니다.</h2>
	</c:if>
		<div class="container">
			<div class="row">
				<c:forEach var="k_dto" items="${k_list}">
					<div class="col-4 p-2">
						<div class="row" style="border: 1px solid black; height:80px;">
							<div class="col-4">
								<img alt="kids_img" src="./common/img/bossbaby.png" style="width:35px; height:35px;">
								${k_dto.k_name}
							</div>
							<div class="col-8">
								<p>
									<c:if test="${k_dto.k_gender == 0}">
										여아
									</c:if>
									<c:if test="${k_dto.k_gender == 1}">
										남아
									</c:if>
								</p>
								<p>
									${k_dto.k_introduce}
								</p>
								<p>
									${k_dto.k_tendency}
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
</html>