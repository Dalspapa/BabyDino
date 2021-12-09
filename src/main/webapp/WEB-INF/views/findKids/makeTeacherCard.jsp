<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 파비콘 -->
<link rel="shortcut icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">
<link rel="icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">

<!-- fontasome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- css -->
<link rel="stylesheet" href="./common/css/bootstrap.min.css">
<link rel="stylesheet" href="./common/css/reset.css">
<link rel="stylesheet" href="./common/css/main.css">
</head>
<body>
	<form name="make_t_Card" id="postForm">
		<div id="step_1">
			<h2>당신은 어떤 공룡선생님인가요?</h2>
			<c:forEach var="t_opdto" items="${list}">
				<div>
					<label><input type="radio" id="job" name="job"
						value="${t_opdto.idx}" checked> ${t_opdto.op} </label>
					<p>${t_opdto.c_introduce}</p>
				</div>
			</c:forEach>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-secondary nextbtn">다음으로</button>
		</div>
		<div id="step_2" class="makeTdiv">
			<h2>어떤 아이를 돌봐 주실수 있나요?</h2>
			<c:forEach var="kt_opdto" items="${k_list}">
				<div>
					<label><input type="checkbox" id="kidType" class="ktchk" name="kid_type"
						value="${kt_opdto.op}"> ${kt_opdto.c_introduce} </label>
				</div>
			</c:forEach>
			<button type="button" class="btn btn-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-secondary nextbtn">다음으로</button>
		</div>
		<!-- class="d-none" style="width: 100%;" -->
		<div id="step_3" class="makeTdiv">
			<h2>어떤 활동을 할 수 있나요?</h2>
			<div class="row">
				<c:forEach var="c_opdto" items="${c_list}">
					<div class="col-4 p-2">
						<div style="height: 30px;">
							<label><input type="checkbox" id="tCareType" class="tctchk"
								name="t_care_type" value="${c_opdto.c_introduce}">
								${c_opdto.c_introduce} </label>
						</div>
					</div>
				</c:forEach>
			</div>
			<button type="button" class="btn btn-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-secondary nextbtn">다음으로</button>
		</div>
		<div id="step_4" class="makeTdiv">
			<h2>언제 활동 할 수 있나요 ?</h2>
			<div class="row">
				<c:forEach var="d_opdto" items="${d_list}">
					<div class="col-1" style="width: 14%;">
						<div style="heigth: 25px;">
							<label><input type="checkbox" id="scheduleDay" class="scheday"
								name="schedule_day" value="${d_opdto.c_introduce}">
								${d_opdto.c_introduce} </label>
						</div>
					</div>
				</c:forEach>
			</div>
			<div>
				<select name="schedule_time" id="scheduleTime" size="6" multiple>
					<option value="0">시간 선택</option>
					<c:forEach var="time_opdto" items="${t_list}">
						<option value="${time_opdto.c_introduce}">${time_opdto.c_introduce}</option>
					</c:forEach>
				</select>
			</div>
			<button type="button" class="btn btn-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-secondary nextbtn">다음으로</button>
		</div>
		<div id="step_5" class="makeTdiv">
			<div>희망 시급을 입력해주세요.</div>
			<input type="text" id="tCost" name="t_cost" maxlength="5"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
			원
			<div>
				<h2>CCTV 촬영 동의 여부</h2>
				<label><input type="radio" name="cctvagree" value="1">
					동의합니다. </label> <label><input type="radio" name="cctvagree"
					value="0" checked> 동의하지 않습니다. </label>
			</div>
			<div>
				<select name="bank" id="bank">
					<option value="0">은행 선택</option>
					<c:forEach var="bank_opdto" items="${b_list}">
						<option value="${bank_opdto.idx}">${bank_opdto.c_introduce}</option>
					</c:forEach>
				</select> <input type="text" id="acnum" name="acnum"
					oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				' - ' 을 빼고 입력해주세요.
			</div>
			<button type="button" class="btn btn-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-secondary nextbtn">다음으로</button>
		</div>
		<div id="step_6" class="makeTdiv" id="basicimg">
			<h2>프로필 사진을 올려주세요.필수사항)</h2>
			<input type="file" id="t_img1" name="c_imgpath" class="form-control" />
			<!-- <input type="file" id="t_img2" name="c_imgpath" class="form-control" />
			<input type="file" id="t_img3" name="c_imgpath" class="form-control" /> -->
			<!-- <div>프로필 사진을 등록하지 않으면 기본이미지로 보입니다.</div> -->
			<div>
				<h2>활동했었던 돌봄 경험을 작성해주세요.(선택사항)</h2>
				<div>
					<textarea rows="10" cols="60" name="career_experience" id="career_experience"></textarea>
				</div>
			</div>
			<div>
				<h2>간단히 자기소개 해주세요.</h2>
				<div>
					<textarea rows="10" cols="60" name="t_introduce" id="t_introduce"></textarea>
				</div>
				<div>
					<a href="#">다른 공룡선생님 자기소개 참고하기.</a>
				</div>
			</div>
		
			<button type="button" class="btn btn-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-secondary"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<input type="button" onclick="isTest()" value="저장하기">
		</div>

	</form>
</body>
<%@include file="../footer.jsp" %>
<!-- J-query -->
<script src="./common/js/jquery-3.6.0.min.js"></script>

