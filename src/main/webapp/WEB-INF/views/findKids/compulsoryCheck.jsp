<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script src="common/js/signature_draw.js"></script>

<style>
.canvas-draw-box {
	position: relative;
}

.canvas-draw-base {
	border: 1px solid black;
	width: 100px;
	height: 100px;
	background-image:
		url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAwICAwICAwMDAwQDAwQFCAUFBAQFCgcHBggMCgwMCwoLCw0OEhANDhEOCwsQFhARExQVFRUMDxcYFhQYEhQVFP/bAEMBAwQEBQQFCQUFCRQNCw0UFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFP/AABEIASwBLAMBIgACEQEDEQH/xAAVAAEBAAAAAAAAAAAAAAAAAAAACf/EABQQAQAAAAAAAAAAAAAAAAAAAAD/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8AqmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/9k=');
	background-position-x: center;
	background-position-y: center;
	background-size: contain;
	background-repeat: no-repeat;
	background-attachment: initial;
	background-origin: initial;
	background-clip: initial;
	background-color: initial;
}

.canvas-draw-pad-box {
	position: absolute;
	z-index: 9999;
	top: 0;
	background-color: white;
	display: none;
}

.canvas-draw-pad {
	border: 1px solid black;
}
</style>
</head>
<body>
<h2>필수인증</h2>
<form name="t_compulsory">
<section>
	<div id="h_Div">
		<h2>S T E P 1</h2>
	</div>
		<div id="step_1">
			<h4>Q1. 부모님의 무리한 요구사항을 거절해야 할 때 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_1_a" name="quiz1" class="quiz" value="0" checked="checked"><label for="q_1_a">망설이지 말고 단호히 거절한다.</label><br>
					<input type="radio" id="q_1_b" name="quiz1" class="quiz" value="0"><label for="q_1_b">바로 회사로 연락해 도움을 요청한다.</label><br>
					<input type="radio" id="q_1_c" name="quiz1" class="quiz" value="1"><label for="q_1_c">죄송하지만 등의 쿠션언어를 사용해 정중하고 부드럽게 거절한다.</label><br>
					<input type="radio" id="q_1_d" name="quiz1" class="quiz" value="0"><label for="q_1_d">거절이 어려우므로 그냥 일단 요청대로 한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="javascript:location.href='main.do'">포기하기</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_2" class="makeTdiv" style="width: 100%;">
			<h4>Q2. 돌봄 전날 몸이 아파요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_2_a" name="quiz2" class="quiz" value="1" checked><label for="q_2_a">부모님께 연락해 일정 조율을 해보고 안되면 회사로 연락 후 취소한다.</label><br>
					<input type="radio" id="q_2_b" name="quiz2" class="quiz" value="0"><label for="q_2_b">약을 먹고 아침까지 기다려본다.</label><br>
					<input type="radio" id="q_2_c" name="quiz2" class="quiz" value="0"><label for="q_2_c">바로 취소 버튼을 먼저 누른다.</label><br>
					<input type="radio" id="q_2_d" name="quiz2" class="quiz" value="0"><label for="q_2_d">회사로 먼저 연락한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>		
		<div id="step_3" class="makeTdiv" style="width: 100%;">
			<h4>Q3. 아이가 갑자기 놀이터로 나가자고 하면 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_3_a" name="quiz3" class="quiz" value="0" checked><label for="q_3_a">안된다고 단호하게 말하고 장소를 옮기지 않는다.</label><br>
					<input type="radio" id="q_3_b" name="quiz3" class="quiz" value="0"><label for="q_3_b">아이가 원하므로 일단 간다.</label><br>
					<input type="radio" id="q_3_c" name="quiz3" class="quiz" value="0"><label for="q_3_c">집으로 들어간다.</label><br>
					<input type="radio" id="q_3_d" name="quiz3" class="quiz" value="1"><label for="q_3_d">부모님께 연락드려 장소를 옮겨도 될지 상의한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_4" class="makeTdiv" style="width: 100%;">
			<h4>Q4. 아이가 다쳤을 때 어떤 순서대로 조치해야 할까요?</h4>
				<p>
					<input type="radio" id="q_4_a" name="quiz4" class="quiz" value="0" checked><label for="q_4_a">부모님이 오시기까지 기다린다.</label><br>
					<input type="radio" id="q_4_b" name="quiz4" class="quiz" value="0"><label for="q_4_b">아이를 바로 병원으로 데리고 간다.</label><br>
					<input type="radio" id="q_4_c" name="quiz4" class="quiz" value="1"><label for="q_4_c">아이를 진정시키고 부모님께 연락한 뒤 회사로 연락한다.</label><br>
					<input type="radio" id="q_4_d" name="quiz4" class="quiz" value="0"><label for="q_4_d">회사로 바로 연락한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_5" class="makeTdiv" style="width: 100%;">
			<h4>Q5. 돌봄 중 거절해도 되는 부모님의 요청사항은 어떤 것일까요?</h4>
				<p>
					<input type="radio" id="q_5_a" name="quiz5" class="quiz" value="0" checked><label for="q_5_a">학교에서 온 아이 얼굴과 손발을 씻겨주세요.</label><br>
					<input type="radio" id="q_5_b" name="quiz5" class="quiz" value="0"><label for="q_5_b">먹은 그릇을 씽크대에 넣어 주세요.</label><br>
					<input type="radio" id="q_5_c" name="quiz5" class="quiz" value="0"><label for="q_5_c">선생님, 해놓은 김치볶음밥 렌지에 데워서 먹여주세요.</label><br>
					<input type="radio" id="q_5_d" name="quiz5" class="quiz" value="1"><label for="q_5_d">선생님, 김치볶음밥 좀 요리해주세요.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_6" class="makeTdiv" style="width: 100%;">
				<h4>Q6. 돌봄 종료까지 10분이 남았어요. 무엇을 해야할까요?</h4>
				<p>
					<input type="radio" id="q_6_a" name="quiz6" class="quiz" value="0" checked><label for="q_6_a">부모님께 인사</label><br>
					<input type="radio" id="q_6_b" name="quiz6" class="quiz" value="0"><label for="q_6_b">집 안 구석구석 청소</label><br>
					<input type="radio" id="q_6_c" name="quiz6" class="quiz" value="1"><label for="q_6_c">아이와 함께 뒷정리</label><br>
					<input type="radio" id="q_6_d" name="quiz6" class="quiz" value="0"><label for="q_6_d">오늘 한 놀이 복습</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>		
		</div>		
		<div id="step_7" class="makeTdiv" style="width: 100%;">
			<h4>Q7. 돌봄이 끝났는데 부모님이 안방에 계세요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_7_a" name="quiz7" class="quiz" value="0" checked><label for="q_7_a">부모님을 방해하지 않도록 인사없이 조용히 나온다.</label><br>
					<input type="radio" id="q_7_b" name="quiz7" class="quiz" value="1"><label for="q_7_b">아이의 안전을 위해 돌봄시간이 끝났음을 알리고 인사한다.</label><br>
					<input type="radio" id="q_7_c" name="quiz7" class="quiz" value="0"><label for="q_7_c">아이더러 안방에 들어가라고 하고 나온다.</label><br>
					<input type="radio" id="q_7_d" name="quiz7" class="quiz" value="0"><label for="q_7_d">인사를 해도 되고 하지 않아도 된다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>
		</div>		
		<div id="step_8" class="makeTdiv" style="width: 100%;">
			<h4>Q8. 아이가 스마트폰을 보여달라고 졸라요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_8_a" name="quiz8" class="quiz" value="0" checked><label for="q_8_a">부모님께 바로 전화해서 보여줘도 되는지 묻는다.</label><br>
					<input type="radio" id="q_8_b" name="quiz8" class="quiz" value="0"><label for="q_8_b">선생님은 보여줄 수 없다고 단호히 말하고 혼낸다.</label><br>
					<input type="radio" id="q_8_c" name="quiz8" class="quiz" value="0"><label for="q_8_c">아이가 조르니까 일단 보여준다.</label><br>
					<input type="radio" id="q_8_d" name="quiz8" class="quiz" value="1"><label for="q_8_d">아이의 마음에 공감해주면서 다른 놀이로 관심을 유도한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>		
		</div>		
		<div id="step_9" class="makeTdiv" style="width: 100%;">
			<h4>Q9. 위생적인 돌봄 필수사항이 아닌 것은 무엇인가요?</h4>
				<p>
					<input type="radio" id="q_9_a" name="quiz9" class="quiz" value="1" checked><label for="q_9_a">향수</label><br>
					<input type="radio" id="q_9_b" name="quiz9" class="quiz" value="0"><label for="q_9_b">양말</label><br>
					<input type="radio" id="q_9_c" name="quiz9" class="quiz" value="0"><label for="q_9_c">손씻기</label><br>
					<input type="radio" id="q_9_d" name="quiz9" class="quiz" value="0"><label for="q_9_d">마스크</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
			</div>	
		</div>
			
		<div id="step_10" class="makeTdiv" style="width: 100%;">
			<h4>Q10. 아이가 갑자기 과자를 사달래요. 적절하지 않은 방법은 무엇일까요?</h4>
			<p>
				<input type="radio" id="q_10_a" name="quiz10" class="quiz" value="0" checked><label for="q_10_a">부모님과 연락이 안되면 문자로 내용을 전달한 뒤 사준다.</label><br>
				<input type="radio" id="q_10_b" name="quiz10" class="quiz" value="1"><label for="q_10_b">아이가 먹은거니, 부모님과 사전사후 연락을 하지 않아도 된다.</label><br>
				<input type="radio" id="q_10_c" name="quiz10" class="quiz" value="0"><label for="q_10_c">아이가 조른다면 부모님에게 연락해 상의한다.</label><br>
				<input type="radio" id="q_10_d" name="quiz10" class="quiz" value="0"><label for="q_10_d">추가된 비용을 돌봄 후 앱에 입력한다.</label>
			</p>
		<div id="q_btn">
			<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
			<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
		</div>
		</div>		
