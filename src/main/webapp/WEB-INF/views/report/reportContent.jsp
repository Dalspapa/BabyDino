<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 section {
   	width: 700px;
    margin: 0px auto !important;
    margin-top: 150px !important;
    margin-bottom: 128px !important;
    text-align: center;
    border: 1px solid #68983b;
    border-radius: 110px;
    padding: 10px;
    font-size : 15px;
    
}
.ttl {
	margin-top: 111px;
    margin-bottom: 111px;
}
.appbar {
    display: block;
    margin: 0px auto;
    margin-top : 50px;
    max-width: 600px;
    width: 100%;
    position: relative;
    height: 64px;
    background: rgb(255, 255, 255);
    border-bottom: 1px solid rgb(227, 227, 227);
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
.kHvtJd {
    margin-right: 7px;
    padding: 0px;
    width: 100%;
    color: rgb(68, 68, 68);
    letter-spacing: -0.2px;
    font-weight: 600;
    line-height: 19px;
    margin-top: 15px;
}
.formBlock {
    margin-top: 30px;
}
.formBlock > .titleBlock {
    text-align: center;		
}
.rptype {
	color : red;
	margin-top: 12px;
}
.bodering {
    border: 1px solid green;
    width: 600px;
    height: 222px;
    margin: 0px auto;
    padding: 15px;
}
.btn-outline-success {
	margin-left: 30px;
}
a:hover {
	color : yellow;
}
.delupBtn {
	float : center;
	font-size: 5px;
}
.filebtn {
    display: flex;
    justify-content: flex-end;
    font-size: x-small;
}
.reportbtn{
	margin-top : 20px;
	text-align : center;
	display : flex;
	justify-content: center;
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
<section>
<div class = "ttl">
	<div class="appbar">
		<div class="backward"><a href = "reportList.do">
			<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="뒤로가기"></a>
		</div>
		<div class="title">내 신고내역</div>
	</div>
	<div class="formBlock">
		<div class="titleBlock">
			<input type = "hidden" name = "idx" value = "${dto.idx}">
			<div class = "rpt">
				<div class = "rptt">
					<p class="sc-bdnxRM kHvtJd">신고 유형 : </p>
				</div>
				<div class = "rptype">
				<c:choose>
			   		<c:when test="${ dto.rp_type == 1 }"><p><허위정보></p></c:when>   
			   		<c:when test="${ dto.rp_type == 2 }"><p><부적절한 사진></p></c:when>   
			  		<c:when test="${ dto.rp_type == 3 }"><p><부적절한 내용></p></c:when>   
			   		<c:when test="${ dto.rp_type == 4 }S"><p><규정 위반></p></c:when>   
			   		<c:when test="${ dto.rp_type == 5 }"><p><활동 부적절></p></c:when> 
			  		 <c:when test="${ dto.rp_type == 6 }"><p><기타></p></c:when>   
				</c:choose>
				</div>
			</div>  
			<p class="sc-bdnxRM kHvtJd">내용 </p>
				<div class = "bodering">
					<div>${dto.rp_content }</div>
				</div>
		</div>
	</div>
		<div class = "reportbtn">
			<c:url var = "deleteUrl" value = "reportDelete.do">
				<c:param name = "idx">${dto.idx}</c:param>
			</c:url>		
			<div><button class="btn btn-outline-success" onclick = "location.href = '${ deleteUrl }'">내용삭제</button></div>
			<c:url var = "updateUrl" value = "reportUpdate.do">
					<c:param name="idx">${dto.idx}</c:param>
			</c:url>		
			<div><button class="btn btn-outline-success" onclick = "location.href = '${ updateUrl }'">내용수정</button></div>
		</div>	
	</div>	
	</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>