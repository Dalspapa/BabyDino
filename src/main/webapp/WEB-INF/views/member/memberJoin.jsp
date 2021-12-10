<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@include file="/header.jsp" %>
</head>
<style>
section{
	margin-top: 150px;
    text-align: center;
}
section .title{
	font-family: 'S-Air';
    font-size: 30px;
    margin-bottom: 10px;
}
table tr th {
	vertical-align: middle;
}
table .phone{
	float: left;
}
.btn{
	margin-top: 10px;
}
/*section2 부분*/
#step2 {
    border: 1px solid gray;
    width: 1350px;
    height: 678px;
    margin-bottom: 22px;
    margin-left: 274px;
	
}
.btn2{
	text-align: center;
	margin-bottom: 85px;
}

</style>
<body>
   <div id="step1">
      <h1>사용하실 아이디와 비밀번호를 입력해주세요.</h1>
      <!-- 회원가입 폼 -->
      <section>
		 <div class="title">회원가입</div>
         <!-- <form name="memberJoinForm" action="joinMember.do" method="post" onsubmit="return checkAll()"> -->
         <form name="memberJoinForm">
            <div class="card" style="width: 70%; margin: 0 auto;">
               <div class="card-body">
                  <h5 class="card-title">사용하실 아이디와 비밀번호를 입력해주세요.</h5>
                  <table class="table">
                     <colgroup width="20%"/>
                     <colgroup width="80%"/>
                     <thead></thead>
                     <tbody>
                        <tr>
                           <th>아이디</th>
                           <td>
                              <div class="d-flex">
                                 <input id="id" name="id" type="text" class="input_id form-control form-control-sm w-50" style="margin-right: 4px;" placeholder="영문 또는 숫자 6~20자리를 입력해주세요." size="20" autocomplete="off" />
                                 <button type="button" class="btn btn-sm btn-outline-success" style="margin-right: 4px" onclick="idCheck()">중복확인</button>
                                 <span id="checkId" style="display: flex; align-item: center;"></span>
                              </div>
                              
                           </td>
                        </tr>
                        <tr>
                           <th>비밀번호</th>
                           <td>
                              <input id="pwd" type="password" class="form-control form-control-sm w-50" name="pwd" placeholder="6자리 이상 입력해주세요." autocomplete="off" onkeyup="pwdEqual()" />
                           </td>
                        </tr>
                        <tr>
                           <th>비밀번호 확인</th>
                           <td>
                              <input id="pwdCheck" type="password" class="form-control form-control-sm w-50" placeholder="비밀번호를 다시 입력해주세요." width="100" autocomplete="off" onkeyup="pwdEqual()"/>
                              <span id="msg"></span>
                           </td>
                        </tr>
                        <tr>
                           <th>이름</th>
                           <td>
                              <input id="name" type="text" class="form-control form-control-sm w-50" name="name" width="100" autocomplete="off" />
                           </td>
                        </tr>
                        <tr>
                           <th>성별</th>
                           <td>
                              <div class="d-flex" style="align-items: center;">
                                 <input type="radio" name="gender" id="female" value="1" style="margin-right: 2px;" autocomplete="off" width="100" />
                                 <label for="female" style="margin-right: 12px;">여성</label>
                                 <input type="radio" name="gender" id="male" value="2" style="margin-right: 2px;" autocomplete="off" width="100" />
                                 <label for="male">남성</label>
                                 <span id="genderWarning" class="text-danger" style="margin-left: 12px;"></span>
                              </div>
                           </td>
                        </tr>
                        <tr>
                           <th>생일</th>
                           <td>
                              <input id="birth" type="date" class="form-control form-control-sm w-50" autocomplete="off" name="birth" width="100" />
                           </td>
                        </tr>
                        <tr>
                           <th>주소</th>
                           <td>
                              <div class="d-flex">
                                 <input id="addr1" type="text" name="addr1" class="form-control form-control-sm w-50" style="margin-right: 4px; background-color: #ffffff;" autocomplete="off" readonly />
                                 <button type="button" class="btn btn-sm btn-outline-primary" onclick="kakaopost()">주소찾기</button>
                              </div>
                              <div class="d-flex">
                                 <input id="addr2" type="text" name="addr2" class="form-control form-control-sm w-50" style="margin-right: 4px; background-color: #ffffff;" autocomplete="off" readonly />
                              </div>
                           </td>
                        </tr>
                        <tr>
                           <th>상세주소</th>
                           <td>
                              <input id="addr3" type="text" name="addr3" class="form-control form-control-sm w-50" autocomplete="off" placeholder="상세주소 입력" />
                           </td>
                        </tr>
                        <tr>
                           <th rowspan="2">전화번호</th>
                           <td>
                              <div class="d-flex">
                                 <input id="tel" type="text" name="tel" class="form-control form-control-sm w-50" style="margin-right: 4px;" autocomplete="off" width="100" />
                                 <!-- 문자인증하기 --> 
                                  <button id="phoneChk" class="doubleChk btn btn-sm btn-outline-primary" type="button">인증번호 보내기</button>
                              </div>
                              
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <div class="d-flex">
                                 <input id="phone2" class="form-control form-control-sm w-50" style="margin-right: 4px;" type="text" name="phone2" title="인증번호 입력"/> 
                                  <button id="phoneChk2" class="doubleChk btn btn-sm btn-outline-primary d-none" type="button">본인인증</button> 
                               </div>
                              <div class="phone">
                                  <span class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span>
                                  <input type="hidden" id="phoneDoubleChk"/> 
                                  <p class="tip"> 최초 가입 시에만 사용하고 있습니다. 따로 저장되지 않습니다.(번호만 입력해주세요.) </p>
                              </div>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
            
                  
            <!-- 멤버타입 부모님(2), 선생님(4) -->
            <input type="hidden" id="type" name="member_type" value="${param.member_type }" />
            
            <div class="btn">
               <button type="button" class="btn btn-outline-success" onclick="regMember()">다음으로</button>
            </div>
         </form>
      </section>
   </div>
   
   <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
   
   <div id="step2">
      <!-- 약관동의 폼-->
      <section>
         <div>
            <div class="title">아기공룡 서비스 이용 동의</div>
            <div>
               <h4>< 아기공룡 서비스 운영정책 ></h4>
               <p>
                  아기공룡은 회원분들이 다양한 정보와 기술로 더 좋은 아이돌보미 또는 일자리(부모)를 찾고 연락하실 수 있도록 정보를
                  제공하는 구인구직 플랫폼입니다. <br> 본 서비스에 가입된 회원분들은 (주)아기공룡에 채용되거나 교육된
                  인력들이 아니고, 선생님회원과 부모회원 간의 계약을 소개/알선하지 않으므로,<br> <span
                     style="color: red;">(주)아기공룡은 선생님회원과 부모회원 간에 발생하는 모든 문제에 대한
                     책임이 없음을 알려드립니다.</span>
               </p>
            </div>
            <div>
               <h4>< 맘시터 회원의 의무 ></h4>
               <p>
				  
                  모든 회원은 자신에게 적합한 선생님 또는 일자리(부모)를 선택하여, 서로 합의한 계약조건 또는 관련 법에 의거하여
                  성실하게 활동해야 합니다. <br> <span style="color: red;">상호간 합의한
                     내용을 사전 조율없이 일방적으로 해지 통보할 경우, 서비스 이용약관에 따라 강제 탈퇴조치 될 수 있음을 알려드립니다.</span>
               </p>
            </div>
            <div>
               <input id="check-all" type="checkbox" class="form-check-input" class="form-check-input" /> <strong>전체동의</strong>
            </div>

            <div>
               <div style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
                  <input name="bt1" class="btn" type="checkbox" value="checkbox" class="form-check-input" /> 
                  <span> 서비스 운영정책 및 회원의 의무 동의 (필수)</span>
               </div>

               <div style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
                  <input name="bt2" class="btn" type="checkbox" value="checkbox" class="form-check-input" /> 
                  <span> 서비스 이용약관 동의 (필수)</span>
               </div>

               <div style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
                  <input name="bt3" class="btn" type="checkbox" value="checkbox" class="form-check-input" /> 
                  <span> 개인정보 수집 및 이용에 관한 동의 (필수)</span>
               </div>

               <div style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
                  <input name="bt4" class="btn" type="checkbox" value="checkbox" class="form-check-input" /> 
                  <span> 개인정보 제3자 제공에 관한 동의 (필수)</span>
               </div>
            </div>

            <div class="btn">
               <button type="submit" class="btn btn-outline-success">다음으로</button>
            </div>

         </div>
      </section>
   </div>
		<div class="btn2">
			<button type="submit" class="btn btn-outline-success">다음으로</button>
		</div>
