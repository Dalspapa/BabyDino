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
<style>
.container {
	display: flex;
/* display: inline-flex; */
 }
</style>
<body>
	<div class="wrapper">
		<section>
		   <div>
		      <div class="row">
		         <div class="col-md-1">뒤로가기</div>
		         <div class="col-md-9">### 선생님</div>
		         <div class="col-md-1">좋아요</div>
		         <div class="col-md-1">신고하기</div>
		      </div>
		   </div>
		</section>
		<hr/>
		   
		<section>
		   <div class="container">
		      <div class="row">
		         <div class="col">###선생님프로필사진</div>
		         <div class="col">###선생님 간략소개(name,birth,t_cost)</div>
		      </div>
		   </div>
		</section>
		  
		<section>
			<div>
				<div>
					<div>인증뱃지</div>
		         <div>###인증받은뱃지이미지리스트(badge)</div>
				</div>
			</div>
		</section>
		
		<section>
			<div>
				<div>
					<div>돌봄가능연령</div>
		         <div>###돌봄가능연령대 애기 이미지(kid_type)</div>
				</div>
			</div>
		</section>
		
		<section>
			<div>
				<div>
					<div>관련경험</div>
		         <div>###관련경험데이터 출력(career_experience)</div>
				</div>
			</div>
		</section>
		
		<section>
			<div>
				<div>
					<div>한줄소개</div>
		         <div>###선생님 한줄 소개(t_introduce)</div>
				</div>
			</div>
		</section>
		<hr/>
		
		<section>
		   <div>
		      <button type="button" class="btn btn-outline-primary">인터뷰요청</button>
		   </div>
		</section>
	</div>
</body>
</html>