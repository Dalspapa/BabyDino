<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
<%@include file="../header.jsp" %>

=======
						  
<!DOCTYPE html>
<html>
<head>
<%@ include file="/header.jsp" %>
>>>>>>> Yeongchan
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

/*step1 css*/
h2{
    margin-top: 155px;
    text-align: center;
    font-family: 'S-Air';
}
section{
    text-align: center;
    width: 735px;
    height: 441px;
    margin-left: 592px;
    background-color: #dcdcdc;
    border-radius: 22px;
    margin-bottom: 140px;
}
section .qna{
	padding: 7px;
}
section h4{
	padding-top: 29px;
	margin-bottom: 22px;
}
section .qna .step_1{
	margin-top: 10px;
}
section .qna .step_1 .q_btn{
	text-align: center;
}
section p{
	margin-top: 78px;
    text-align: left;
    margin-left: 110px;
   	margin-bottom: 70px;
}
/*step2 css*/
.makeTdiv h2{
    text-align: center;
    font-family: 'S-Air';
}
.makeTdiv h5{
    margin-top: 18px;
}
.makeTdiv .sign{
	text-align: center;
}
</style>
</head>
<body>
<h2>필수인증</h2>
<<<<<<< HEAD
<form id="form" name="t_compulsory" action="/teacher/cert.do" method="post">
=======
<form id="form" name="t_compulsory" action="cert.do" method="post">
>>>>>>> Yeongchan
<section>
	<div id="qna">
	<div id="h_Div">
		<h4>S T E P 1</h4>
	</div>
		<div id="step_1">
			<h5>Q1. 부모님의 무리한 요구사항을 거절해야 할 때 어떻게 해야할까요?</h5>
				<p>
					<input type="radio" id="q_1_a" name="quiz1" class="quiz" value="0" checked="checked"><label for="q_1_a">망설이지 말고 단호히 거절한다.</label><br>
					<input type="radio" id="q_1_b" name="quiz1" class="quiz" value="0"><label for="q_1_b">바로 회사로 연락해 도움을 요청한다.</label><br>
					<input type="radio" id="q_1_c" name="quiz1" class="quiz" value="1"><label for="q_1_c">죄송하지만 등의 쿠션언어를 사용해 정중하고 부드럽게 거절한다.</label><br>
					<input type="radio" id="q_1_d" name="quiz1" class="quiz" value="0"><label for="q_1_d">거절이 어려우므로 그냥 일단 요청대로 한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='main.do'">포기하기</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_2" class="makeTdiv" style="width: 100%;">
			<h5>Q2. 돌봄 전날 몸이 아파요. 어떻게 해야할까요?</h5>
				<p>
					<input type="radio" id="q_2_a" name="quiz2" class="quiz" value="1" checked><label for="q_2_a">부모님께 연락해 일정 조율을 해보고 안되면 회사로 연락 후 취소한다.</label><br>
					<input type="radio" id="q_2_b" name="quiz2" class="quiz" value="0"><label for="q_2_b">약을 먹고 아침까지 기다려본다.</label><br>
					<input type="radio" id="q_2_c" name="quiz2" class="quiz" value="0"><label for="q_2_c">바로 취소 버튼을 먼저 누른다.</label><br>
					<input type="radio" id="q_2_d" name="quiz2" class="quiz" value="0"><label for="q_2_d">회사로 먼저 연락한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_3" class="makeTdiv" style="width: 100%;">
			<h5>Q3. 아이가 갑자기 놀이터로 나가자고 하면 어떻게 해야할까요?</h5>
				<p>
					<input type="radio" id="q_3_a" name="quiz3" class="quiz" value="0" checked><label for="q_3_a">안된다고 단호하게 말하고 장소를 옮기지 않는다.</label><br>
					<input type="radio" id="q_3_b" name="quiz3" class="quiz" value="0"><label for="q_3_b">아이가 원하므로 일단 간다.</label><br>
					<input type="radio" id="q_3_c" name="quiz3" class="quiz" value="0"><label for="q_3_c">집으로 들어간다.</label><br>
					<input type="radio" id="q_3_d" name="quiz3" class="quiz" value="1"><label for="q_3_d">부모님께 연락드려 장소를 옮겨도 될지 상의한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_4" class="makeTdiv" style="width: 100%;">
			<h5>Q4. 아이가 다쳤을 때 어떤 순서대로 조치해야 할까요?</h5>
				<p>
					<input type="radio" id="q_4_a" name="quiz4" class="quiz" value="0" checked><label for="q_4_a">부모님이 오시기까지 기다린다.</label><br>
					<input type="radio" id="q_4_b" name="quiz4" class="quiz" value="0"><label for="q_4_b">아이를 바로 병원으로 데리고 간다.</label><br>
					<input type="radio" id="q_4_c" name="quiz4" class="quiz" value="1"><label for="q_4_c">아이를 진정시키고 부모님께 연락한 뒤 회사로 연락한다.</label><br>
					<input type="radio" id="q_4_d" name="quiz4" class="quiz" value="0"><label for="q_4_d">회사로 바로 연락한다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_5" class="makeTdiv" style="width: 100%;">
			<h5>Q5. 돌봄 중 거절해도 되는 부모님의 요청사항은 어떤 것일까요?</h5>
				<p>
					<input type="radio" id="q_5_a" name="quiz5" class="quiz" value="0" checked><label for="q_5_a">학교에서 온 아이 얼굴과 손발을 씻겨주세요.</label><br>
					<input type="radio" id="q_5_b" name="quiz5" class="quiz" value="0"><label for="q_5_b">먹은 그릇을 씽크대에 넣어 주세요.</label><br>
					<input type="radio" id="q_5_c" name="quiz5" class="quiz" value="0"><label for="q_5_c">선생님, 해놓은 김치볶음밥 렌지에 데워서 먹여주세요.</label><br>
					<input type="radio" id="q_5_d" name="quiz5" class="quiz" value="1"><label for="q_5_d">선생님, 김치볶음밥 좀 요리해주세요.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_6" class="makeTdiv" style="width: 100%;">
				<h5>Q6. 돌봄 종료까지 10분이 남았어요. 무엇을 해야할까요?</h5>
				<p>
					<input type="radio" id="q_6_a" name="quiz6" class="quiz" value="0" checked><label for="q_6_a">부모님께 인사</label><br>
					<input type="radio" id="q_6_b" name="quiz6" class="quiz" value="0"><label for="q_6_b">집 안 구석구석 청소</label><br>
					<input type="radio" id="q_6_c" name="quiz6" class="quiz" value="1"><label for="q_6_c">아이와 함께 뒷정리</label><br>
					<input type="radio" id="q_6_d" name="quiz6" class="quiz" value="0"><label for="q_6_d">오늘 한 놀이 복습</label>
				</p>
			<div id="q_btn">
