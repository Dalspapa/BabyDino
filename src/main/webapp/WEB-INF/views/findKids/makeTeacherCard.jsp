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
</head>
<body>
	<form name="make_t_Card" action="makeTeacherCard.do" method="post">
		<div id="step_1">
			<h2>당신은 어떤 공룡선생님인가요?</h2>
			<c:forEach var="t_opdto" items="${list}">
				<div>
					<label><input type="radio" name="job" value="${t_opdto.idx}" checked>
					${t_opdto.op}
					</label>
					<p>${t_opdto.c_introduce}</p>					
				</div>
			</c:forEach>
		</div>
 		<div id="step_2">
			<h2>어떤 아이를 돌봐 주실수 있나요?</h2>
			<c:forEach var="kt_opdto" items="${k_list}">
				<div>
					<label><input type="radio" name="kid_type" value="${kt_opdto.c_introduce}" checked>
						${kt_opdto.c_introduce}
					</label>
				</div>
			</c:forEach>
		</div>
		<!-- class="d-none" style="width: 100%;" -->
		<div id="step_3">
			<h2>어떤 활동을 할 수 있나요?</h2>
			<div class="row">
				<c:forEach var="c_opdto" items="${c_list}">
					<div class="col-4 p-2">
						<div style="height:30px;">
							<label><input type="radio" name="t_care_type" value="${c_opdto.c_introduce}" checked>
								${c_opdto.c_introduce}
							</label>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>		
		<div>
			<h2>언제 활동 할 수 있나요 ?</h2>
			<div class="row">
				<c:forEach var="d_opdto" items="${d_list}">
					<div class="col-1" style="width:14%;">
						<div style="heigth:25px;">
							<label><input type="radio" name="schedule_day" value="${d_opdto.c_introduce}" checked>
								${d_opdto.c_introduce}
							</label>
						</div>
					</div>
				</c:forEach>
			</div>
			<div>
				<select name="schedule_time" id="t_time" size="6" multiple>
					<option>시간 선택</option>
						<c:forEach var="time_opdto" items="${t_list}">
							<option value="${time_opdto.c_introduce}">${time_opdto.c_introduce}</option>
						</c:forEach>
				</select>
			</div>
			<input type="button" value="선택" onclick="show();">
		</div>
		<div>
			<div>희망 시급을 입력해주세요.</div>
				<input type="text" name="t_cost" maxlength="5">
			<div>
				<h2>CCTV 촬영 동의 여부</h2>
				<label><input type="radio" name="cctvagree" value="1">
					동의합니다.
				</label>
				<label><input type="radio" name="cctvagree" value="0" checked>
					동의하지 않습니다.
				</label>
			</div>			
		</div>
		<div>
			<div>
				<select name="bank" id="t_bank">
					<option>은행 선택</option>
					<c:forEach var="bank_opdto" items="${b_list}">
						<option value="${bank_opdto.idx}">${bank_opdto.c_introduce}</option>
					</c:forEach>					
				</select>
				<input type="text" name="acnum">
			</div>
		</div>
		<div>
			<div>
				<h2>프로필 사진을 올려주세요.(선택사항)</h2>
					<input type="file" id="t_img" name="t_img" class="form-control"/>
				<div>사진올리기 / 나중에하기</div>
			</div>
			<div>
				<h2>활동했었던 돌봄 경험을 작성해주세요.</h2>
				<div>
					<textarea rows="10" cols="60" name="career_experience"></textarea>
				</div>
			</div>
			<div>
				<h2>간단히 자기소개 해주세요.</h2>
				<div>
					<textarea rows="10" cols="60" name="t_introduce"></textarea>
				</div>
				<div><a href="#">다른 공룡선생님 자기소개 참고하기.</a></div>
			</div>
			<button type="button" class="btn btn-secondary" formmethod="post">저장하기</button>
		</div>
	</form>
</body>

  <!-- J-query -->
  <script src="./common/js/jquery-3.6.0.min.js"></script>

  <!-- custome js -->
  <script src="./common/js/bootstrap.min.js"></script>

<script>
	
	function show(){
		let time = document.getElementById('t_time');
		let times = '';
		for(let i = 0; i < time.length; i++){
			if(time.options[i].selected){
				times += time.options[i].textContent+"\n";
			}
		}
		console.log(times);
	}

/* 	function makeTsub(){
		
		document.make_t_Card.submit();
	} */
</script>
</html>









