<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
.UeASB {
	padding: 15px 20px;
	background-color: #f3f3f3;
}

.UjHkE .inputBlock {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	margin-top: 9px;
	width: 100%;
	height: 50px;
	border-radius: 4px;
	border: 1px solid rgb(221, 221, 221);
	background-color: rgb(255, 255, 255);
	padding: 13px;
	font-size: 14px;
	font-weight: 500;
	font-style: normal;
	color: rgb(0, 0, 0);
}

.UjHkE .inputBlock .birthday {
	position: relative;
	width: calc(50% - 20px);
	height: 100%;
}

.UjHkE .inputBlock .birthday .dotBlock {
	position: absolute;
	top: 0px;
	left: 7px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	width: 112px;
	height: 100%;
}

.kACyfJ {
	width: 7px;
	height: 7px;
	background-color: rgb(223, 223, 223);
	border-radius: 50%;
	margin-right: 11px;
	visibility: visible;
}
</style>
</head>
<body>
<form name="memberJoinForm" action="memberJoin.do" method="post"> 
	<div id="step1">
		<h1>사용하실 아이디와 비밀번호를 입력해주세요.</h1>
		<!-- 회원가입 폼 -->
		
			<section>

				<div>
					<label for="id">아이디 </label>
					<input id="id" type="text" class="form-control" name="id" 
						placeholder="영문 또는 숫자 6~20자리를 입력해주세요." size="40"
						autocomplete="off" />
				</div>

				<div>
					<label for="pwd">비밀번호</label>
					<input id="pwd" type="password" class="form-control" 
						name="pwd" placeholder="6자리 이상 입력해주세요." minlength="6"
						autocomplete="off" />
				</div>

				<div>
					<label for="pwdok">비밀번호 확인</label>
					<input id="pwdok" class="form-control" type="password" 
						placeholder="비밀번호를 다시 입력해주세요." width="100" 
						autocomplete="off" />
				</div>

				<div>
					<label for="name">이름</label>
					<input id="name" type="text" class="form-control" name="name" 
						width="100" autocomplete="off" />
				</div>

				<div>
					<label>성별</label>
					<input type="radio" name="gender" value="2" 
						autocomplete="off" width="100" />남
					<input type="radio" name="gender" value="1" 
						autocomplete="off" width="100" />여
				</div>

				<div>
					<label for="birth">생일</label>
					<input id="birth" type="date" class="form-control" 
					 autocomplete="off" name="birth" width="100" />
				</div>

				<div>
					<label for="tel">전화번호</label>
					<input id="tel" type="tel" name="tel" class="form-control" 
					autocomplete="off" width="100" />
				</div>

				<div>
					<label for="address">주소</label>
					<input id="address" type="text" class="form-control" 
						autocomplete="off" name="addr1" readonly />
					<button type="button" onclick="kakaopost()">주소찾기</button>
				</div>
				
				<!--TO DO : 상세주소 합친 벨류 히든에 넣어서 addr1컬럼에 넣는 코드로 바꿔야함 -->
				<div>
					<label for="detail">상세주소</label>
					<input id="detail" type="text" class="form-control" 
					autocomplete="off" placeholder="상세주소 입력" />
				</div>
				<!-- Full Address -->
				<!-- <input type="hidden" name="addr1" value="" /> -->
				
				<!-- TO Do List : Add Addr2,3 $ E-mail -->
				
				<!-- Member Type -->
				<input type="hidden" name="member_type" value="${param.member_type }" />
				<div>
					<button type="button" onclick="goStep(2)">다음으로</button>
				</div>
			</section>
		
	</div>
	
	<div id="step2" class="d-none">
		<!-- 약관동의 -->
		<section>
			<div class="UeASB">
				<h3>아기공룡 서비스 이용 동의</h3>
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
					<input type="checkbox"> <strong>전체동의</strong>
				</div>
	
				<div>
					<div
						style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
						<input type="checkbox" value="checkbox"> <span>서비스
							운영정책 및 회원의 의무 동의 <span>(필수)</span>
						</span>
					</div>
	
					<div
						style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
						<input type="checkbox" value="checkbox"> <span>서비스
							이용약관 동의 <span>(필수)</span>
						</span>
					</div>
	
					<div
						style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
						<input type="checkbox" value="checkbox"> <span> 개인
							정보 수집 및 이용에 관한 동의<span>(필수)</span>
						</span>
					</div>
	
					<div
						style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
						<input type="checkbox" value="checkbox"> <span>개인정보
							제3자 제공에 관한 동의 <span>(필수)</span>
						</span>
					</div>
	
					<div
						style="cursor: pointer; position: relative; overflow: visible; display: table; height: auto; width: 100%;">
						<input type="checkbox" value="checkbox"> <span>마케팅,
							프로모션, 광고 목적의 개인정보 이용 동의<span>(선택)</span>
						</span>
					</div>
				</div>
				<div>
					<button type="button" onclick="goStep(3)">다음으로</button>
				</div>
			</div>
		</section>
	</div>

	<div id="step3" class="d-none">
		<h3>휴대폰 본인인증</h3>
		<!-- 휴대폰 본인인증 -->
		<section>
			<div class="title">
				<input type="checkbox" value="checkbox"> 약관 전체동의
			</div>
			<div>[필수] 개인정보 수집/이용 동의</div>
			<div>[필수] 고유식별정보 처리 동의</div>
			<div>[필수] 통신사 이용약관 동의</div>
			<div>[필수] 서비스 이용약관 동의</div>
			<div>[필수] 개인정보 제3자 제공 동의</div>
			<br>
			<div>
				이름 <input type="text" width="300" placeholder="본인 실명(통신사 가입 이름)">
			</div>
			<div>
				주민등록번호 앞 7자리 <input type="tel" maxlength="6">
			</div>
			<div>휴대폰 번호</div>
		</section>
		<button type="submit">가입하기</button>
	</div>
