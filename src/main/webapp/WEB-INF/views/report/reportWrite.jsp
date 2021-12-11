<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<style>
/* body {
    width: 952px;
    margin-left: 12%;
    font-size: 12px;
    margin: 0px auto;
}
/*h2 {
	color : green;
	text-align : center;
	margin-top : 50px;
	margin-bottom : 50px;
} */
.body{
	width: 747px;
    margin-left: 414px;
    margin-top: 130px;
    margin-bottom: 39px;
    border: 1px solid #68983b;
    border-radius: 110px;
    padding: 33px;
}
.appbar {
    display: block;
    margin: 0px auto;
    margin-top : 100px;
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
    font-size: 21px;
    font-weight: 700;
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
.formBlock {
    margin-top: 16px;
}
.formBlock > .titleBlock {
    margin-bottom: 8px;
}
.kHvtJd {
    margin: 0px;
    padding: 0px;
    width: 100%;
    color: rgb(68, 68, 68);
    letter-spacing: -0.2px;
    font-weight: 400;
    font-size: 13px;
    line-height: 19px;
}
.MuiInput-root {
    position: relative;
}
.MuiInputBase-root {
    color: rgba(0, 0, 0, 0.87);
    cursor: text;
    display: inline-flex;
    position: relative;
    font-size: 1rem;
    box-sizing: border-box;
    align-items: center;
    font-weight: 400;
    line-height: 1.1876em;
    letter-spacing: 0.00938em;
}
.gQyNyw {
    width: 100%;
    height: 47px;
    text-align: center;
    background: rgb(255, 255, 255);
    border: 1px solid rgb(221, 221, 221);
    border-radius: 4px;
    font-size: 13px !important;
    box-sizing: border-box !important;
}
.MuiSelect-select.MuiSelect-select {
    padding-right: 24px;
}
.gQyNyw select {
    margin-left: 18px;
    box-sizing: initial !important;
    color: rgb(136, 136, 136) !important;
}
.MuiSelect-select {
    cursor: pointer;
    min-width: 16px;
    user-select: none;
    border-radius: 0;
    -moz-appearance: none;
    -webkit-appearance: none;
}
.MuiInputBase-input {
    font: inherit;
    color: currentColor;
    width: 100%;
    border: 0;
    height: 1.1876em;
    margin: 0;
    display: block;
    padding: 6px 0 7px;
    min-width: 0;
    background: none;
    box-sizing: content-box;
    animation-name: mui-auto-fill-cancel;
    letter-spacing: inherit;
    animation-duration: 10ms;
    -webkit-tap-highlight-color: transparent;
}
.eSyZIh {
    width: 100%;
    height: 200px;
    border: 1px solid rgb(221, 221, 221);
    border-radius: 4px
}
.eSyZIh > textarea {
    appearance: none;
    padding: 14px;
    width: 100%;
    height: 160px;
    border: 1px solid rgb(221, 221, 221);
    border-radius: 4px;
    resize: none;
    font-weight: normal;
    font-size: 13px;
    line-height: 19px;
    letter-spacing: -0.2px;
    color: rgb(0, 0, 0);
}
.gQyNyw .MuiSelect-icon {
    top: calc(50% - 12px) !important;
    right: 6px !important;
}
.MuiSvgIcon-root {
    fill: currentColor;
    width: 1em;
    height: 1em;
    display: inline-block;
    font-size: 1.5rem;
    transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    flex-shrink: 0;
    user-select: none;
}
asvg {
    vertical-align: middle;
}
.cautionBlock {
    margin-top: 16px;
}
.cautionBlock .caution {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: flex-start;
    margin-top: 10px;
}
.cautionBlock .caution .iconBlock {
    display: flex;
    -webkit-box-align: center;
    flex-basis: 18px;
    -webkit-box-pack: start;
    justify-content: flex-start;
    align-items: flex-start;
    position: relative;
    top: 3px;
    width: 18px;
}
.bRzrLL * {
    box-sizing: inherit;
}
.lnRRyF {
    margin: 0px;
    padding: 0px;
    width: 100%;
    color: rgb(136, 136, 136);
    letter-spacing: -0.2px;
    font-weight: 400;
    font-size: 12px;
    line-height: 18px;
}
.filebtn {
    display: flex;
    justify-content: flex-end;
    font-size: x-small;
    margin-top: 20px;
}
.checkbtn {
	display: flex;
    justify-content: space-around;
    font-size: x-small;
    margin-top: 20px;
}
.bodysize {
	width: 80%
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<form name="reportWrite" action="reportWrite.do" method="post">
		<div class="body">
		<div class="appbar">
			<div class="backward"><a href = "reportList.do">
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg" alt="뒤로가기"></a>
			</div>
		<div class="title">신고하기</div>
	</div>
	
	<div class="formBlock">
		<div class="titleBlock">
			<p class="sc-bdnxRM kHvtJd" color="#444444">신고 유형</p></div>
		<div class="MuiInputBase-root MuiInput-root sc-daBunf gQyNyw">
			<select class="MuiSelect-root MuiSelect-select MuiInputBase-input MuiInput-input" name="rp_type">
				<option value="" selected disabled>신고 유형을 선택해주세요.</option>
					<c:forEach var="rpDto" items="${ rp_list }">
						<c:choose>
							<c:when test="${ rpDto.op == 1 }"><option value = "${rpDto.op}">허위정보를 기재하였습니다.</option></c:when>
							<c:when test="${ rpDto.op == 2 }"><option value = "${rpDto.op}">부적절한 사진입니다.</option></c:when>
							<c:when test="${ rpDto.op == 3 }"><option value = "${rpDto.op}">부적절한 내용입니다.</option></c:when>
							<c:when test="${ rpDto.op == 4 }"><option value = "${rpDto.op}">규정을 위반하였습니다.</option></c:when>
							<c:when test="${ rpDto.op == 5 }"><option value = "${rpDto.op}">아기공룡에서 활동하기에 적절하지 않습니다.</option></c:when>
							<c:when test="${ rpDto.op == 6 }"><option value = "${rpDto.op}">기타</option></c:when>
						</c:choose>
					</c:forEach>
			</select>
		<svg class="MuiSvgIcon-root MuiSelect-icon" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
			<path d="M7 10l5 5 5-5z"></path>
		</svg>
	</div>
</div>

	<div class="formBlock">
		<div class="titleBlock">
			<p class="sc-bdnxRM kHvtJd" color="#444444">신고 내용</p>
		</div>
			<textarea class="sc-jUfyBS eSyZIh" placeholder="예) 부적절한 사진이 올라와있고, 협의되지 않은 무리한 요구를 했습니다." name="rp_content"></textarea>
	</div>
	
		<div class="cautionBlock">
			<div class="caution">
				<div class="iconBlock">
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/ic_warning.svg" alt="주의"></div>
				<p class="sc-bdnxRM lnRRyF" color="#888888">이 회원이 신고 대상에 해당하는지 다시 한번 확인하여 주시기 바랍니다. </p>
			</div>
			<div class="caution">
				<div class="iconBlock">
				<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/ic_warning.svg" alt="주의"></div>
				<p class="sc-bdnxRM lnRRyF" color="#888888">신고를 제출하면 아기공룡 팀에서 조사를 시작하며, 이때 사실 관계 확인을 위해 신고자에게 객관적인 자료를 요청할 수 있습니다.</p>
			</div>
				<div class="caution">
					<div class="iconBlock">
					<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/ic_warning.svg" alt="주의"></div>
					<p class="sc-bdnxRM lnRRyF" color="#888888">신고자 정보 및 신고 내용은 신고 대상에게 공개되지 않으나, 사실 관계 확인에 꼭 필요한 신고 내용의 일부는 언급될 수 있습니다.</p>
				</div>
				<div class="caution">
					<div class="iconBlock">
					<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/ic_warning.svg" alt="주의"></div>
					<p class="sc-bdnxRM lnRRyF" color="#888888">신고 대상은 아기공룡 이용 약관에 따라 활동 제한 등 불이익을 받을 수 있으며, 사실 관계 확인 시 쌍방 과실일 경우 신고자 또한 아기공룡 이용 약관에 따라 활동 제한 등 불이익을 받을 수 있습니다.</p>
				</div>
		</div>
			<div class = "filebtn">
				<div><p class="sc-bdnxRM kHvtJd" color="#444444">첨부파일(선택사항)</p></div>
				<div class ="filebtn2"><input type="file" name="upload" id="upload"></div>
			</div>
			<div class = "checkbtn">
			<button type="button" class="btn btn-outline-success" onclick="checkForm();">제출하기</button>
			</div>
			</div>
		</form>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>	
</body>
<script>
function checkForm(){
	var form = document.reportWrite;
	/**카테고리 유효성 검사*/
	if(form.rp_type.value==""||form.rp_type.value==null){
		alert('신고유형을 선택해주세요.');
		form.rp_type.select();
		return false;
	}
	form.submit();
} 
</script>
</html>