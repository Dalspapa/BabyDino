<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 1.50rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}

.star-rating input {
  display: none;
}

.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}

.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}
.wrapper {
	width: 100%;
	text-align: center;
}
.form-floating {
	width: 80%;
}
.wrapper > div{
	margin: 30px auto;
}
.top-title {
	font-size: 25px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<form name="writeReview" action="writeReview.do" method="post">
		<div class="wrapper">
			<div class="top-title">
				<p>후기 작성</p>
			</div>
			<div class="form-floating">
			  <textarea class="form-control" name="r_content" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 150px"></textarea>
			  <label for="floatingTextarea2">오늘의 돌봄은 어땠나요? 상세히 적을수록 다음 만남의 가능성이 높아져요!</label>
			</div>
			<div>
				<p>별점 남기기</p>
					<div class="star-rating space-x-4 mx-auto">
					   <input type="radio" id="5-stars" name="star" value="5" v-model="ratings"/>
					   <label for="5-stars" class="star pr-4">★</label>
					   <input type="radio" id="4-stars" name="star" value="4" v-model="ratings"/>
					   <label for="4-stars" class="star">★</label>
					   <input type="radio" id="3-stars" name="star" value="3" v-model="ratings"/>
					   <label for="3-stars" class="star">★</label>
					   <input type="radio" id="2-stars" name="star" value="2" v-model="ratings"/>
					   <label for="2-stars" class="star">★</label>
					   <input type="radio" id="1-star" name="star" value="1" v-model="ratings" />
					   <label for="1-star" class="star">★</label>
					</div>
			</div>
			<div>
				<button type="submit" class="btn btn-outline-success">작성완료</button>
			</div>
		</div>
	</form>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>