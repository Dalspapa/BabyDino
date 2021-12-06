<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./common/css/bootstrap.min.css">
<title>게시판 목록</title>
</head>
<link />
<body>
	<h1>신고 목록</h1>
	<form name="reportList" action="report.do">
		<table class="table table-hover" id="reportListTable" border="1"
			width="550" cellspacing="0">
			<thead class="text-center">
				<tr>
					<th>번호</th>
					<th>신고내용</th>
					<th>상태</th>
				</tr>
			</thead>
			<tbody id="reportListTable_body" class="text-center"></tbody>
			<tfoot>
				<tr>
					<td colspan="2" align="center">페이징</td>
					<td align="center"><a href="javascript:reportList.Write.al()">글쓰기</a>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
<script src="./common/js/jquery-3.6.0.min.js"></script>
<script>
	let reportList = (function() {

		let Write = (function() {
			function al() {
				alert('gg');
			}
			return {
				al : al
			}
		})();

		let List = (function() {
			function init() {
				getData();
			}
			function getData() {
				$.ajax({
					type : 'post', 
					url : 'kyominAjax.do', 
					dataType : 'json',
					data : function(d){
						
					},
					success : function(data) { // 결과 성공 콜백함수
						setData(data);
					},
					error : function(request, status, error) { // 결과 에러 콜백함수
						console.log(error)
					}
				})
			}
			console.log('hd');
			function setData(data) {
				let tableRow ="";
				for(let i = 0; i<data.length; i++){
					tableRow += "<tr>" 
					+ "<td><a title='kymin'>"+data[i].idx+"</a></td>" 
					+ "<td>"+data[i].rp_content+"</td>" 
					+ "<td>"+data[i].rp_type+"</td>" 
					+ "</tr>";
				}
				$("#reportListTable_body").html(tableRow);
				
			}
			return {
				init : init,
				getData : getData
			}
		})();

		return {
			Write : Write,
			List : List
		}
	})();

	$(document).ready(function() {
		reportList.List.init();
	})
</script>