<<<<<<< HEAD
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
=======
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
>>>>>>> Yeongchan
			</div>
		</div>
		<div id="step_7" class="makeTdiv" style="width: 100%;">
			<h5>Q7. 돌봄이 끝났는데 부모님이 안방에 계세요. 어떻게 해야할까요?</h5>
				<p>
					<input type="radio" id="q_7_a" name="quiz7" class="quiz" value="0" checked><label for="q_7_a">부모님을 방해하지 않도록 인사없이 조용히 나온다.</label><br>
					<input type="radio" id="q_7_b" name="quiz7" class="quiz" value="1"><label for="q_7_b">아이의 안전을 위해 돌봄시간이 끝났음을 알리고 인사한다.</label><br>
					<input type="radio" id="q_7_c" name="quiz7" class="quiz" value="0"><label for="q_7_c">아이더러 안방에 들어가라고 하고 나온다.</label><br>
					<input type="radio" id="q_7_d" name="quiz7" class="quiz" value="0"><label for="q_7_d">인사를 해도 되고 하지 않아도 된다.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
			</div>
		</div>
		<div id="step_8" class="makeTdiv" style="width: 100%;">
			<h5>Q8. 아이가 스마트폰을 보여달라고 졸라요. 어떻게 해야할까요?</h5>
				<p>
					<input type="radio" id="q_8_a" name="quiz8" class="quiz" value="0" checked><label for="q_8_a">부모님께 바로 전화해서 보여줘도 되는지 묻는다.</label><br>
					<input type="radio" id="q_8_b" name="quiz8" class="quiz" value="0"><label for="q_8_b">선생님은 보여줄 수 없다고 단호히 말하고 혼낸다.</label><br>
					<input type="radio" id="q_8_c" name="quiz8" class="quiz" value="0"><label for="q_8_c">아이가 조르니까 일단 보여준다.</label><br>
					<input type="radio" id="q_8_d" name="quiz8" class="quiz" value="1"><label for="q_8_d">아이의 마음에 공감해주면서 다른 놀이로 관심을 유도한다.</label>
				</p>
			<div id="q_btn">