</body>
<%@include file="/footer.jsp" %>
<!-- 카카오 주소 API -->
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

   // 중복검사 버튼 누른지 확인
   var idCheckBtn = false;

	// 회원가입 api 호출
	function regMember() {
		
		var id 		 = $("#id");
		var pwd 	 = $("#pwd");
		var pwdCheck = $("#pwdCheck");
		var name	 = $("#name");
		var gender	 = $("input[name=gender]");
		var birth	 = $("#birth");
		var addr1 	 = $("#addr1");
		var addr2 	 = $("#addr2");
		var addr3 	 = $("#addr3");
		var tel	 	 = $("#tel");
		var phone2	 = $("#phone2");
		
		var ID_VALID 	   	= false;
		var PWD_VALID	   	= false;
		var PWDCHECK_VALID 	= false;
		var NAME_VALID 	   	= false;
		var GENDER_VALID   	= false;
		var BIRTH_VALID    	= false;
		var ADDRESS1_VALID  = false;
		var ADDRESS2_VALID  = false;
		var ADDRESS3_VALID  = false;
		var TEL_VALID      	= false;
		var PHONE2_VALID   	= false;
		
		// id 유효성 검사
		if(id.val().trim().length == 0) {
				$("#id").addClass('is-invalid');
				$("#id").removeClass('is-valid');
				ID_VALID = false;
		} else {
				$("#id").removeClass('is-invalid');
				$("#id").addClass('is-valid');
				ID_VALID = true;
		}
		
		// pwd 유효성검사
		if(pwd.val().trim().length < 6) {
				$("#pwd").addClass('is-invalid');
				$("#pwd").removeClass('is-valid');
				PWD_VALID = false;
		} else {
				$("#pwd").removeClass('is-invalid');
				$("#pwd").addClass('is-valid');
				PWD_VALID = true;
		}
		
		// pwdCheck 유효성검사
		if(pwdCheck.val() != pwd.val() || pwdCheck.val().trim().length == 0 ) {
				$("#pwdCheck").addClass('is-invalid');
				$("#pwdCheck").removeClass('is-valid');
				PWDCHECK_VALID = false;
		} else {
				$("#pwdCheck").removeClass('is-invalid');
				$("#pwdCheck").addClass('is-valid');
				PWDCHECK_VALID = true;
		}
		
		// name 유효성검사
		if(name.val().trim().length < 6) {
				$("#name").addClass('is-invalid');
				$("#name").removeClass('is-valid');
				NAME_VALID = false;
		} else {
				$("#name").removeClass('is-invalid');
				$("#name").addClass('is-valid');
				NAME_VALID = true;
		}
		
		// name 유효성검사
		if(name.val().trim().length == 0) {
				$("#name").addClass('is-invalid');
				$("#name").removeClass('is-valid');
				NAME_VALID = false;
		} else {
				$("#name").removeClass('is-invalid');
				$("#name").addClass('is-valid');
				NAME_VALID = true;
		}
		
		// 성별 유효성 검사
		if($("input[name='gender']:checked").val() == undefined) {
			$("#genderWarning").text('성별을 선택해주세요');
			GENDER_VALID = false;
		} else {
			$("#genderWarning").text('');
			GENDER_VALID = true;
		}
		
		// 생일 유효성 검사
		if( $("#birth").val() == '') {
				$("#birth").addClass('is-invalid');
				$("#birth").removeClass('is-valid');
				BIRTH_VALID = false;
		} else {
				$("#birth").removeClass('is-invalid');
				$("#birth").addClass('is-valid');
				BIRTH_VALID = true;
		}
		
		// 주소1 유효성 검사
		if( $("#addr1").val() == '') {
				$("#addr1").addClass('is-invalid');
				$("#addr1").removeClass('is-valid');
				ADDRESS1_VALID = false;
		} else {
				$("#addr1").removeClass('is-invalid');
				$("#addr1").addClass('is-valid');
				ADDRESS1_VALID = true;
		}
		
		// 주소2 유효성 검사
		if( $("#addr2").val() == '') {
				$("#addr2").addClass('is-invalid');
				$("#addr2").removeClass('is-valid');
				ADDRESS2_VALID = false;
		} else {
				$("#addr2").removeClass('is-invalid');
				$("#addr2").addClass('is-valid');
				ADDRESS2_VALID = true;
		}
		
		// 상세주소 유효성검사
		if(addr3.val().trim().length == 0) {
				$("#addr3").addClass('is-invalid');
				$("#addr3").removeClass('is-valid');
				ADDRESS3_VALID = false;
		} else {
				$("#addr3").removeClass('is-invalid');
				$("#addr3").addClass('is-valid');
				ADDRESS3_VALID = true;
		}
		
		// 전화번호 유효성 검사
		if(tel.val().trim().length == 0) {
				$("#tel").addClass('is-invalid');
				$("#tel").removeClass('is-valid');
				TEL_VALID = false;
		} else {
				$("#tel").removeClass('is-invalid');
				$("#tel").addClass('is-valid');
				TEL_VALID = true;
		}
		
		// 전화번호 본인인증 유효성 검사
		if(phone2.val().trim().length == 0) {
				$("#phone2").addClass('is-invalid');
				$("#phone2").removeClass('is-valid');
				PHONE2_VALID = false;
		} else {
				$("#phone2").removeClass('is-invalid');
				$("#phone2").addClass('is-valid');
				PHONE2_VALID = true;
		}
		
		// 유효성 전체 검사 하나라도 false면 못넘어감
		if(!ID_VALID || !PWD_VALID || !PWDCHECK_VALID || !NAME_VALID || !GENDER_VALID || !BIRTH_VALID
				|| !ADDRESS1_VALID || !ADDRESS2_VALID || !ADDRESS3_VALID|| !TEL_VALID || !PHONE2_VALID) {
			return false;
		}
		
		console.log("--- api 호출해야됨");
		
		
		if(!idCheckBtn){
			$("#checkId").html('중복버튼클릭X.');
        	$("#checkId").css('color', '#ff0000');
        	return false;
		}
		
		var formData = new FormData();
		
		formData.set("id", $("#id").val());
		formData.set("pwd", $("#pwd").val());
		formData.set("name", $("#name").val());
		formData.set("gender", $("input[name='gender']:checked").val());
		formData.set("birth", $("#birth").val().replaceAll('-',''));
		formData.set("addr1", $("#addr1").val());
		formData.set("addr2", $("#addr2").val());
		formData.set("addr3", $("#addr3").val());
		formData.set("tel", $("#tel").val());
		formData.set("memberType", $("#type").val());
		
		formData.forEach(function(value ,key) {
			console.log(key, value);	
		})
		
		$.ajax({
            url : 'joinMember.do', 	//Controller에서 인식할 주소
            type : 'post', 			//POST 방식으로 전달
            data : formData, 		//id가 key userId가 밸류값
            processData: false,
            contentType: false,
            success : function(r) {
               if(r.result > 0) {
                  alert('회원가입이 완료되었습니다.');
                  location.href= 'main.do';
               } else {
                  alert("회원가입중 오류가 발생했습니다.\n잠시 후 다시 시도해주세요.");
               }
            },
            error:function(){
                alert("회원가입중 오류가 발생했습니다.\n잠시 후 다시 시도해주세요.");
            }
        })
      
   }
   
   //아이디 중복 체크
   function idCheck() {
      let userId = $('.input_id').val(); //input 태그의 class 명의 value 값
      
      // 아이디 값 없을 시 이벤트
      if(userId.length == 0) {      // input값 value의 길이가 0일때
         $("#checkId").html('아이디를 입력해주세요.');
           $("#checkId").css('color', '#ff0000');
           
           return false;   // 해당 idCheck()함수 멈춤
      };
      
      $.ajax({
            url : 'idCheck.do', //Controller에서 인식할 주소
            type : 'post', //POST 방식으로 전달
            data : {id: userId}, //id가 key userId가 밸류값
            dataType : 'json',
            success : function(result){
               console.log('--- result : ', result);
                if(result == 0){
                   idCheckBtn = true;
                   $("#checkId").html('사용할 수 있는 아이디 입니다.');
                   $("#checkId").css('color', '#00ff00');
                }else{
                   $("#checkId").html('사용할 수 없는 아이디 입니다.');
                   $("#checkId").css('color', '#ff0000');
                }
            },
            error:function(){
                alert("에러입니다");
            }
        })
    };
   
   //비밀번호 일치 확인 체크
    function pwdEqual() {
      
      var pwd = document.getElementById('pwd');         // 비밀번호 
      var pwdok = document.getElementById('pwdCheck');   // 비밀번호 확인 값
      var msg = document.getElementById('msg');         // 확인 메세지
      var okColor = "#00ff00";                     // 맞았을 때 출력되는 색깔.
      var noColor ="#ff0000";                        // 틀렸을 때 출력되는 색깔
      
      if(pwd.value == pwdok.value){                  // pwd 변수의 값과 pwdok 변수의 값과 동일하다.
         msg.style.color = okColor;                  // span 태그의 ID(msg) 사용 
         msg.innerHTML ="비밀번호 일치";                  // innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것.
      }else {
         msg.style.color = noColor;
         msg.innerHTML ="비밀번호 불일치";
      }
   }  

   //카카오 주소 api
   function kakaopost() {
      new daum.Postcode({
         oncomplete : function(data) {
            
            var addr2 = "";
            
            if(data.userSelectedType == 'R'){
               addr2 = data.jibunAddress;
            }else {
               addr2 = data.jibunAddress;
            }
            
            console.log("--- data : ", data);
            document.getElementById("addr1").value = data.zonecode
            document.getElementById("addr2").value = addr2
         }
      }).open();
   }
   
   //휴대폰 번호 인증 
      var code2 = ""; 
   
      $("#phoneChk").click( function(){ 
         if($("#tel").val().trim().length == 0) {
            alert("핸드폰 번호를 입력해주세요.")
            return false;
         }
         // alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오."); 
   
         $("#phoneChk2").removeClass('d-none');
         
         
         var phone = $("#tel").val();
         
         $.ajax({ 
         type:"GET", 
         url:"phoneCheck.do?phone=" + phone, 
         cache : false, 
         
         success : function(data){ 
            
            if(data == "error"){ 
               alert("휴대폰 번호가 올바르지 않습니다.") 
                  $(".successPhoneChk").text("유효한 번호를 입력해주세요."); 
                  $(".successPhoneChk").css("color","red"); 
                  $("#phone").attr("autofocus",true); 
            
            }else{ 
                  $("#phone2").attr("disabled",false); 
                  $("#phoneChk2").css("display","inline-block"); 
                  $(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오."); 
                  $(".successPhoneChk").css("color","green"); 
                  $("#phone").attr("readonly",true); 
                  code2 = data; 
               }
             }
          }); 
      });
      
   //휴대폰 인증번호 대조 
      $("#phoneChk2").click( function(){
         
         if($("#phone2").val() == code2){ 
            $(".successPhoneChk").text("인증번호가 일치합니다."); 
            $(".successPhoneChk").css("color","green"); 
            $("#phoneDoubleChk").val("true"); 
            $("#phone2").attr("disabled",true); 
         
         }else{ 
            $(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다."); 
            $(".successPhoneChk").css("color","red"); 
            $("#phoneDoubleChk").val("false"); 
            $(this).attr("autofocus",true); 
         }
      });

   //전체 버튼 선택하기
   $(document).ready( function(){
      $('#check-all').click( function(){
         $('.btn').prop('checked', this.checked);
      })
   })
</script>
</html>