</section>
<section id="step_11" class="makeTdiv" style="width: 100%;">
	<div>
		<h2>S T E P 2</h2>
		<div>
			<h3>등본 등록</h3>
			<input type="file" id="t_copy" name="t_copy" class="form-control"/>
		</div>
		<div>	
			<h3>동의 서명</h3>
			<div class="canvas-draw-box">
				<div class="canvas-draw-base" data-id="canvas_name"></div>
					<div class="canvas-draw-pad-box">
					<canvas id="canvas_name" class="canvas-draw-pad">1. 사용중인 브라우저에서 지원하지 못합니다.</canvas>
					<div>
						<!-- <button type="button" class="btn btn-secondary" onclick="javascript:save('canvas_name')">저장하기</button>
						<button type="button" class="btn btn-secondary" onclick="javascript:down('canvas_name')">다운로드</button> -->
						<button type="button" class="btn btn-secondary" onclick="javascript:del('canvas_name')">다시하기</button>
						<button type="button" class="btn btn-secondary" onclick="javascript:done('canvas_name')">완료</button>
					</div>
				</div>
			</div>
		</div>
		<div style="padding-top:200px;">
			<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
			<button type="button" class="btn btn-secondary" onclick="reqAgree();">인증요청</button>
		</div>
		<input type="hidden" name="t_sexcrime">
	</div>