<!-- custome js -->
<script src="./common/js/bootstrap.min.js"></script>

<script>  

  function isTest() {
	  
	  	let imgFile = $('#t_img1').val();
	  	let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif)$/;v
	  	
	  	if( imgFile == ""){
	  		alert('이미지 첨부는 필수입니다.');
	  		$('#t_img1').focus();
	  		return
	  	}
	  	if(imgFile != "" && imgFile != null){
	  		if(!imgFile.match(fileForm)){
	  			alert('이미지 파일만 등록 가등합니다.');
	  			return;
	  		}
	  	}
		
		if ($('#t_introduce').val() == ""){
			alert('자기소개를 작성해주세요.');
			$('#t_introduce').focus();
			return false;
		}
		
		
		let kid_type = [];
		$('input[name=kid_type]:checked').each(function(i){
			kid_type.push($(this).val());
		});
				
		let t_care_type = [];
		$('input[name=t_care_type]:checked').each(function(i){
			t_care_type.push($(this).val());
		});
		
		let schedule_day = [];
		$('input[name=schedule_day]:checked').each(function(i){
			schedule_day.push($(this).val());
		});

		
	  var fileLength = $("input[name=c_imgpath]");
	  var cctv = $("input[name=cctvagree]").val();
	  
	  
	  // console.log('--- kidTYpe : ', $("#kidType").val());
	  
	  
	  var formData = new FormData();
	  
	  formData.set("d_member_idx", 41)
	  formData.set("job", $("#job").val())
	  formData.set("kid_type", kid_type)
	  formData.set("t_care_type", t_care_type)
	  formData.set("schedule_day", schedule_day)
	  formData.set("schedule_time", $("#scheduleTime").val())
	  formData.set("t_cost", $("#tCost").val())
	  formData.set("bank", $("#bank").val())
	  formData.set("acnum", $("#acnum").val())
	  if ($("#career_experience").val() ==""){
			formData.set("career_experience", "돌봄 활동은 처음이에요.")
	  } else {
	  		formData.set("career_experience", $("#career_experience").val())
	  }
	  formData.set("t_introduce", $("#t_introduce").val())	  
	  formData.set("cctvagree", cctv);
	  
	  
	  // 이미지가 있으면 파일정보를 보내줘야하는데 지금 문자열을 보내줘서 에러나느거같아요.
	  // 이미지 없으면 inputtype file display-none 으로 파일 하드코딩으로 박아버리고
	  for(var i = 0; i < fileLength.length; i++) {
		  if(fileLength[i].files[0] != undefined) {
			  formData.set('tImg[' + i + ']', fileLength[i].files[0]);
		  } /* else {
			  $('#step6').html('<input type="file" value="teacher.png" style="display:none;">');
			  
		  }  */
	  };	  
	  
	  formData.forEach(function(value, key) {
		  console.log(key, value);
	  });	  
	  
	  
	  $.ajax({
		method: 'POST',
		url: '${pageContext.request.contextPath}/makeTeacherCard.do',
		data: formData,
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		cache: false,
		success: function(r) {
			console.log("--- r : ", r);
			location.href='main.do';
		},
		error: function(e) {
			console.error(e);
		}
	  })
  }
  		
  	$(document).ready(function (){
  		
  		let name = 'step_'
  		let count = 1;
  		let dName = name + count;

  		
  		$('.makeTdiv').hide();
  	
  		$('.nextbtn').click(function (){
  					
  			$('#'+dName).hide();			
  			count++;
  		
  			if(count == 3){
  				let cnt = $('input[name=kid_type]:checkbox:checked').length;
  			
  				if(cnt < 1){
  					alert('한 개 이상 선택해주세요');
  					count = 2;
  				}
  			}
  			if(count == 4){
  				let cnt = $('input[name=t_care_type]:checkbox:checked').length;
  				
  				if(cnt < 1){
  					alert('한 개 이상 선택해주세요');
  					count = 3;  					
  				}
  			}
  			if(count == 5){
  				let cnt = $('input[name=schedule_day]:checkbox:checked').length;
  			
  				let cnt2 = $('#scheduleTime').val();
  				if(cnt < 1){
  					alert('한 개 이상 선택해주세요');
  					count = 4;  				
  				} else if(cnt2 == 0){
  					alert('시간을 선택해주세요');
  					count = 4;
  				}
  			}
  			if(count == 6){
  				let cnt = $('#tCost').val();
  				let cnt2 = $('#bank').val();
  				let cnt3 = $('#acnum').val();
  				if (cnt ==""){
  					alert('희망 시급을 입력해주세요.')
  					count = 5;
  					$('#tCost').focus();
  				} else if(cnt2 == 0) {
  					alert('은행을 선택해주세요.')
  					count = 5;
  					$('#bank').focus();
  				} else if(cnt3 == ""){
  					alert('계좌번호를 입력해주세요.')
  					count = 5;
  					$('#acnum').focus();
  				}
  			}
  			dName = name + count;			
  			$('#'+dName).show();
  			
  		});
  		
  		$('.prevbtn').click(function (){
  		
  			$('#'+dName).hide();
  			count--;
  			dName = name + count;
  			$('#'+dName).show();
  		});
  		
  	});
  	  	

  </script>

</html>









