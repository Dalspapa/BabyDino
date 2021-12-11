<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 프로필</title>
<%@ include file="/header.jsp" %>
<style>
section{
	width: 80%;
	margin: 100px;
}
.t_profile{
	background-color: #E0F8E6;
	padding-bottom:10px;
	margin-bottom: 20px;
}
.t_profile .profil{
	text-align: center;
	font-weight: 500px;
	font-size: 24px;
}
.t_profile .pic{
    background-color: yellow;
    width: 123px;
    height: 123px;
    border-radius: 61px;
    margin-left: 270px;
    margin-top: 64px;
}
.t_profile .t_info{
    margin-left: 600px;
    margin-top: -164px;
    padding: 13px;
}
.t_profile .week{
	text-align: center;
}
.t_profile .form-select{
	width: 184px;
    height: 30px;
    font-size: 10px;
    text-align: center;
}
.t_profile .selectweek{
	width: 330px!important;
    margin-left: 453px;
    margin-bottom: 13px;
    font-size: 10px;
    text-align: center;
}
.btn2{
	text-align: center;
	margin-bottom: 10px;
	margin-left: 80px;
}
.introduce{
	text-align: center;
}
.t_profile .career nav ul{
	list-style: none;
}
</style>
<body>
	<div>
		<section>
			<!-- 선생님 프로필 부분 -->
			<div class="t_profile">
				<div class="profil">프로필</div><c:set var="proImg" value="${tDto.c_imgpath}" />
				<div class="pic"><img src="/upload/${fn:replace(proImg,',','')}" alt="profileImg" width="150px" height="150px"></div>
				<div class="t_info">
				<div>${tDto.name} | ${tDto.age} 세</div>
				<div id="bankDiv1">
					<div>은행 : ${tDto.bank}</div>
					<div>계좌번호 : ${tDto.acnum}
						<button type="button" class="btn btn-outline-success" style = "font-size: 2%" id="bankbtn1">수정</button>
					</div>
				</div>
				<div id="bandDiv2" class="hideDiv">
					<select class="form-select" aria-label="Default select example">
						<option selected>은행을 선택해주세요</option>
						<option>국민</option>
						<option>신한</option>
						<option>농협</option>
						<option>우체국</option>
					</select>
					<div><label for="acnum">계좌번호 : <input type="text" name="acnum" id="acnum"></label></div>
					<input type="text" style = "font-size : 95%" placeholder="계좌번호를 입력해주세요">
					<button type="button" class="btn btn-outline-success" style = "font-size: 2%" id="bankbtn2">수정하기</button>
				</div>
				<div class="hideDiv">희망시급 : <input type="text" style = "width:15%"><fmt:formatNumber value="${tDto.t_cost}" pattern="#,###" /> 원
					<button type="button" class="btn btn-outline-success" style = "font-size: 2%">수정하기</button>
				</div>
			</div>
			</div>

			<!-- 활동시간 부분 -->
			<div class="t_profile">
				<div class="profil">활동 시간</div>
				<div class="week">
					<div>활동 할 수 있는 요일:</div>
					<select class="form-select selectweek" aria-label="Default select example">
						<option selected>활동할 수 있는 요일을 선택해주세요</option>
						<option>월요일</option>
						<option>화요일</option>
						<option>수요일</option>
						<option>목요일</option>
						<option>금요일</option>
						<option>토요일</option>
						<option>일요일</option>
					</select>
				</div>
				<div  class="week">
					<div>활동 할 수 있는 시간:</div>
					<select class="form-select selectweek" aria-label="Default select example">
						<option selected>활동할 수 있는 시간을 선택해주세요</option>
						<option>08:00-08:30</option>
						<option>09:00-09:30</option>
						<option>10:00-10:30</option>
						<option>11:00-11:30</option>
						<option>12:00-12:30</option>
						<option>13:00-13:30</option>
						<option>14:00-14:30</option>
						<option>15:00-15:30</option>
						<option>16:00-16:30</option>
						<option>17:00-17:30</option>
						<option>18:00-18:30</option>
						<option>19:00-19:30</option>
						<option>20:00-20:30</option>
						<option>21:00-21:30</option>
						<option>22:00-22:30</option>
					</select>
				</div>
			</div>
			<div class="btn2">
				<button type="button" class="btn btn-outline-success" onclick="#">수정하기</button>
			</div>

			<!-- 선생님 소개글 -->
			<div class="t_profile introduce">
				<div class="profil">선생님 한마디</div>
				<div>#선생님 한마디 가져올 부분</div><br>
				<div class="profil">돌봄 활동 경험/이런 활동을 해봤어요</div>
				<div class="career">
					<nav>
						<ul>
							<li>#활동 경험</li>
							<li>#활동 경험</li>
							<li>#활동 경험</li>
						</ul>
					</nav>
				</div><br>
				<div class="profil">공룡 선생님 활동 계기</div>
				<div>#활동 계기 뿌려질 부분</div>
			</div>
			<div class="btn2">
				<button type="button" class="btn btn-outline-success" onclick="#">수정하기</button>
			</div>
		</section>
	</div>
</body>
<%@ include file="/footer.jsp" %>
<script>

	$(document).ready(function(){
		$('.hideDiv').hide();
	});

</script>
</html>