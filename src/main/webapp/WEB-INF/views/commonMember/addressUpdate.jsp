<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주소 수정하기</title>
</head>
<body>
	<div>
		<section>
			<div>
				<h2>내 주소 수정하기</h2>
			</div>
			<hr>
			<div>
				<h3>돌봄 장소</h3>
			</div>
			<div>
				<div>
					<div>
						<h4>돌봄 장소 명칭</h4>
					</div>
					<div>
						<input type="text"> ## 돌봄 장소 명칭 코드 들어갈 부분
					</div>
				</div>
				<div>
					<!-- 주소api들어갈 부분 -->
					<table>
						<tr>
							<th>주소</th>
							<td>
								<div class="d-flex">
									<input id="address" type="text"
										class="form-control form-control-sm w-50"
										style="margin-right: 4px; background-color: #ffffff;"
										autocomplete="off" name="addr1" readonly />
									<button type="button" class="btn btn-sm btn-outline-primary"
										onclick="kakaopost()">주소찾기</button>
								</div>
							</td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input id="detail" type="text" name="addrDetail"
								class="form-control form-control-sm w-50" autocomplete="off"
								placeholder="상세주소 입력" /></td>
						</tr>
					</table>
					<div>
						*아파트명, 건물명을 꼭 입력해주세요.<br> 상세주소는 반드시 입력하세야 합니다.<br> 예)
						2층, 키즈카페, 1층로비, 101동 101호
					</div>
				</div>
				<div>
					<div>
						<h3>특이사항</h3>
					</div>
					<div>
						<input type="checkbox">CCTV가 있어요. <input type="checkbox">강아지가
						있어요. <input type="checkbox">고양이가 있어요. <input
							type="checkbox">기저귀 갈이가 필요해요.
					</div>
					<div>
						<button>주소 수정하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>

<!-- 카카오 주소 API -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	//카카오 주소 api
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