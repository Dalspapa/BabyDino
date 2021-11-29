<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
<h1>아이카드등록</h1>
<section>
	<form>
		<div class="container">
		
			<div class="row">
				<div >아이이름</div> 
				<div class="col-md-2">
					<input class="form-control" type="text" placeholder="아이이름" aria-label="default input example">
				</div>
			</div>
			
			<div class="row">
				<div>성별</div> 
				<div class="col-md-2">
					<select class="form-select" aria-label="Default select example">
						<option selected>성별</option>
						<option value="1">남자아이</option>
						<option value="2">여자아이</option>
					</select>
				</div>
			</div>
			
			<div>아이 출생년일</div> 
			<div class="row">
				<div class="col-md-4">
					<select class="form-select" aria-label="Default select example">
						<option selected>출생년도</option>
						<c:forEach begin="2008" end="2021" var="i">
							<option value="i">${i}</option>
						</c:forEach>	
					</select>
				</div>
				<div class="col-md-4">
					<select class="form-select" aria-label="Default select example">
						<option selected>출생월</option>
						<c:forEach begin="1" end="12" var="i">
							<option value="i">${i}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			<div>
				<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
					<input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
					<label class="btn btn-outline-primary" for="btncheck1">20대</label>
					
					<input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
					<label class="btn btn-outline-primary" for="btncheck2">30대</label>
					
					<input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
					<label class="btn btn-outline-primary" for="btncheck3">40대</label>
					
					<input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
					<label class="btn btn-outline-primary" for="btncheck4">50대</label>
				</div>
			</div>
			
			<div class="row">
				<div>원하는 돌봄 분야</div>
				<div class="col-md-2">
					<input type="checkbox" class="btn-check" id="btn-check-outlined1" autocomplete="off">
					<label class="btn btn-outline-primary" for="btn-check-outlined1">등하원</label>
				</div>
				<div class="col-md-2">
					<input type="checkbox" class="btn-check" id="btn-check-outlined2" autocomplete="off">
					<label class="btn btn-outline-primary" for="btn-check-outlined2">체육 놀이</label>
				</div>
				<div class="col-md-2">
					<input type="checkbox" class="btn-check" id="btn-check-outlined3" autocomplete="off">
					<label class="btn btn-outline-primary" for="btn-check-outlined3">영어 학습</label>
				</div>
			</div>
			<div>
				<p>우리아이성향</p>
				<c:forEach var="kt" items="${list}">
					<div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="${kt.c_introduce}">
							<label class="form-check-label" for="${kt.c_introduce}">
							${kt.c_introduce}
							</label>
						</div>
					</div>	
				</c:forEach>
			</div>
			
			<div>
				<p>우리아이소개</p>
				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px"></textarea>
					<label for="floatingTextarea2">선생님에게 우리 아이를 소개해 주세요.</label>
				</div>
			</div>
			
			<div>
				<p>요청사항(선택)</p>
				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
					<label for="floatingTextarea2">선생님에게 요청사항이 있으시면 적어주세요.</label>
				</div>
			</div>
			
			<div>
				<button type="submit" class="btn btn-outline-primary">카드등록</button>
			</div>
		</div>
	</form>	
</section>
</body>
</html>