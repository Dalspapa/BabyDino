<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주소 수정하기</title>
<!-- 부트스트랩 링크 삭제예정 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.title{
	width: 100%;
    margin-top: 172px;
    margin-left: 700px;
}
section{
	width: 600px;
}
.title .careaddr{
	font-size: 20px;
	margin-bottom: 15px;
}
.title .etc{
	font-size: 13px;
}
.title .box{
	margin-top: 15px;
	background-color: #e5e8ee;
	width: 350px;
    height: 200px;
    margin-bottom: 15px;
}
.title .box .mintitle{
	font-size: 17px;
	text-align: center;
}
.title .btnedit{
	width: 500px;
	margin-left: 127px;
}
</style>
</head>
<body>
	<div class="title">
		<section>
			<div class="careaddr">
				<span>돌봄 장소</span>
			</div>
			<div>
				<div>
					<div>
						<span>돌봄 장소 명칭</span>
					</div>
					<div>
  						<input type="text" class="form-control form-control-sm w-50" id="floatingInput" placeholder="돌봄 장소 명칭을 정해주세요">
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
										autocomplete="off" name="addr1" readonly /><br>
									<button type="button" class="btn btn-sm btn-outline-primary btn-outline-success" 
										onclick="kakaopost()">주소찾기</button>
								</div>
							</td>
						</tr>
						<tr>
							<th>상세주소</th><br>
							<td><input id="detail" type="text" name="addrDetail"
								class="form-control form-control-sm w-50" autocomplete="off"
								placeholder="상세주소 입력" /></td>
						</tr>
					</table>
					<div class="etc">
						*아파트명, 건물명을 꼭 입력해주세요.<br> 상세주소는 반드시 입력하세야 합니다.<br> 예)
						2층, 키즈카페, 1층로비, 101동 101호
					</div>
				</div>
				<div class="box">
					<div class="mintitle">
						<span>특이사항</span>
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input">CCTV가 있어요.<br> 
						<input type="checkbox" class="form-check-input">강아지가 있어요.<br> 
						<input type="checkbox" class="form-check-input">고양이가 있어요. <br>
						<input type="checkbox" class="form-check-input">기저귀 갈이가 필요해요.
					</div>
				</div>
					<div class="btnedit">
						<button type="button" class="btn btn-sm btn-outline-success">주소 수정하기</button>
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