</section>
</form>
</body>
  <script src="./common/js/jquery-3.6.0.min.js"></script>

  <!-- custome js -->
  <script src="./common/js/bootstrap.min.js"></script>
  <script>
  
  
 	function reqAgree(){
 		

 	 	let imgFile = $('#t_copy').val();
 		let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif)$/;
 		
 		if( imgFile == ""){
 			alert('이미지 첨부는 필수입니다.');
 			$('#t_copy').focus();
 			return false;
 		}
 		if(imgFile != "" && imgFile != null){
 			if(!imgFile.match(fileForm)){
 				alert('이미지 파일만 등록 가등합니다.');
 				return false;
 			}
 		}
 		console.log('11111');

 		let canvasCheck = $('#canvas_name').getContext('2d');
 		alert(canvasCheck);
 		
/*  		function isCanvas(canvas){
 			return !canvas.getContext('2d')
 			.getImageData(0, 0, canvas.width, canvas.height).data
 			.some(channel => channel !== 0);
 			console.log('wow');
 		} */
 	/* 	let cv = $('#canvas_name');
 		if ( !cv.getContext ) return;
 		
 		console.log('11111');
 		
 		let ctx = cv.getContext('2d');
 		let w = cv.width = cv.height = 100;
 		let draw = null;
 		let d = ctx.getImageData(0, 0, w, w);
 		let leng = d.data.length;
 		for ( let i = 0; i < leng; i++){
 			if(!d.data[i]){
 				draw = false;
 			}else if(d.data[i]){
 				draw = true; 				
 			}
 		}
 		console.log('222222');
 		if(!draw){
 			alert('성범죄 조회 동의 서명을 해주셔야합니다.');
 		} */
 		console.log('333333');
 		
 		
 		let count = 0;
 		
 		for(var i = 1; i < 11; i++) {
 			if($("input[name='quiz" + i + "']:checked").val() == 1) {
 				count++;
 			}
 		}
 		
 		console.log("-- count : ", count);
 		
 		if(count < 8){
 			$('.makeTdiv').hide();
 			$('#step_1').show();
 			let name = 'step_';
			let count = 1;
			let dName = name + count;	
			
			$('.makeTdiv').hide();
			
			$('.nextbtn').click(function (){				
				$('#'+dName).hide();
				count++;
				dName = name + count;				
				$('#'+dName).show();
				console.log(count);
			});
			
			$('.prevbtn').click(function (){
			
				$('#'+dName).hide();
				count--;
				dName = name + count;				
				$('#'+dName).show();
			});
 			console.log(count);
 			return false;
 		}
 	}
 	
	$(document).ready(function (){
			
			let name = 'step_';
			let count = 1;
			let dName = name + count;	
			
			$('.makeTdiv').hide();
			
			$('.nextbtn').click(function (){				
				$('#'+dName).hide();
				count++;
				dName = name + count;				
				$('#'+dName).show();
				console.log(count);
			});
			
			$('.prevbtn').click(function (){
			
				$('#'+dName).hide();
				count--;
				dName = name + count;				
				$('#'+dName).show();
			});
			
		});
	
	
	$(function(){
		_SIGNATURE.start("canvas_name", 300, 300)
	});
