<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발자국 검증 인증처리</title>
</head>
<body>
	<div>
		<section>
			<!-- 발자국 검증 인증처리 리스트 -->
			<div>
				<div>발자국 검증 인증처리(관리자)</div>
				<table border="1">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td>글번호</td>
							<td>문의유형</td>
							<td>요쳥내역</td>
							<td>신청자</td>
							<td>신청날짜</td>
							<td>답변상태</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>글번호 뿌려질곳</td>
							<td>문의유형 뿌려질곳</td>
							<td>요청내역 뿌려질곳</td>
							<td>신청자 뿌려질곳</td>
							<td>신청날짜 뿌려질 곳</td>
							<td><button type="button">상태뿌려질곳</button></td>
						</tr>
					</tbody>
				</table>
				<div>
					<button type="button">인증하기</button>
				</div>
		</section>
	</div>
</body>
</html>