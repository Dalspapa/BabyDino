<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@include file="/header.jsp" %>
</head>
<body>
	<div class="main">
		<div>
			<button type="button" class="btn btn-outline-success" onclick="care();">돌봄 분야 추가 기능</button>
			<button type="button" class="btn btn-outline-success" onclick="cancel();">취소 사유 편집</button>
		</div>
		
		
		<!-- 돌봄분야 추가기능 -->
		<div id="care_add">
			<div class="container">
			  <div class="row">
			    <div class="col">돌봄분야 이미지 들어갈 부분</div>
			    <div class="col"></div>
			    <div class="col"></div>
			    <div class="col"></div>
			  </div>
			  <div class="row">
			    <div class="col"></div>
			    <div class="col"></div>
			    <div class="col"></div>
			    <div class="col"></div>
			  </div>
			  <div class="row">
			    <div class="col"></div>
			    <div class="col"></div>
			    <div class="col"></div>
			    <div class="col"></div>
			  </div>
			</div>
			
			<div>
				<button type="button" class="btn btn-outline-success">추가하기</button>
				<button type="button" class="btn btn-outline-secondary">삭제하기</button>
			</div>		
		</div>
		
		<!-- 취소사유 편집 -->
		<div id="cancel">
			<div>
				<button type="button" class="btn btn-outline-success" onclick="p_cancel();">부모님 취소 사유</button>
				<button type="button" class="btn btn-outline-success" onclick="t_cancel();">선생님 취소 사유</button>
			</div>
			<!-- 부모님 취소 사유 -->
			<div id="p_cancel">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">취소 사유 내용</th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var ="p_list" items = "${p_list}">
			    <tr>
			      <th scope="row"><input type="checkbox"></th>
			      	<td>${p_list.c_introduce}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					<button type="button" class="btn btn-outline-success"><a href="parentAddForm.do">추가하기</a></button>
					<button type="button" class="btn btn-outline-secondary"><a href="parentDelete.do">삭제하기</a></button>
				</div>
			</div>
			<!-- 선생님 취소 사유 -->
			<div  id="t_cancel">
				<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><input type="checkbox"></th>
			      <th scope="col">취소 사유 내용</th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var ="t_list" items = "${t_list}">
			    <tr>
			      <th scope="row"><input type="checkbox"></th>
			      	<td>${t_list.c_introduce}</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
				<div>
					<button type="button" class="btn btn-outline-success">수정하기</button>
					<button type="button" class="btn btn-outline-secondary">삭제하기</button>
				</div>
			</div>		
		</div>
		
	</div>
</body>
<%@include file="/footer.jsp" %>

<script>
//돌봄분야 추가기능&취소사유 js
let a = $('#care_add');
let b = $('#cancel');

$(document).ready(function() {
	a.show();
	b.hide();
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

<!-- 취소사유 js-->
<script>

let a = $('#p_cancel');
let b = $('#t_cancel');

$(document).ready(function() {
	a.show();
	b.hide();
});
function p_cancel() {
	a.show();
	b.hide();

}
function t_cancel() {
	a.hide();
	b.show();

}
</script>
</html>