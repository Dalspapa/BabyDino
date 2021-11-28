<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
	<form name="make_t_Card" action="main.do">
		<div id="step_1">
			<h2>당신은 어떤 공룡선생님인가요?</h2>
			<c:forEach var="t_opdto" items="${list}">
				<div>
					<label>${t_opdto.op} <input type="radio" name="job" value="${t_opdto.idx}" checked>
					</label>
					<p>${t_opdto.c_introduce}</p>
				</div>
			</c:forEach>
		</div>
		<div id="step_2">
			<h2>어떤 아이를 돌봐 주실수 있나요?</h2>
			<c:forEach var="kt_opdto" items="${k_list}">
				<div>
					<label><input type="radio" name="kid_type" value="${kt_opdto.idx}" checked>
					${kt_opdto.c_introduce}
					</label>
				</div>
			</c:forEach>
		</div>
		<div id="step_3" class="d-none" style="width: 100%;">
			<h2>어떤 활동을 할 수 있나요?</h2>
			<div>
				<label>등하원 <input type="radio" name="t_care_type" value="1"	checked>
				</label>
			</div>
		</div>
		<div id="step_4" class="d-none" style="width: 100%;">
			<h2>활동하고 싶은 지역을 입력해주세요.(최대 3개)</h2>
			동현바리 주소
		</div>
		<div>
			<h2>언제 활동 할 수 있나요 ?</h2>
			<div></div>
			<div></div>
		</div>
		<div>희망 시급을 입력해주세요.</div>
		<div>CCTV 촬영 동의 여부</div>
		<div>
			<div>
				<h2>프로필 사진을 올려주세요.(선택사항)</h2>
				<input type="file" id="t_img" name="t_img" class="form-control"/>
				<div>사진올리기 / 나중에하기</div>
			</div>
			<div>
				<h2>간단히 자기소개 해주세요.</h2>
				<div>
					<textarea rows="10" cols="60"></textarea>
				</div>
				<div>다른 공룡선생님 자기소개 참고하기.</div>
			</div>
			<button type="button" class="btn btn-secondary">다음으로</button>
		</div>
	</form>
</body>
</html>