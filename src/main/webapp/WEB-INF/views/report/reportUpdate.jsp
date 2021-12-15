<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<style>
section {
   	width: 700px;
    margin: 0px auto !important;
    margin-top: 150px !important;
    margin-bottom: 128px !important;
    text-align: center;
    border: 1px solid #68983b;
    border-radius: 110px;
    padding-bottom: 100px;
    font-size : 15px;
    
}
.appbar {
    display: block;
    margin: 0px auto;
    max-width: 600px;
    width: 100%;
    position: relative;
    height: 64px;
    background: rgb(255, 255, 255);
    border-bottom: 1px solid rgb(227, 227, 227);
    margin-top: 50px;
}
.appbar .backward {
    padding: 10px;
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    cursor: pointer;
}
.appbar > .title {
    color: black;
    font-size: 17px;
    font-weight: 500;
    text-align: center;
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.table tr td {
	text-align : center;
	color: red;
}
.kHvtJd {
    margin-right: 7px;
    padding: 0px;
    width: 100%;
    color: rgb(68, 68, 68);
    letter-spacing: -0.2px;
    font-weight: 600;
    line-height: 19px;
}
.formBlock {
    margin: 0px auto;
    width: 581px;
    color-interpolation: sRGB;
    text-align: center;
}
.formBlock .titleBlock {
    margin-bottom: 8px;
}
.eSyZIh {
    width: 100%;
    height: 200px;
    border: 1px solid rgb(221, 221, 221);
    border-radius: 4px
}
.btn {
	float : right;
	font-size: 5px;
}
a {
	text-decoration: none;
	color : black;
}
a:hover {
	color : yellow;
}
.memberImg {
   width: 60px;
   height: 60px;
   border-radius: 50%;
   overflow: hidden;
   background-color: yellow;
}
.offcanvas-end{
   width: 300px;
}
.offcanvas-body {
   text-align: center;
}
.offcanvas-body div{
   margin-top: 25px;
}
.memberImg {
   width: 60px;
   height: 100px;
   border-radius: 50%;
   overflow: hidden;
   background-color: yellow;
}
.offcanvas-end{
   width: 300px;
}
.offcanvas-body {
   text-align: center;
}
.offcanvas-body div{
   margin-top: 25px;
}
.rpt {
	display : flex;
	justify-content: center;
	color : red;
	margin-top: 18px;
}
.rptt {
	margin-right: 10px;
}
.bodering {
    border: 1px solid green;
    width: 600px;
    height: 222px;
    margin: 0px auto;
    padding: 15px;
}
.btn{
	margin: 0px auto;
}
.rpt {
	display : flex;
	justify-content: center;
}
.rptt {
	margin-right: 10px;
}
</style>
</head>
<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- offcanvas(부모회원) -->
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">아이콘이미지</button>

<div class="offcanvas offcanvas-end" id="offcanvasRight">
  <div class="offcanvas-header">
     <div class="memberImg">#이미지</div>
    <h5 id="offcanvasRightLabel">#부모님이름 회원님</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div><a href="#">돌봄현황</a></div>
    <div><a href="#">아이카드</a></div>
    <div><a href="#">돌봄노트</a></div>
    <div><a href="#">후기내역</a></div>
    <div><a href="#">신고내역</a></div>
    <div><a href="#">계정관리</a></div>
  </div>
</div>
<!-- /offcanvas -->

<!-- offcanvas(선생님회원) -->

<button class="btn btn-success" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight2">아이콘이미지</button>

<div class="offcanvas offcanvas-end" id="offcanvasRight2">
  <div class="offcanvas-header">
     <div class="memberImg">#이미지</div>
    <h5 id="offcanvasRightLabel">#선생님이름 회원님</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div><a href="#">돌봄현황</a></div>
    <div><a href="#">프로필</a></div>
    <div><a href="#">공룡발자국</a></div>
    <div><a href="#">돌봄노트</a></div>
    <div><a href="#">후기내역</a></div>
    <div><a href="#">신고내역</a></div>
    <div><a href="#">계정관리</a></div>
  </div>
</div>
<!-- /offcanvas -->
<section>
<form name = "reportUpdate" action = "reportUpdate.do" method = "post">
		<div class="appbar">
			<div class="backward"><a href = "reportList.do">
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="뒤로가기"></a>
			</div>
		<div class="title">신고내용 수정하기</div>
	</div>
	<div class="formBlock">
					<div class="titleBlock">
		<input type = "hidden" name = "idx" value = "${dto.idx}">
			<div class = "rpt">
				<div class = "rptt">
					<p class="sc-bdnxRM kHvtJd">신고 유형 : </p>
				</div>
						<c:choose>
							<c:when test="${ dto.rp_type == 1 }">
								[허위 정보를 기재하였습니다.]
							</c:when>
							<c:when test="${ dto.rp_type == 2 }">
								[부적절한 사진입니다.]
							</c:when>
							<c:when test="${ dto.rp_type == 3 }">
								[부적절한 내용입니다.]
							</c:when>
							<c:when test="${ dto.rp_type == 4 }">
								[규정을 위반하였습니다.]
							</c:when>
							<c:when test="${ dto.rp_type == 5 }">
								 < 아기공룡에서 활동하기에 적절하지 않습니다.  >
							</c:when>
							<c:when test="${ dto.rp_type == 6 }">
								[기타]
							</c:when>
						</c:choose>
				</div>
						<p class="sc-bdnxRM kHvtJd">신고 내용</p>
					</div>
			
						<textarea class="sc-jUfyBS eSyZIh" name="rp_content">${dto.rp_content}</textarea>
				<div class ="btn">
					<button class="btn btn-outline-success">수정하기</button>
						<c:url var="reportUrl" value="reportContent.do">
						<c:param name="idx">${dto.idx}</c:param>
						</c:url>
				</div>
		</div>
	</form>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>	
</body>
</html>