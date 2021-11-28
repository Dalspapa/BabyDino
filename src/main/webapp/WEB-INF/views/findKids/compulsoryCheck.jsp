<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
<script src="js/signature_draw.js"></script>
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
					<input type="radio" id="q_1_a" name="q_1" value="0"><label for="q_1_a">망설이지 말고 단호히 거절한다.</label><br>
					<input type="radio" id="q_1_b" name="q_1" value="0"><label for="q_1_b">바로 회사로 연락해 도움을 요청한다.</label><br>
					<input type="radio" id="q_1_c" name="q_1" value="1"><label for="q_1_c">죄송하지만 등의 쿠션언어를 사용해 정중하고 부드럽게 거절한다.</label><br>
					<input type="radio" id="q_1_d" name="q_1" value="0"><label for="q_1_d">거절이 어려우므로 그냥 일단 요청대로 한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="givDiv10();">포기하기</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv1();">다음으로</button>
			</div>
		</div>
		<div id="step_2" class="d-none" style="width: 100%;">
			<h4>Q2. 돌봄 전날 몸이 아파요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_2_a" name="q_2" value="1"><label for="q_2_a">부모님께 연락해 일정 조율을 해보고 안되면 회사로 연락 후 취소한다.</label><br>
					<input type="radio" id="q_2_b" name="q_2" value="0"><label for="q_2_b">약을 먹고 아침까지 기다려본다.</label><br>
					<input type="radio" id="q_2_c" name="q_2" value="0"><label for="q_2_c">바로 취소 버튼을 먼저 누른다.</label><br>
					<input type="radio" id="q_2_d" name="q_2" value="0"><label for="q_2_d">회사로 먼저 연락한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv1();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv2();">다음으로</button>
			</div>
		</div>		
		<div id="step_3" class="d-none" style="width: 100%;">
			<h4>Q3. 아이가 갑자기 놀이터로 나가자고 하면 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_3_a" name="q_3" value="0"><label for="q_3_a">안된다고 단호하게 말하고 장소를 옮기지 않는다.</label><br>
					<input type="radio" id="q_3_b" name="q_3" value="0"><label for="q_3_b">아이가 원하므로 일단 간다.</label><br>
					<input type="radio" id="q_3_c" name="q_3" value="0"><label for="q_3_c">집으로 들어간다.</label><br>
					<input type="radio" id="q_3_d" name="q_3" value="1"><label for="q_3_d">부모님께 연락드려 장소를 옮겨도 될지 상의한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv2();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv3();">다음으로</button>
			</div>
		</div>
		<div id="step_4" class="d-none" style="width: 100%;">
			<h4>Q4. 아이가 다쳤을 때 어떤 순서대로 조치해야 할까요?</h4>
				<p>
					<input type="radio" id="q_4_a" name="q_4" value="0"><label for="q_4_a">망설이지 말고 단호히 거절한다.</label><br>
					<input type="radio" id="q_4_b" name="q_4" value="0"><label for="q_4_b">바로 회사로 연락해 도움을 요청한다.</label><br>
					<input type="radio" id="q_4_c" name="q_4" value="1"><label for="q_4_c">죄송하지만 등의 쿠션언어를 사용해 정중하고 부드럽게 거절한다.</label><br>
					<input type="radio" id="q_4_d" name="q_4" value="0"><label for="q_4_d">거절이 어려우므로 그냥 일단 요청대로 한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv3();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv4();">다음으로</button>
			</div>
		</div>
		<div id="step_5" class="d-none" style="width: 100%;">
			<h4>Q5. 돌봄 중 거절해도 되는 부모님의 요청사항은 어떤 것일까요?</h4>
				<p>
					<input type="radio" id="q_5_a" name="q_5" value="0"><label for="q_5_a">학교에서 온 아이 얼굴과 손발을 씻겨주세요.</label><br>
					<input type="radio" id="q_5_b" name="q_5" value="0"><label for="q_5_b">먹은 그릇을 씽크대에 넣어 주세요.</label><br>
					<input type="radio" id="q_5_c" name="q_5" value="0"><label for="q_5_c">선생님, 해놓은 김치볶음밥 렌지에 데워서 먹여주세요.</label><br>
					<input type="radio" id="q_5_d" name="q_5" value="1"><label for="q_5_d">선생님, 김치볶음밥 좀 요리해주세요.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv4();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv5();">다음으로</button>
			</div>
		</div>
		<div id="step_6" class="d-none" style="width: 100%;">
				<h4>Q6. 돌봄 종료까지 10분이 남았어요. 무엇을 해야할까요?</h4>
				<p>
					<input type="radio" id="q_6_a" name="q_6" value="0"><label for="q_6_a">부모님께 인사</label><br>
					<input type="radio" id="q_6_b" name="q_6" value="0"><label for="q_6_b">집 안 구석구석 청소</label><br>
					<input type="radio" id="q_6_c" name="q_6" value="1"><label for="q_6_c">아이와 함께 뒷정리</label><br>
					<input type="radio" id="q_6_d" name="q_6" value="0"><label for="q_6_d">오늘 한 놀이 복습</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv5();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv6();">다음으로</button>
			</div>		
		</div>		
		<div id="step_7" class="d-none" style="width: 100%;">
			<h4>Q7. 돌봄이 끝났는데 부모님이 안방에 계세요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_7_a" name="q_7" value="0"><label for="q_7_a">부모님을 방해하지 않도록 인사없이 조용히 나온다.</label><br>
					<input type="radio" id="q_7_b" name="q_7" value="1"><label for="q_7_b">아이의 안전을 위해 돌봄시간이 끝났음을 알리고 인사한다.</label><br>
					<input type="radio" id="q_7_c" name="q_7" value="0"><label for="q_7_c">아이더러 안방에 들어가라고 하고 나온다.</label><br>
					<input type="radio" id="q_7_d" name="q_7" value="0"><label for="q_7_d">인사를 해도 되고 하지 않아도 된다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv6();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv7();">다음으로</button>
			</div>
		</div>		
		<div id="step_8" class="d-none" style="width: 100%;">
			<h4>Q8. 아이가 스마트폰을 보여달라고 졸라요. 어떻게 해야할까요?</h4>
				<p>
					<input type="radio" id="q_8_a" name="q_8" value="0"><label for="q_8_a">부모님께 바로 전화해서 보여줘도 되는지 묻는다.</label><br>
					<input type="radio" id="q_8_b" name="q_8" value="0"><label for="q_8_b">선생님은 보여줄 수 없다고 단호히 말하고 혼낸다.</label><br>
					<input type="radio" id="q_8_c" name="q_8" value="0"><label for="q_8_c">아이가 조르니까 일단 보여준다.</label><br>
					<input type="radio" id="q_8_d" name="q_8" value="1"><label for="q_8_d">아이의 마음에 공감해주면서 다른 놀이로 관심을 유도한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv7();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv8();">다음으로</button>
			</div>		
		</div>		
		<div id="step_9" class="d-none" style="width: 100%;">
			<h4>Q9. 위생적인 돌봄 필수사항이 아닌 것은 무엇인가요?</h4>
				<p>
					<input type="radio" id="q_9_a" name="q_9" value="1"><label for="q_9_a">향수</label><br>
					<input type="radio" id="q_9_b" name="q_9" value="0"><label for="q_9_b">양말</label><br>
					<input type="radio" id="q_9_c" name="q_9" value="0"><label for="q_9_c">손씻기</label><br>
					<input type="radio" id="q_9_d" name="q_9" value="0"><label for="q_9_d">마스크</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-secondary" onclick="preDiv8();">이전으로</button>
				<button type="button" class="btn btn-secondary" onclick="showDiv9();">다음으로</button>
			</div>	
		</div>
			
		<div id="step_10" class="d-none" style="width: 100%;">
			<h4>Q10. 아이가 갑자기 과자를 사달래요. 적절하지 않은 방법은 무엇일까요?</h4>
			<p>
				<input type="radio" id="q_10_a" name="q_10" value="0"><label for="q_10_a">부모님과 연락이 안되면 문자로 내용을 전달한 뒤 사준다.</label><br>
				<input type="radio" id="q_10_b" name="q_10" value="1"><label for="q_10_b">아이가 먹은거니, 부모님과 사전사후 연락을 하지 않아도 된다.</label><br>
				<input type="radio" id="q_10_c" name="q_10" value="0"><label for="q_10_c">아이가 조른다면 부모님에게 연락해 상의한다.</label><br>
				<input type="radio" id="q_10_d" name="q_10" value="0"><label for="q_10_d">추가된 비용을 돌봄 후 앱에 입력한다.</label>
			</p>
		<div id="q_btn">
			<button type="button" class="btn btn-secondary" onclick="preDiv9();">이전으로</button>
			<button type="button" class="btn btn-secondary" onclick="showDiv10();">다음으로</button>
		</div>
		</div>		
