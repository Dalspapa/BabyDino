<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 필수 인증</title>
<!-- -------------지원 css---------------- -->
<style>
.teacherTable{
	margin-top: 168px;
    width: 90%;
    margin-left: 104px;
    text-align: center;
}
</style>
<!-- -------------지원 css---------------- -->
</head>
 <!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
			<!-- 선생님회원테이블 -->
			<div class="teacherTable">
			<form name="tUpd" onsubmit="return false;">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">선생님 이름</th>
			      <th scope="col">선생님 아이디</th>
			      <th scope="col">전화번호</th>
			      <th scope="col">가입날짜</th>
			      <th scope="col">이미지</th>
			      <th scope="col">성범죄 동의 여부</th>
			      <th scope="col">인증하기</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test = "${empty t_list}">
			  		<tr>
						<td colspan = "8" align = "center">
							등록된 선생님이 없습니다.
						</td>
					</tr>
				</c:if>
				<c:forEach var ="dto" items = "${t_list}" varStatus="status">
				<c:url var="downUrl" value="down.do">
					<c:param name="fname">${dto.exemplification}</c:param>
				</c:url>
				    <tr>
				    	<td>${dto.idx}</td>				    	
				      	<td>${dto.name}</td>
						<td>${dto.id}</td>
						<td>${dto.tel}</td>
						<td>${dto.joinDate}</td>
						<td><a href="${downUrl}">${dto.exemplification}</a></td>
						<td>
							<c:if test="${dto.crimeagree == '동의합니다.'}">
								조회 동의
							</c:if>
							<c:if test="${dto.crimeagree != '동의합니다.'}">
								조회 비동의
							</c:if>
							<input type="hidden" value="${dto.idx}" id="idx_${status.count}"/>
							<input type="hidden" value="${dto.id}" id="id_${status.count}"/>
						</td>
						<td><button type="button" class="btn btn-outline-success" onclick="tCert(${status.count});">인증하기</button></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
			</form>
				<div>
					<!-- 페이징 처리 될 부분 -->
				</div>
			</div>
 <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
<script>

	function tCert(index){
		
		let d_member_idx = $("#idx_" + index).val();
		let id = $("#id_"+index).val();
		
		let fdata = new FormData();
		
		fdata.set('d_member_idx', d_member_idx);
		fdata.set('id', id);
		
		console.log("=======idx"+ d_member_idx);
		console.log("=======id"+ id);
		
		$.ajax({
			
			method : 'POST',
			url : '${pageContext.request.contextPath}/teaCertUpd.do',
			data : fdata,
			processData: false,
			contentType: false,
			cache: false,
			success : function(result){				
				if (result.result > 0) {
					console.log('등업완료');					
					alert('필수인증이 완료되었습니다. \n채팅으로 알려주세요 :)');
					window.open('enterChatRoom.do?partnerIdx=' + d_member_idx, 'chatRoom','width=600, height=700')
					location.reload();
				} else {
					console.log('no'+result.rst);
					alert('필수 인증 절차 중 오류가 발생했습니다. 잠시 후 재시도 해주세요.');
					location.reload();
				}
			},
			error : function(error){
				console.log("잘못된 접근 또는 오류가 발생했습니다.");
			}
			
		});
		
	}


</script>











</html>