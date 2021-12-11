<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 파비콘 -->
<link rel="shortcut icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">
<link rel="icon" href="./common/img/favicon/favicon.png"
	type="image/x-icon">
<!-- css -->
<link rel="stylesheet" href="./common/css/bootstrap.min.css">
<link rel="stylesheet" href="./common/css/reset.css">
<link rel="stylesheet" href="./common/css/main.css">
<style>
table tr th {
	vertical-align: middle;
}
</style>
</head>
<br>
<br>
<br>

<body>
	<form action="updateAddr.do" name="updateForm">
		<!-- 실제 idx 받아와야함. -->
		<%-- <input type="hidden" name="idx" value="${ dto.idx }" /> --%>
		<div class="card" style="width: 80%; margin: 0 auto;">
			<div class="card-body">
				<h5 class="card-title">수정하실 주소를 입력해주세요.</h5>
				<table class="table">
					<colgroup width="20%" />
					<colgroup width="80%" />
					<thead></thead>
					<tbody>
						<tr>
							<th>주소</th>
							<td>
								<div class="d-flex">
									<input id="addr1" type="text" name="addr1" value="${dto.addr1 }" class="form-control form-control-sm w-50" style="margin-right: 4px; background-color: #ffffff;"
										autocomplete="off" readonly />
									<button type="button" class="btn btn-sm btn-outline-primary"
										onclick="kakaopost()">주소찾기</button>
								</div>
								<div class="d-flex">
									<input id="addr2" type="text" name="addr2" value="${dto.addr2 }" class="form-control form-control-sm w-50" style="margin-right: 4px; background-color: #ffffff;"
										autocomplete="off" readonly />
								</div>
							</td>
						</tr>

						<tr>
							<th>상세주소</th>
							<td><input id="addr3" type="text" name="addr3" value="${dto.addr3 }" class="form-control form-control-sm w-50" autocomplete="off"
								placeholder="상세주소 입력" /></td>
						</tr>
					</tbody>
				</table>
				<div>
					<button type="submit" onclick="addrcheck();" class="btn btn-sm btn-outline-primary">수정하기</button>
				</div>
			</div>
		</div>
	</form>
</body>
<!-- J-query -->
<script src="./common/js/jquery-3.6.0.min.js"></script>
<!-- 카카오 주소 API -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	//카카오 주소 api
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {

				var addr2 = "";

				if (data.userSelectedType == 'R') {
					addr2 = data.jibunAddress;
				} else {
					addr2 = data.jibunAddress;
				}

				console.log("--- data : ", data);
				document.getElementById("addr1").value = data.zonecode;
				document.getElementById("addr2").value = addr2;
			}
		}).open();
	}
</script>
</html>