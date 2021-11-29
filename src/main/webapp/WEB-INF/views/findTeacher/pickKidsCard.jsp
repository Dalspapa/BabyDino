<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>선생님 찾기 페이지(아이카드 선택)</h1>
<section>
	<div class="container">
		<h2>아이 카드 선택</h2>
		<p>아이정보</p>
		<div>아이 카드를 선택해주세요.<br>아이카드가 없을 시에 추가 버튼을 눌러 추가해주세요.</div>
		<!-- 아이카드선택영역 -->
		<div>
			<div>
				<div><button type="button" class="btn btn-primary btn-lg">김영찬 아이카드</button></div>
				<div><button type="button" class="btn btn-secondary btn-lg">+ 아이카드</button></div>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container">
		<h2>주소 카드 선택</h2>
		<div>돌봄 장소를 선택해 주세요.</div>
		<div>
			<div><button type="button" class="btn btn-primary btn-lg">우리집 </button></div>
			<div><button type="button" class="btn btn-primary btn-lg">엄마집</button></div>
			<div><button type="button" class="btn btn-secondary btn-lg">+ 주소카드</button></div>
		</div>
	</div>
</section>
</body>
</html>