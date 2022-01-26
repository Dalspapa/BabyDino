<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
section {
   	width: 694px;
    height: 641px;
    margin-top: 173px!important;
    text-align: center;
    border: 1px solid #68983b;
    border-radius: 110px;
    margin-left: 362px;
    margin-bottom: 113px;
}

._36gBs {
    width: 100%;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-bottom: 34px;
}
ttl {
	margin-top: 111px;
    margin-bottom: 111px;
}
.appbar {
    display: block;
    margin: 0px auto;
    margin-top : 45px;
    max-width: 600px;
    width: 100%;
    position: relative;
    height: 64px;
    background: rgb(255, 255, 255);
    border-bottom: 1px solid rgb(227, 227, 227);
}
.appbar .backward {
    padding: 10px;
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    cursor: pointer;
}
.appbar > .title {
    color: black;
    font-size: 17px;
    font-weight: 500;
    text-align: center;
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
._36gBs {
    width: 100%;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-bottom: 34px;
}
._2nIFL {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 290px;
}
._1vbgj {
    width: 100%;
    height: 100%;
    margin: 50px auto;
    padding: 0 18px;
}
.nATE5 {
    position: relative;
    margin: 0 auto;
    margin-bottom: 5px;
    display: -ms-flexbox;
    display: flex;
    width: 100%;
    font-size: 16px;
    font-weight: 400;
    letter-spacing: -.2px;
}
.nATE5 ._1QQ_I {
   	width: 200px;
    color: #aaa;
    margin-right: 60px;
}
.nATE5 .qlKb8 {
    color: #000;
}
._1Iazm {
    height: 18px;
    background-color: #eee;
}
._2MTRN {
    width: calc(100% - 36px);
    height: 1px;
    margin: 0 auto;
    background-color: #eee;
}
._39161 {
    width: 100%;
    height: 100%;
    margin: 0 auto;
}
.eJDRKz {
    box-sizing: border-box;
    padding: 10px;
    width: 38px;
    height: 51px;
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
}
.mintitle{
	padding: 15px;
}
.mintitle a{
	text-decoration: none;
	color: black;
}
.mintitle a:hover{
	color: #68983b;
}
</style>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="accountCheck">
	<div>
		<form name="accountForm" onsubmit="return false;">
			<fieldset style="width:350px; margin: 0px auto;">
				<legend>본인확인 비밀번호 확인</legend>
				<input type="password" class="form-control form-control-sm w-50" name="pwd" id="APWD" placeholder="6자리 이상 입력해주세요." autocomplete="off" />
				<span id="msg" style="display: flex; align-item: center;"></span>
				<button id="accountTest" onclick="show();">확인하기</button>
			</fieldset>
		</form>
	</div>	
</div>
<br><br><br><br><br>

<div class="hideDiv" id="accountCheck2">
	<section>
		<form name="accountInfoUpd" onsubmit="return false;">
		<div class="container">
			<div class="appbar">
			<div class="backward">
			<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="imgs">
			</div>
			<div class="title">계정 관리</div>
				<div class="_36gBs">
					<div class = "_2nIFL">
						<div class="_1vbgj">
						
						
							<div class="nATE5" id="idDiv1">							
								<div class="_1QQ_I">사용중인 아이디</div>
								<div class="qlKb8">
									<label id="getId"></label>
									<button id="idbtn">수정</button>
								</div>
							</div>							
							<div class="nATE5" id="idDiv2">
								<div class="_1QQ_I">사용중인 아이디</div>
								<div class="qlKb8">
									<label id="setId"></label>
									<button onclick="idUpd();">수정하기</button>
								</div>
							</div>
							
							
							<div class="nATE5">
								<div class ="_1QQ_I">사용중인 비밀번호</div>
								<div class="qlKb8">
									<label id="getPwd"></label>
									<button>수정</button>
								</div>
							</div>
							<div class="nATE5 updHide" id="pwdDiv">
								<div class="_1QQ_I">사용중인 비밀번호</div>
								<div class="qlKb8">
									<label id="setPwd"></label>
									<button>수정하기</button>
								</div>
							</div>
							
							
							
							<div class="nATE5">
								<div class="_1QQ_I">핸드폰 번호</div>
								<div class="qlKb8">
									<label id="getTel"></label>
									<button>수정</button>
								</div>
							</div>
							<div class="nATE5 updHide" id="telDiv">
								<div class="_1QQ_I">핸드폰 번호</div>
								<div class="qlKb8">
									<label id="setTel"></label>
									<button>수정하기</button>
								</div>
							</div>
							
							
							<div class="nATE5">
								<div class="_1QQ_I">주소</div>
								<div class="qlKb8">
									<label id="getAddr"></label>
									<button>수정</button>
								</div>
							</div>
							<div class="nATE5 updHide" id="addrDiv">
								<div class="_1QQ_I">주소</div>
								<div class="qlKb8">
									<label id="setAddr"></label>
									<button>수정하기</button>
								</div>
							</div>
							
							
							
						</div>						
					</div>
						<div class="_1Iazm"></div>					
					<div class="_2MTRN"></div>
					<div class="mintitle">
						<span><a href="memberOutForm.do?idx=${sidx}">아기공룡 회원 탈퇴하기</a></span>
						<i class="far fa-angle-right"></i>
					</div>
				</div>
			</div>
		</div>
		</form>
	</section>
</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>

	$(document).ready(function() {
	
		$('.hideDiv').hide();
		$('#idDiv2').hide();
		

		let fmdata2 = new FormData();		
		fmdata2.set('id', '${sid}');
		
		$.ajax({
			
			method : 'POST',
			url : '${pageContext.request.contextPath}/accountInfo.do',
			data : fmdata2,
			processData: false,
			contentType: false,
			cache: false,
			success : function(result){
				
				if (result != null) {
					$('#getId').text('${sid}');
					$('#getPwd').text(result.pwd);
					$('#getTel').text(result.tel);
					$('#getAddr').text(result.addr1+' '+result.addr2+' '+result.addr3);
					console.log('addr==========' + result.addr1+' '+result.addr2+' '+result.addr3);
				} else {
					alert("탈퇴한 회원 또는 잘못된 접근입니다.");
				}
			},
			error : function(error){
				console.log("잘못된 접근 또는 오류가 발생했습니다.");
			}
		});
	});
	
	$('#idbtn').click(function(){	
		$('#idDiv1').hide();
		$('#idDiv2').show();
	});
	
	function idUpd(){
		
		let iddata = new FormData();

		iddata.set("idx", '${sidx}');
		
		$.ajax({
		
			method : 'POST',
			url : '${pageContext.request.contextPath}/accountIdUpd.do',
			data : iddata,
			processData: false,
			contentType: false,
			cache: false,
			success : function(result){
				
				if (result > 0) {					
					$('#idDiv2').hide();
					$('#idDiv1').show();
				} else {
					alert("수정 중 예기치 못한 오류가 발생했습니다. 잠시후 다시 시도해주세요.");
				}
			},
			error : function(error){
				console.log("잘못된 접근 또는 오류가 발생했습니다.");
			}
		
		});		
	}
	
	
	function show(){
	
		let pwd = $('#APWD').val();
		if(pwd.trim().length < 6){
			alert('6자이상 입력해주세요');
			return false;
		}
		
	
		console.log('hi');
		let id = '${sid}';
		let idx = '${sidx}';
			 
		let fmdata = new FormData();
		
		fmdata.set('pwd', pwd);
		fmdata.set('idx', idx);
		
		fmdata.forEach(function(value, key) {
			console.log(key, value);
		})
		
		$.ajax({
			
			method : 'POST',
			url : '${pageContext.request.contextPath}/accountCheck.do',
			data : fmdata,
			processData: false,
			contentType: false,
			cache: false,
			success : function(result){
				
				if (result.result == '${sid}') {					
					console.log(result);
					console.log('id'+id);
					$('.hideDiv').show();
					$('#accountCheck').hide();
				} else {
					console.log(result);
					alert("틀린 비밀번호 입니다. 다시 시도해주세요.");
				}
			},
			error : function(error){
				console.log("잘못된 접근 또는 오류가 발생했습니다.");
			}
		
		});
	};


</script>

</html>









