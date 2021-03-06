<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script src="common/js/signature_draw.js"></script>

<style>
.canvas-draw-box {
	position: relative;
}

.canvas-draw-base {
	border: 1px solid black;
	width: 100%;
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
<h2>????????????</h2>
<form id="form" name="t_compulsory" action="cert.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="d_member_idx" value="${sidx}">
<section>	
	<div id="h_Div">
		<h4>S T E P 1</h4>
	</div>
		<div id="step_1">
			<h5>Q1. ???????????? ????????? ??????????????? ???????????? ??? ??? ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_1_a" name="quiz1" class="quiz" value="0" checked="checked"><label for="q_1_a">???????????? ?????? ????????? ????????????.</label><br>
					<input type="radio" id="q_1_b" name="quiz1" class="quiz" value="0"><label for="q_1_b">?????? ????????? ????????? ????????? ????????????.</label><br>
					<input type="radio" id="q_1_c" name="quiz1" class="quiz" value="1"><label for="q_1_c">??????????????? ?????? ??????????????? ????????? ???????????? ???????????? ????????????.</label><br>
					<input type="radio" id="q_1_d" name="quiz1" class="quiz" value="0"><label for="q_1_d">????????? ??????????????? ?????? ?????? ???????????? ??????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='main.do'">????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_2" class="makeTdiv" style="width: 100%;">
			<h5>Q2. ?????? ?????? ?????? ?????????. ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_2_a" name="quiz2" class="quiz" value="1" checked><label for="q_2_a">???????????? ????????? ?????? ????????? ????????? ????????? ????????? ?????? ??? ????????????.</label><br>
					<input type="radio" id="q_2_b" name="quiz2" class="quiz" value="0"><label for="q_2_b">?????? ?????? ???????????? ???????????????.</label><br>
					<input type="radio" id="q_2_c" name="quiz2" class="quiz" value="0"><label for="q_2_c">?????? ?????? ????????? ?????? ?????????.</label><br>
					<input type="radio" id="q_2_d" name="quiz2" class="quiz" value="0"><label for="q_2_d">????????? ?????? ????????????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_3" class="makeTdiv" style="width: 100%;">
			<h5>Q3. ????????? ????????? ???????????? ???????????? ?????? ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_3_a" name="quiz3" class="quiz" value="0" checked><label for="q_3_a">???????????? ???????????? ????????? ????????? ????????? ?????????.</label><br>
					<input type="radio" id="q_3_b" name="quiz3" class="quiz" value="0"><label for="q_3_b">????????? ???????????? ?????? ??????.</label><br>
					<input type="radio" id="q_3_c" name="quiz3" class="quiz" value="0"><label for="q_3_c">????????? ????????????.</label><br>
					<input type="radio" id="q_3_d" name="quiz3" class="quiz" value="1"><label for="q_3_d">???????????? ???????????? ????????? ????????? ?????? ????????????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_4" class="makeTdiv" style="width: 100%;">
			<h5>Q4. ????????? ????????? ??? ?????? ???????????? ???????????? ??????????</h5>
				<p>
					<input type="radio" id="q_4_a" name="quiz4" class="quiz" value="0" checked><label for="q_4_a">???????????? ??????????????? ????????????.</label><br>
					<input type="radio" id="q_4_b" name="quiz4" class="quiz" value="0"><label for="q_4_b">????????? ?????? ???????????? ????????? ??????.</label><br>
					<input type="radio" id="q_4_c" name="quiz4" class="quiz" value="1"><label for="q_4_c">????????? ??????????????? ???????????? ????????? ??? ????????? ????????????.</label><br>
					<input type="radio" id="q_4_d" name="quiz4" class="quiz" value="0"><label for="q_4_d">????????? ?????? ????????????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_5" class="makeTdiv" style="width: 100%;">
			<h5>Q5. ?????? ??? ???????????? ?????? ???????????? ??????????????? ?????? ?????????????</h5>
				<p>
					<input type="radio" id="q_5_a" name="quiz5" class="quiz" value="0" checked><label for="q_5_a">???????????? ??? ?????? ????????? ????????? ???????????????.</label><br>
					<input type="radio" id="q_5_b" name="quiz5" class="quiz" value="0"><label for="q_5_b">?????? ????????? ???????????? ?????? ?????????.</label><br>
					<input type="radio" id="q_5_c" name="quiz5" class="quiz" value="0"><label for="q_5_c">?????????, ????????? ??????????????? ????????? ????????? ???????????????.</label><br>
					<input type="radio" id="q_5_d" name="quiz5" class="quiz" value="1"><label for="q_5_d">?????????, ??????????????? ??? ??????????????????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_6" class="makeTdiv" style="width: 100%;">
				<h5>Q6. ?????? ???????????? 10?????? ????????????. ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_6_a" name="quiz6" class="quiz" value="0" checked><label for="q_6_a">???????????? ??????</label><br>
					<input type="radio" id="q_6_b" name="quiz6" class="quiz" value="0"><label for="q_6_b">??? ??? ???????????? ??????</label><br>
					<input type="radio" id="q_6_c" name="quiz6" class="quiz" value="1"><label for="q_6_c">????????? ?????? ?????????</label><br>
					<input type="radio" id="q_6_d" name="quiz6" class="quiz" value="0"><label for="q_6_d">?????? ??? ?????? ??????</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_7" class="makeTdiv" style="width: 100%;">
			<h5>Q7. ????????? ???????????? ???????????? ????????? ?????????. ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_7_a" name="quiz7" class="quiz" value="0" checked><label for="q_7_a">???????????? ???????????? ????????? ???????????? ????????? ?????????.</label><br>
					<input type="radio" id="q_7_b" name="quiz7" class="quiz" value="1"><label for="q_7_b">????????? ????????? ?????? ??????????????? ???????????? ????????? ????????????.</label><br>
					<input type="radio" id="q_7_c" name="quiz7" class="quiz" value="0"><label for="q_7_c">???????????? ????????? ??????????????? ?????? ?????????.</label><br>
					<input type="radio" id="q_7_d" name="quiz7" class="quiz" value="0"><label for="q_7_d">????????? ?????? ?????? ?????? ????????? ??????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_8" class="makeTdiv" style="width: 100%;">
			<h5>Q8. ????????? ??????????????? ??????????????? ?????????. ????????? ????????????????</h5>
				<p>
					<input type="radio" id="q_8_a" name="quiz8" class="quiz" value="0" checked><label for="q_8_a">???????????? ?????? ???????????? ???????????? ????????? ?????????.</label><br>
					<input type="radio" id="q_8_b" name="quiz8" class="quiz" value="0"><label for="q_8_b">???????????? ????????? ??? ????????? ????????? ????????? ?????????.</label><br>
					<input type="radio" id="q_8_c" name="quiz8" class="quiz" value="0"><label for="q_8_c">????????? ???????????? ?????? ????????????.</label><br>
					<input type="radio" id="q_8_d" name="quiz8" class="quiz" value="1"><label for="q_8_d">????????? ????????? ?????????????????? ?????? ????????? ????????? ????????????.</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>
		<div id="step_9" class="makeTdiv" style="width: 100%;">
			<h5>Q9. ???????????? ?????? ??????????????? ?????? ?????? ????????????????</h5>
				<p>
					<input type="radio" id="q_9_a" name="quiz9" class="quiz" value="1" checked><label for="q_9_a">??????</label><br>
					<input type="radio" id="q_9_b" name="quiz9" class="quiz" value="0"><label for="q_9_b">??????</label><br>
					<input type="radio" id="q_9_c" name="quiz9" class="quiz" value="0"><label for="q_9_c">?????????</label><br>
					<input type="radio" id="q_9_d" name="quiz9" class="quiz" value="0"><label for="q_9_d">?????????</label>
				</p>
			<div id="q_btn">
				<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
				<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
			</div>
		</div>

		<div id="step_10" class="makeTdiv" style="width: 100%;">
			<h5>Q10. ????????? ????????? ????????? ????????????. ???????????? ?????? ????????? ????????????????</h5>
			<p>
				<input type="radio" id="q_10_a" name="quiz10" class="quiz" value="0" checked><label for="q_10_a">???????????? ????????? ????????? ????????? ????????? ????????? ??? ?????????.</label><br>
				<input type="radio" id="q_10_b" name="quiz10" class="quiz" value="1"><label for="q_10_b">????????? ????????????, ???????????? ???????????? ????????? ?????? ????????? ??????.</label><br>
				<input type="radio" id="q_10_c" name="quiz10" class="quiz" value="0"><label for="q_10_c">????????? ???????????? ??????????????? ????????? ????????????.</label><br>
				<input type="radio" id="q_10_d" name="quiz10" class="quiz" value="0"><label for="q_10_d">????????? ????????? ?????? ??? ?????? ????????????.</label>
			</p>
		<div id="q_btn">
			<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
			<button type="button" class="btn btn-outline-success nextbtn" >????????????</button>
		</div>
		</div>
</section>
<section id="step_11" class="makeTdiv" style="width: 39%;">
	<div>
		<h4>S T E P 2</h4>
		<div>
			<h5>?????? ??????</h5>
			<input type="file" id="t_copy" name="imgpath" class="form-control"/>
		</div>
		<div class="sign">
			<h5>?????? ??????</h5>
			<div class="canvas-draw-box">
				<div class="canvas-draw-base" data-id="canvas_name" id="canvas"></div>
					<div class="canvas-draw-pad-box">
					<canvas id="canvas_name" class="canvas-draw-pad" name="crimeagree" value="???????????????.">1. ???????????? ?????????????????? ???????????? ????????????.</canvas>
					<div>
						<!-- <button type="button" class="btn btn-secondary" onclick="javascript:save('canvas_name')">????????????</button>
						<button type="button" class="btn btn-secondary" onclick="javascript:down('canvas_name')">????????????</button> -->
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:del('canvas_name')">????????????</button>
						<button type="button" class="btn btn-outline-success" onclick="javascript:done('canvas_name')">??????</button>
					</div>
				</div>
			</div>
		</div>
		<div style="padding-top:80px;">
			<button type="button" class="btn btn-outline-secondary prevbtn" >????????????</button>
			<button type="button" class="btn btn-outline-success" id="reqAgree">????????????</button>
		</div>
		<input type="hidden" name="t_sexcrime">
	</div>
</section>
</form>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  	<script>
  	
  	let name = 'step_';
	let count = 1;
	let dName = name + count;
  	
  	$(document).ready(function (){

		this.count = count;

		$('.makeTdiv').hide();

		$('.nextbtn').click(function (){
			$('#'+dName).hide();
			count++;
			dName = name + count;
			$('#'+dName).show();
			console.log("?????? count "+count);
		});

		$('.prevbtn').click(function(){

			$('#'+dName).hide();
			count--;
			dName = name + count;
			$('#'+dName).show();
			console.log("????????????count2=====" + count);
		});

		//???????????? ?????? ??????
	 	$('#reqAgree').click(function(){
	 		console.log('hello');
	 		var rst = fnCertValidation();
	 		if(rst){
    	 		fnCert();
	 		}
	 	});
	});	

	function fnCertValidation(){

	 	var rst = true;

        let imgFile = $('#t_copy').val();
        let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif|JPG|JPEG|PNG|GIF|BMP|PDF|JFIF)$/gi;

        if( imgFile == ""){
            alert('????????? ????????? ???????????????.');
            $('#t_copy').focus();
            rst = false;
        }
        if(imgFile != "" && imgFile != null){
            if(!imgFile.match(fileForm)){
                alert('????????? ????????? ?????? ???????????????.');
                rst = false;
            }
        }

        //??????:1 ??????:0
        let answer = 0;
        for(var i = 1; i < 11; i++) {
            if($("input[name='quiz" + i + "']:checked").val() == 1) {
                answer++;
            }
        }
        
/*         let img = document.getElementById('canvas'),
		style = img.currentStyle || window.getComputedStyle(img, false),
		bi = style.backgroundImage.slice(4, -1).replace(/"/g, "");		
		console.log('--------img'+img);
		if(bi.length == 0) {
			alert('????????? ?????? ????????? ???????????? ??????????????? ?????? ????????????.');			
		 	count = 10;
			dName = name + count;
			console.log('------r--'+bi) 
			return false;
		} else {
			$('#crimeAgree').val('???????????????.');			
		} */
        
        if(answer < 8){
         	alert("??????????????? ???????????? ???????????? ???????????????.");
             $('.makeTdiv').hide();
             $('#step_1').show();
             name = 'step_';
             count = 1;
             dName = name + count;
			 
             $('.makeTdiv').hide();

             console.log("??????count2B"+count);
             rst = false;
             
        }
        		
        return rst;
	}

	function fnCert(){

		$("#form").submit();

	}
	
	$(function(){
		_SIGNATURE.start("canvas_name", 300, 300)
	});
/* 	?????? ??????
	function save (_canvas){
		var data = _SIGNATURE.getCanvas(_canvas);
		console.log("data is : " + data);
		$("input[name=t_sexcrime]").val(data);
	} */

	function del (_canvas){
		_SIGNATURE.clearCanvas(_canvas);
	}
/* 	?????? ????????????
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

	</script>

</html>











