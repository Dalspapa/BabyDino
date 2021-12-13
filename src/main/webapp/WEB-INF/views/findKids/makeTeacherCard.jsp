<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#step_1{
    margin-top: 182px;
    margin-bottom: 81px;
    text-align: center;
}
#step_1 h2{
	font-family: 'S-Air';
	margin-bottom: 15px;
}
#step_2{
    margin-top: 182px;
    margin-bottom: 110px;
    text-align: center;
}
#step_2 .check2{
	margin-bottom: 20px;
} 
#step_2 h2{
	font-family: 'S-Air';
	margin-bottom: 25px;
}
#step_2 .btn{
	margin-top: 15px;
}
#step_3{
    margin-top: 182px;
    margin-bottom: 81px;
    text-align: center;
}
#step_3 .row .col-4{
	width: 390px!important;
}
#step_3 .row{
	margin-left: 198px;
    margin-top: 56px;
    margin-bottom: 70px;
}
#step_3 h2{
	font-family: 'S-Air';
	margin-bottom: 15px;
}
#step_4{
    margin-top: 182px;
    margin-bottom: 50px;
    text-align: center;
}
#step_4 h2{
	font-family: 'S-Air';
	margin-bottom: 15px;
}
#step_4 .row{
	margin-top: 50px;
	margin-bottom: 20px;
}
#step_4 .time{
	margin-bottom: 40px;
}
#step_4 .time h5{
	font-family: 'S-Air';
	margin-bottom: 15px;
}
#step_5{
    margin-top: 182px;
    margin-bottom: 81px;
    text-align: center;
}
#step_5 .hopepay{
	font-family: 'S-Air';
    font-size: 19px;
    margin-bottom: 12px;
}
#step_5 h2{
	font-family: 'S-Air';
    margin-bottom: 15px;
    margin-top: 52px;
    font-size: 24px;
}
#step_5 .cctv{
	margin-bottom: 25px;
}
#step_5 .bank{
	margin-bottom: 60px;
}
#step_5 .btn{
	margin-top: 20px;
}
#step_6 {
	margin-top: 182px;
    margin-bottom: 81px;
    text-align: center;
}
#step_6 h2{
	font-family: 'S-Air';
    margin-bottom: 15px;
    margin-top: 52px;
    font-size: 24px;
}
#step_6 input[type="file"]{
	margin-left: 601px;
    width: 700px!important;
}
#step_6 .info{
	margin-bottom: 20px;
}
#step_6 .info .other a{
	text-decoration: none;
	color: #68983b;
}
.pignose-calendar-unit-disabled a {
   color: red !important
}

