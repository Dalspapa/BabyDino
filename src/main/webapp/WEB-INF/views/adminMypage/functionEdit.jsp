<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기능 편집</title>
<style>
.main{
	width: 100%;
	margin-top: 200px;
}
</style>
<%@include file="/WEB-INF/views/include//header.jsp" %>
</head>
<body>
	<div class="main">
		<div>
			<button type="button" class="btn btn-outline-success" onclick="care();">돌봄 분야 추가 기능</button>
			<button type="button" class="btn btn-outline-success" onclick="cancel();">취소 사유 편집</button>
		</div>
		
		<!-- 돌봄분야 추가기능 -->
		<div id="care_add">
		<form id="careDel" action="careDelete.do">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">돌봄분야 </th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var ="c_list" items = "${c_list}">
			    <tr>
			      <th scope="row"><input type="checkbox" name="op" value="${c_list.op}"></th>
			      	<td>${c_list.c_introduce}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
			
			<div>
				<button type="button" class="btn btn-outline-success"  onclick=  "location.href = 'careAddForm.do'">추가하기</button>
				<button type="submit" class="btn btn-outline-secondary">삭제하기</button>
			</div>	
			</form>	
		</div>
		
		<!-- 취소사유 편집 -->
		<div id="cancel">
			<div>
				<button type="button" class="btn btn-outline-success" id="pCancelBtn">부모님 취소 사유</button>
				<button type="button" class="btn btn-outline-success" id="tCancelBtn">선생님 취소 사유</button>
			</div>
			<!-- 부모님 취소 사유 -->
			<div id="p_cancel">
			<form id="parentDel" action="parentDelete.do">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">부모님 취소 사유 내용</th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var ="p_list" items = "${p_list}">
			    <tr>
			      <th scope="row"><input type="checkbox" name="op" value="${p_list.op}"></th>
			      	<td>${p_list.c_introduce}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					<button type="button" class="btn btn-outline-success" onclick=  "location.href = 'parentAddForm.do'">추가하기</button>
					<button type="submit" class="btn btn-outline-secondary">삭제하기</button>
				</div>
			</form>
			</div>
			<!-- 선생님 취소 사유 -->
			<div  id="t_cancel">
			<form id="teacherDel" action="teacherDelete.do">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">선생님 취소 사유 내용</th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var ="t_list" items = "${t_list}">
			    <tr>
			      <th scope="row"><input type="checkbox" name="op" value="${t_list.op}"></th>
			      	<td>${t_list.c_introduce}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					<button type="button" class="btn btn-outline-success" onclick=  "location.href = 'teacherAddForm.do'">추가하기</button>
					<button type="submit" class="btn btn-outline-secondary">삭제하기</button>
				</div>
			</form>
			</div>		
		</div>
		
	</div>
	
<script>
//돌봄분야 추가기능&취소사유 js
let a = $('#care_add');
let b = $('#cancel');

$(document).ready(function() {
	a.show();
	b.hide();
	
	$("#pCancelBtn").click(function(){
		$("#p_cancel").show();
		$("#t_cancel").hide();
	});
	$("#tCancelBtn").click(function(){
		$("#p_cancel").hide();
		$("#t_cancel").show();
	});
	
});
function care() {
	a.show();
	b.hide();

}
function cancel() {
	a.hide();
	b.show();

}



</script>	
	
	
</body>
<%@include file="/WEB-INF/views/include//footer.jsp" %>



</body>
</html>