<<<<<<< HEAD
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
=======
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
>>>>>>> Yeongchan
			</div>
		</div>
		<div id="step_9" class="makeTdiv" style="width: 100%;">
			<h5>Q9. 위생적인 돌봄 필수사항이 아닌 것은 무엇인가요?</h5>
				<p>
					<input type="radio" id="q_9_a" name="quiz9" class="quiz" value="1" checked><label for="q_9_a">향수</label><br>
					<input type="radio" id="q_9_b" name="quiz9" class="quiz" value="0"><label for="q_9_b">양말</label><br>
					<input type="radio" id="q_9_c" name="quiz9" class="quiz" value="0"><label for="q_9_c">손씻기</label><br>
					<input type="radio" id="q_9_d" name="quiz9" class="quiz" value="0"><label for="q_9_d">마스크</label>
				</p>
			<div id="q_btn">
<<<<<<< HEAD
				<button type="button" class="btn btn-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-secondary nextbtn" >다음으로</button>
=======
				<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
				<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
>>>>>>> Yeongchan
			</div>
		</div>

		<div id="step_10" class="makeTdiv" style="width: 100%;">
			<h5>Q10. 아이가 갑자기 과자를 사달래요. 적절하지 않은 방법은 무엇일까요?</h5>
			<p>
				<input type="radio" id="q_10_a" name="quiz10" class="quiz" value="0" checked><label for="q_10_a">부모님과 연락이 안되면 문자로 내용을 전달한 뒤 사준다.</label><br>
				<input type="radio" id="q_10_b" name="quiz10" class="quiz" value="1"><label for="q_10_b">아이가 먹은거니, 부모님과 사전사후 연락을 하지 않아도 된다.</label><br>
				<input type="radio" id="q_10_c" name="quiz10" class="quiz" value="0"><label for="q_10_c">아이가 조른다면 부모님에게 연락해 상의한다.</label><br>
				<input type="radio" id="q_10_d" name="quiz10" class="quiz" value="0"><label for="q_10_d">추가된 비용을 돌봄 후 앱에 입력한다.</label>
			</p>
		<div id="q_btn">
			<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
			<button type="button" class="btn btn-outline-success nextbtn" >다음으로</button>
		</div>
		</div>
<<<<<<< HEAD
=======
		</div>  
>>>>>>> Yeongchan
</section>
<section id="step_11" class="makeTdiv" style="width: 39%;">
	<div>
		<h4>S T E P 2</h4>
		<div>
			<h5>등본 등록</h5>
			<input type="file" id="t_copy" name="t_copy" class="form-control"/>
		</div>
<<<<<<< HEAD
		<div>
			<h3>동의 서명</h3>
=======
		<div class="sign">
			<h5>동의 서명</h5>