</style>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
	<form name="make_t_Card" id="postForm">
		<div id="step_1">
			<h2>당신은 어떤 공룡선생님인가요?</h2>
			<c:forEach var="t_opdto" items="${list}">
				<div>
					<label><input type="radio" id="job" name="job"
						value="${t_opdto.idx}" checked> ${t_opdto.op} 
					<p>${t_opdto.c_introduce}</p></label>
				</div>
			</c:forEach>
			<button type="button" class="btn btn-outline-dark"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-outline-success nextbtn">다음으로</button>
		</div>
		<div id="step_2" class="makeTdiv">
			<h2>어떤 아이를 돌봐 주실수 있나요?</h2>
			<c:forEach var="kt_opdto" items="${k_list}">
				<div class="check2">
					<label><input type="checkbox" id="kidType" class="ktchk" name="kid_type" value="${kt_opdto.op}"> ${kt_opdto.c_introduce} </label>
				</div>
			</c:forEach>
			<div class="btn">
			<button type="button" class="btn btn-outline-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-outline-dark"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-outline-success nextbtn">다음으로</button>
		</div>
		</div>
		<!-- class="d-none" style="width: 100%;" -->
		<div id="step_3" class="makeTdiv">
			<h2>어떤 활동을 할 수 있나요?</h2>
			<div class="row">
				<c:forEach var="c_opdto" items="${c_list}">
					<div class="col-4 p-2">
						<div style="height: 30px;">
							<input type="checkbox" id="tCareType" class="tctchk"
								name="t_care_type" value="${c_opdto.c_introduce}">
								<label for="tCareType" id="carelb">${c_opdto.c_introduce}</label>
								<style>
									#tCareType+#carelb{
										display: block;
										width: 24px;
										height: 24px;
										background: url('./common/img/10.png') no-repeat 0 0px / contain;
									}
									#tCareType:checked+#carelb{
										background: url('./common/img/2.png') no-repeat 0 1px / contain;
									}
									#tCareType{
										display: none;
									}
								
								</style>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="btn">
				<button type="button" class="btn btn-outline-secondary prevbtn">이전으로</button>
				<button type="button" class="btn btn-outline-dark"
					onclick="javascript:location.href='main.do'">포기하기</button>
				<button type="button" class="btn btn-outline-success nextbtn">다음으로</button>
			</div>
		</div>		
		
		<div id="step_4" class="makeTdiv">
			<div class="hopepay">희망 시급을 입력해주세요.</div>
			<input type="text" id="tCost" name="t_cost" maxlength="5"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
			원
			<div class="cctv">
				<h2>CCTV 촬영 동의 여부</h2>
				<label><input type="radio" name="cctvagree" value="1"> 동의합니다. </label>
				<label><input type="radio" name="cctvagree"	value="0" checked> 동의하지 않습니다. </label>
			</div>
			<div class="bank">
				<select name="bank" id="bank">
					<option value="0">은행 선택</option>
					<c:forEach var="bank_opdto" items="${b_list}">
						<option value="${bank_opdto.idx}">${bank_opdto.c_introduce}</option>
					</c:forEach>
				</select> <input type="text" id="acnum" name="acnum"
					oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				' - ' 을 빼고 입력해주세요.
			</div>
					
			<button type="button" class="btn btn-outline-secondary  prevbtn">이전으로</button>
			<button type="button" class="btn btn-outline-dark"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" class="btn btn-outline-success nextbtn">다음으로</button>
		 
		</div>
		<div id="step_5" class="makeTdiv" id="basicimg">
			<h2>프로필 사진을 올려주세요.필수사항)</h2>
			<input type="file" id="t_img1" name="c_imgpath" class="form-control" />
			<div>
				<h2>활동했었던 돌봄 경험을 작성해주세요.(선택사항)</h2>
				<div>
					<textarea rows="10" cols="60" name="career_experience" id="career_experience"></textarea>
				</div>
			</div>
			<div class="info">
				<h2>간단히 자기소개 해주세요.</h2>
				<div>
					<textarea rows="10" cols="60" name="t_introduce" id="t_introduce"></textarea>
				</div>
				<div class="other">
					<a href="#">다른 공룡선생님 자기소개 참고하기.</a>
				</div>
			</div>

			<button type="button" class="btn btn-outline-secondary prevbtn">이전으로</button>
			<button type="button" class="btn btn-outline-dark"
				onclick="javascript:location.href='main.do'">포기하기</button>
			<button type="button" onclick="isTest()" value="저장하기" class="btn btn-outline-success">저장하기</button>
		</div>

	</form>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>
	
  function isTest() {

	  	let imgFile = $('#t_img1').val();

	  	let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif|JPG|JPEG|PNG|GIF|BMP|PDF|JFIF)$/gi;

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

	  var fileLength = $("input[name=c_imgpath]");
	  var cctv = $("input[name=cctvagree]").val();
	  var formData = new FormData();


	  formData.set("d_member_idx", '${sessionScope.saveIdx}');
	  	  
	  formData.set("job", $("#job").val())
	  formData.set("kid_type", kid_type)
	  formData.set("t_care_type", t_care_type)
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

	  for(var i = 0; i < fileLength.length; i++) {
		  if(fileLength[i].files[0] != undefined) {
			  formData.set('tImg[' + i + ']', fileLength[i].files[0]);
		  } 
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