</form>
</body>
<!-- 카카오 주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
   integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
   crossorigin="anonymous"></script>
<script>
	function goStep(step) {
		if(step == 2) {
			
			document.getElementById('step1').classList.add('d-none');
			document.getElementById('step2').classList.remove('d-none');
			
			
			// TODO 유효성검사 예시
			var form = document.memberJoinForm;		// <form></form>정보들
			
			
			var formName = form.name;				// 회원가입시 이름정보
			var FORMNAME_VALID = false;				// 회원가입시 이름정보 유효성검사
			
			var formBirth = form.birth;				// 회원가입시 생년월일
			var FORMBIRTH_VALID = false;			// 회원가입시 생년월일 유효성 검사
		
			
			var formtel = form.tel;					// 회원가입시 
			var formtel = false;
			
			// 이름 유효성검사(시간되면 모듈로 만들어봐)
			if(formName.value.trim().length == 0) {
				formName.classList.remove("is-valid");
				formName.classList.add('is-invalid');
				FORMNAME_VALID = false;
				formName.focus();
			} else {
				formName.classList.remove('is-invalid');
				formName.classList.add("is-valid");
				FORMNAME_VALID = true;
			}
			
			// 연락처 유효성검사
			if(formBirth.value == null || formBirth.value == '') {
				formBirth.classList.remove("is-valid");
				formBirth.classList.add('is-invalid');
				FORMBIRTH_VALID = false;
				formBirth.focus();
			} else {
				formBirth.classList.remove('is-invalid');
				formBirth.classList.add("is-valid");
				FORMBIRTH_VALID = true;
			}
			
			
			// 유효성검사 한개라도 false되면 return false처리 해주기
			if(!FORMNAME_VALID || !FORMBIRTH_VALID) {
				// return false;
			}
			
			
			// TODO 패스워드 일치 확인
			
			
			return false;
			
			
			
		} else if (step == 3){
			document.getElementById('step2').classList.add('d-none');
			document.getElementById('step3').classList.remove('d-none');
		}
	}

	
	/*full address 받아와야함.*/
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				console.log("--- data : ", data);
				document.getElementById("address").value = data.address
			}
		}).open();
	}
</script>

</html>