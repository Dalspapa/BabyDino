<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- 파비콘 -->
  <link rel="shortcut icon" href="./common/img/favicon/favicon.png" type="image/x-icon"> 
  <link rel="icon" href="./common/img/favicon/favicon.png" type="image/x-icon"> 

  <!-- fontasome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <!-- css -->
  <link rel="stylesheet" href="./common/css/bootstrap.min.css">
  <link rel="stylesheet" href="./common/css/reset.css">
  <link rel="stylesheet" href="./common/css/main.css">
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
			<form name="imgfm" action="img_do">
				<input type="file" accept="image/*">
			</form>
				<%-- <c:forEach var="k_dto" items="${k_list}">
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
				</c:forEach> --%>
			</div>
		</div>
	</section>
</body>
  <!-- J-query -->
  <script src="./common/js/jquery-3.6.0.min.js"></script>

  <!-- custome js -->
  <script src="./common/js/bootstrap.min.js"></script>

</html>