</section>
<section id="step2_1" class="d-none" style="width: 100%;">
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
					<button type="button" class="btn btn-secondary" onclick="javascript:save('canvas_name')">저장하기</button>
					<button type="button" class="btn btn-secondary" onclick="javascript:down('canvas_name')">다운로드</button>
					<button type="button" class="btn btn-secondary" onclick="javascript:del('canvas_name')">다시하기</button>
					<button type="button" class="btn btn-secondary" onclick="javascript:done('canvas_name')">완료</button>
				</div>
			</div>
		</div>
	</div>
	<div style="padding-top:200px;">
		<button type="button" class="btn btn-secondary" onclick="preDiv10();">이전으로</button>
		<button type="button" class="btn btn-secondary" onclick="agreeCanvas();">인증요청</button>
	</div>
	<input type="hidden" name="t_sexcrime">

</section>
</form>
</body>
<script>

	
	
	
	$(function(){
		_SIGNATURE.start("canvas_name", 300, 300)
	});
	
	function save (_canvas){
		var data = _SIGNATURE.getCanvas(_canvas);
		console.log("data is : " + data);
		$("input[name=t_sexcrime]").val(data);
	}
	
	function del (_canvas){
		_SIGNATURE.clearCanvas(_canvas);
	}
	
	function down (_canvas){
		_SIGNATURE.downCanvas(_canvas);
	}
	
	function done (_canvas){
		_SIGNATURE.doneCanvas(_canvas);
	}
	
	$("body").delegate(".canvas-draw-base","click", function(){
		var _canvas = $(this).data("id");
		$("canvas#" + _canvas).parents(".canvas-draw-pad-box").show();
		
		_SIGNATURE.setPreImage(_canvas);
	});

	function showDiv1() {
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
	}

</script>
</html>