>>>>>>> Yeongchan
			<div class="canvas-draw-box">
				<div class="canvas-draw-base" data-id="canvas_name"></div>
					<div class="canvas-draw-pad-box">
					<canvas id="canvas_name" class="canvas-draw-pad">1. 사용중인 브라우저에서 지원하지 못합니다.</canvas>
					<div>
						<!-- <button type="button" class="btn btn-secondary" onclick="javascript:save('canvas_name')">저장하기</button>
						<button type="button" class="btn btn-secondary" onclick="javascript:down('canvas_name')">다운로드</button> -->
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:del('canvas_name')">다시하기</button>
						<button type="button" class="btn btn-outline-success" onclick="javascript:done('canvas_name')">완료</button>
					</div>
				</div>
			</div>
		</div>
		<div style="padding-top:200px;">
			<button type="button" class="btn btn-outline-secondary prevbtn" >이전으로</button>
			<button type="button" class="btn btn-outline-success" id="reqAgree">인증요청</button>
		</div>
		<input type="hidden" name="t_sexcrime">
	</div>
</section>
</form>
</body>
<<<<<<< HEAD
<%@include file="../footer.jsp" %>

  <!-- custome js -->
  <script src="./common/js/bootstrap.min.js"></script>

  	<script>


	$(document).ready(function (){

=======
<%@include file="/footer.jsp" %>
  	<script>
  	
  	$(document).ready(function (){
>>>>>>> Yeongchan

		let name = 'step_';
		let count = 1;
		let dName = name + count;

		this.count = count;

		$('.makeTdiv').hide();

		$('.nextbtn').click(function (){
			$('#'+dName).hide();
			count++;
			dName = name + count;
			$('#'+dName).show();
			console.log("화면 count "+count);
		});

		$('.prevbtn').click(function(){

			$('#'+dName).hide();
			count--;
			dName = name + count;
			$('#'+dName).show();
			console.log("이전화면count2=====" + count);
		});

		//인증요청 버튼 클릭
	 	$('#reqAgree').click(function(){
	 		var rst = fnCertValidation();
	 		if(rst){
    	 		fnCert();
	 		}
	 	});
<<<<<<< HEAD

	});





=======

	});
	
>>>>>>> Yeongchan
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

	function fnCertValidation(){

		var rst = true;

        let imgFile = $('#t_copy').val();
        let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif|JPG|JPEG|PNG|GIF|BMP|PDF|JFIF)$/gi;

        if( imgFile == ""){
            alert('이미지 첨부는 필수입니다.');
            $('#t_copy').focus();
            rst = false;
        }
        if(imgFile != "" && imgFile != null){
            if(!imgFile.match(fileForm)){
                alert('이미지 파일만 등록 가등합니다.');
                rst = false;
            }
        }

        //정답:1 오답:0
        let answer = 0;
        for(var i = 1; i < 11; i++) {
            if($("input[name='quiz" + i + "']:checked").val() == 1) {
                answer++;
            }
        }

<<<<<<< HEAD
//         if(answer < 8){
//         	alert("인증점수가 미달되어 처음으로 돌아갑니다.");
//             $('.makeTdiv').hide();
//             $('#step_1').show();
//             name = 'step_';
//             count = 1;
//             dName = name + count;

//             $('.makeTdiv').hide();

//             console.log("검증count2B"+count);
//             rst = false;
//         }

=======
        if(answer < 8){
         	alert("인증점수가 미달되어 처음으로 돌아갑니다.");
             $('.makeTdiv').hide();
             $('#step_1').show();
             name = 'step_';
             count = 1;
             dName = name + count;

             $('.makeTdiv').hide();

             console.log("검증count2B"+count);
             rst = false;
        }
>>>>>>> Yeongchan

        return rst;
	}

	function fnCert(){
		$("#form").submit();
	}
<<<<<<< HEAD

=======
>>>>>>> Yeongchan
	</script>

</html>











