<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 프로필</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
section{
    width: 80%;
    margin: 190px auto;
}
.t_profile{
	background-color: #E0F8E6;
	padding-bottom:10px;
	margin-bottom: 20px;
}
.t_profile .profil{
	text-align: center;
	font-weight: 500px;
	font-size: 24px;
}
.t_profile .pic{
    background-color: yellow;
    width: 123px;
    height: 123px;
    border-radius: 61px;
    margin-left: 270px;
    margin-top: 64px;
}
.t_profile .t_info{
    margin-left: 600px;
    margin-top: -164px;
    padding: 13px;
}
.t_profile .week{
	text-align: center;
}
.t_profile .form-select{
	width: 184px;
    height: 30px;
    font-size: 10px;
    text-align: center;
}
.t_profile .selectweek{
	width: 330px!important;
    margin-left: 453px;
    margin-bottom: 13px;
    font-size: 10px;
    text-align: center;
}
.btn2{
	text-align: center;
	margin-bottom: 10px;
	margin-left: 80px;
}
.introduce{
	text-align: center;
}
.t_profile .career nav ul{
	list-style: none;
}
.banks{
	display: flex;
}
</style>
<body>
	<div>
		<section>
			<!-- 선생님 프로필 부분 -->
			<div class="t_profile">
				<div class="profil">프로필</div>
					<c:set var="proImg" value="${tDto.c_imgpath}" />
					<div class="pic">
						<img src="/upload/${fn:replace(proImg,',','')}" alt="profileImg" width="150px" height="150px">
					</div>
				<div class="t_info">
					<div>${tDto.name} | ${tDto.age} 세</div>
					<div id="bankDiv1">
						<div>은행 : ${tDto.bank}</div>
						<div>
							계좌번호 : ${tDto.acnum}							
						</div>
						<div>
							희망 시급 : <fmt:formatNumber value="${tDto.t_cost}" pattern="#,###" /> 원
						</div>
						<button type="button" class="btn btn-outline-success" style = "font-size: 2%" id="bankbtn">수정</button>
					</div>
					<div id="bankDiv2" class="hideDiv">					
						<div class="banks">
							<div>은행 :&nbsp;&nbsp;&nbsp;</div>						
							 <div><select class="form-select" id="bank" aria-label="Default select example">
								<option selected>은행을 선택해주세요</option>
								<c:forEach var="blist" items="${blist}">
									<option>${blist.c_introduce}</option>
								</c:forEach>
							</select>
							</div>							
						</div>
						<div>
							<label for="acnum">계좌번호 : <input type="number" id="acnum" style = "font-size : 95%" placeholder="계좌번호(- 빼고)를 입력해주세요"></label>
						</div>	
						<div>
							<label for="t_cost"></label>희망시급 : <input type="number" id="t_cost" style = "width:15%">
						</div>
						<div>
							<button type="button" id="bankupd" class="btn btn-outline-success" style="font-size: 2%">수정하기</button>
						</div>					
					</div>					
				</div>
			</div>
			<!-- 선생님 아이연령대, 돌봄 분야 선택 -->
			<div class="t_profile">
				<div class="profil">이런 아이들이 좋아요!</div>
				<div>
					<c:set var="ktype" value="${tDto.kid_type}" />
						<c:forEach items="${fn:split(ktype, ',') }" var="item">
							${item}
						</c:forEach>
				</div>
			</div>
			<!-- 선생님 소개글 -->
			<div class="t_profile introduce">
				<div>
					<div id="introDiv1">
						<div class="profil">CCTV 녹화 동의 여부</div>
						<div>
							<c:if test="${tDto.cctvagree == 0}">CCTV 녹화 비동의 중</c:if>
							<c:if test="${tDto.cctvagree == 1}">CCTV 녹화 동의 중</c:if>						
						</div>
						<div class="profil">공룡 선생님 소개</div>					
						<div>
							${tDto.t_introduce}
						</div>					
						<div class="profil">돌봄 활동 경험 / 이런 활동을 해봤어요!</div>
						<div class="career">
							${tDto.career_experience}
						</div>
						<div>
							<button type="button" class="btn btn-outline-success" style = "font-size: 2%" id="bankbtn2">수정</button>
						</div>
					</div>
					</div>
				<div id="introDiv2" class="hideDiv">
					<div class="profil">CCTV 촬영 동의 여부</div>
					<div>
						<label><input type="radio" name="cctvagree" value="1"> 동의합니다. </label>
						<label><input type="radio" name="cctvagree"	value="0" checked> 동의하지 않습니다. </label>
					</div>
					<div class="profil">공룡 선생님 소개</div>
					<div><% pageContext.setAttribute("newLineChar", "\n"); %>
						<textarea rows="10" cols="60" name="t_introduce" id="t_introduce">${fn:replace(tDto.t_introduce,'<br>',newLineChar)}</textarea>						
					</div>					
					<div class="profil">돌봄 활동 경험 / 이런 활동을 해봤어요!</div>
					<div class="career">
						<textarea rows="10" cols="60" name="career_experience" id="career_experience">${fn:replace(tDto.career_experience,'<br>',newLineChar)}</textarea>
					</div>
					<div>
						<button type="button" class="btn btn-outline-success" id="introUpd">수정하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
<script>

	$(document).ready(function(){
		
		$('.hideDiv').hide();
		
		$('#bankbtn').click(function(){
			
			$('#bankDiv1').hide();
			$('#bankDiv2').show();			
		});
		
		$('#bankupd').click(function(){

			let fdata = new FormData();
			let idx = ${sidx};
			
			fdata.set("d_member_idx", idx);
			fdata.set("bank", $('#bank').val());
			fdata.set("acnum",$("#acnum").val());
			fdata.set("t_cost",$("#t_cost").val());
			
			fdata.forEach(function(value, key) {
				  console.log(key, value);
			  });
					
			$.ajax({
				type: "POST",
				enctype: 'multipart/form-data',
				url: '${pageContext.request.contextPath}/bankUpd.do',
				data: fdata,
				processData: false,
				contentType: false,
				cache: false,
				success: function(r) {
					console.log("--- r : ", r);
					location.href='teacherProfile.do?idx=${sidx}';
				},
				error: function(e) {
					console.error(e);
				}
			})
			
		});
		
		$('#bankbtn2').click(function(){
			
			$('#introDiv1').hide();
			$('#introDiv2').show();
			
		});
		
		$('#introUpd').click(function(){
			
			let fdata = new FormData();
			let idx = ${sidx};
			let cctv = $('input[name="cctvagree"]:checked').val();
			
			fdata.set("d_member_idx", idx);
			fdata.set('t_introduce',$('#t_introduce').val());
			fdata.set('career_experience', $('#career_experience').val());
			fdata.set("cctvagree", cctv);
			
			fdata.forEach(function(value, key) {
				console.log(key, value);
			});
			
			document.addEventListener('keydown', function(event) {
			  if (event.keyCode === 13) {
			    event.preventDefault();
			  };
			}, true);

			$.ajax({
				type: "POST",
				enctype: 'multipart/form-data',
				url: '${pageContext.request.contextPath}/introUpd.do',
				data: fdata,
				processData: false,
				contentType: false,
				cache: false,
				success: function(r) {
					console.log("--- r : ", r);
					location.href='teacherProfile.do?idx=${sidx}';
				},
				error: function(e) {
					console.error(e);
				}				
				
			});
			
		});
		
		
	});

</script>	
	
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</html>