/* 	경로 저장
	function save (_canvas){
		var data = _SIGNATURE.getCanvas(_canvas);
		console.log("data is : " + data);
		$("input[name=t_sexcrime]").val(data);
	} */
	
	function del (_canvas){
		_SIGNATURE.clearCanvas(_canvas);
	}
/* 	경로 다운로드
	function down (_canvas){
		_SIGNATURE.downCanvas(_canvas);
	} */
	
	function done (_canvas){
		_SIGNATURE.doneCanvas(_canvas);		
	}
	
	$("body").delegate(".canvas-draw-base","click", function(){
		var _canvas = $(this).data("id");
		$("canvas#" + _canvas).parents(".canvas-draw-pad-box").show();
		
		//_SIGNATURE.setPreImage(_canvas);
	});
	

	/* function showDiv1() {
		if (!$('input[name=q_1]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_2");
			q_a.removeClass('d-none');
			let q_b = $("#step_1");
			q_b.addClass('d-none');
		}
	}
	function showDiv2() {
		if (!$('input[name=q_2]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_3");
			q_a.removeClass('d-none');
			let q_b = $("#step_2");
			q_b.addClass('d-none');
		}
	}
	function showDiv3() {
		if (!$('input[name=q_3]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_4");
			q_a.removeClass('d-none');
			let q_b = $("#step_3");
			q_b.addClass('d-none');
		}
	}
	function showDiv4() {
		if (!$('input[name=q_4]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_5");
			q_a.removeClass('d-none');
			let q_b = $("#step_4");
			q_b.addClass('d-none');
		}
	}
	function showDiv5() {
		if (!$('input[name=q_5]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_6");
			q_a.removeClass('d-none');
			let q_b = $("#step_5");
			q_b.addClass('d-none');
		}
	}
	function showDiv6() {
		if (!$('input[name=q_6]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_7");
			q_a.removeClass('d-none');
			let q_b = $("#step_6");
			q_b.addClass('d-none');
		}
	}
	function showDiv7() {
		if (!$('input[name=q_7]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_8");
			q_a.removeClass('d-none');
			let q_b = $("#step_7");
			q_b.addClass('d-none');
		}
	}
	function showDiv8() {
		if (!$('input[name=q_8]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_9");
			q_a.removeClass('d-none');
			let q_b = $("#step_8");
			q_b.addClass('d-none');
		}
	}
	function showDiv9() {
		if (!$('input[name=q_9]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step_10");
			q_a.removeClass('d-none');
			let q_b = $("#step_9");
			q_b.addClass('d-none');
		}
	}
	function showDiv10() {	
		if (!$('input[name=q_10]:checked').val()) {
			window.alert('답을 골라주세요');
		} else {
			let q_a = $("#step2_1");
			q_a.removeClass('d-none');
			let q_b = $("#step_10");
			q_b.addClass('d-none');			
		}
	}
	
	function preDiv10() {
		let q_a = $("#step_10");
		q_a.removeClass('d-none');
		let q_b = $("#step2_1");
		q_b.addClass('d-none');
	}
	function preDiv9() {
		let q_a = $("#step_9");
		q_a.removeClass('d-none');
		let q_b = $("#step_10");
		q_b.addClass('d-none');
	}
	function preDiv8() {
		let q_a = $("#step_8");
		q_a.removeClass('d-none');
		let q_b = $("#step_9");
		q_b.addClass('d-none');
	}
	function preDiv7() {
		let q_a = $("#step_7");
		q_a.removeClass('d-none');
		let q_b = $("#step_8");
		q_b.addClass('d-none');
	}
	function preDiv6() {
		let q_a = $("#step_6");
		q_a.removeClass('d-none');
		let q_b = $("#step_7");
		q_b.addClass('d-none');
	}
	function preDiv5() {
		let q_a = $("#step_5");
		q_a.removeClass('d-none');
		let q_b = $("#step_6");
		q_b.addClass('d-none');
	}
	function preDiv4() {
		let q_a = $("#step_4");
		q_a.removeClass('d-none');
		let q_b = $("#step_5");
		q_b.addClass('d-none');
	}
	function preDiv3() {
		let q_a = $("#step_3");
		q_a.removeClass('d-none');
		let q_b = $("#step_4");
		q_b.addClass('d-none');
	}
	function preDiv2() {
		let q_a = $("#step_2");
		q_a.removeClass('d-none');
		let q_b = $("#step_3");
		q_b.addClass('d-none');
	}
	function preDiv1() {
		let q_a = $("#step_1");
		q_a.removeClass('d-none');
		let q_b = $("#step_2");
		q_b.addClass('d-none');
	} */

</script>
</html>











