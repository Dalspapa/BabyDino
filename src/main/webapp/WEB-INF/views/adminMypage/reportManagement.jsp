<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고내역</title>
<style>
.title {
    color: green;
    text-align: center;
    margin-top: 123px;
    margin-bottom: 50px;
    font-family: 'S-Air';
}
.rptypeinfo {
	text-align:center;
	text-color:red;
	border: 1px solid green;
    width: 500px;
    height: 100px;
    margin: 0px auto;
    padding: 15px;
}
.btn a {
	text-decoration: none;
	color : black;
}
.table tbody a {
	text-decoration: none;
	color : black;
}
table{
	width: 1200px!important;
    margin-left: 164px;
    font-size: 14px;
}
table a:hover {
	color : #68983b;
}
table th,td {
	text-align : center;
}
.rpbtn {
	margin-right:180px;
    margin-bottom: 21px;
    text-align : right;
}
.paging {
	margin-top: -39px;
}
.bodysize {
	width: 80%
}
/*페이징 부분*/
.paging a{
	color: #68983b;
}
</style>
</head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class = "title">
		<h2>신고 내역(관리자용)</h2>
	</div>
	<div class="rptypeinfo">
		<b>- 신고 유형 -</b>
			<p>1. 허위 정보 기재  2. 부적절한 사진 3. 부적절한 내용 <br> 4. 규정 위반 5. 아기공룡에서 활동하기에 적절하지 않음 6. 기타</p>
	</div><br>
		<form id="adminMemberOut" action="adminMemberOut.do">
			<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"><input type="checkbox"></th>
					<th scope="col">번호</th>
               		<th scope="col">신고유형</th>
					<th scope="col">신고내용</th>
					<th scope="col">신고받은회원</th>
               		<th scope="col">작성날짜</th>
             		<!--  <th scope="col">처리상태</th>-->
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty reportManagement }">
					<tr>
						<td colspan="7" align="center">등록된 신고게시글이 없습니다.</td>
					</tr>
				</c:if>
			<c:forEach var ="dto" items = "${reportManagement}">
	             <tr>
	               <th scope="row"><input type="checkbox" name="idx" value="${dto.d_member_shield_idx}"></th>
					<td>${dto.idx}</td>
               		<td>${dto.rp_type}</td>
	               		<c:url var="contentUrl" value="reportContent.do">
							<c:param name="idx">${dto.idx }</c:param>
						</c:url>
					<td><a href="${contentUrl }">${dto.rp_content }</a></td>
               		<td>${dto.d_member_shield_idx}</td>
               		<td>${dto.rp_writedate }</td>
               		<%-- <td>
               			<c:choose>
							<c:when test="${dto.rp_status == 0 }"> 처리 대기중</c:when>
							<c:when test="${dto.rp_status == 1 }"> 처리 완료</c:when>
						</c:choose>
					</td> --%>
	             </tr>
             </c:forEach>
			</tbody>
		</table>
		<div class ="rpbtn">
			<button type="button" class="btn btn-outline-success" onclick="warning();">경고주기</button>
            <button type="button" class="btn btn-outline-success" onclick="checkForm();">강제탈퇴</button>
        </div>
		</form>
		
		
		
	<!-- 페이징 처리 될 부분 -->
            <div class = "paging">
               <nav aria-label="Page navigation example">
                 <ul class="pagination justify-content-center">
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Previous">
                       <span aria-hidden="true">&laquo;</span>
                     </a>
                   </li>
                   <li class="page-item"><a class="page-link" href="#">1</a></li>
                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Next">
                       <span aria-hidden="true">&raquo;</span>
                     </a>
                   </li>
                 </ul>
               </nav>
            </div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
<script>
function checkForm(){
	/**체크박스 유효성 검사*/
	if($("[name=idx]:checked").length == 0){
		alert('탈퇴시킬 신고회원을 선택해주세요.');
		form.idx.select();
		return false;
	}
	$("#adminMemberOut").submit();
}

function warning(){
	alert('경고를 주었습니다.');
	
}
</script>
</html>