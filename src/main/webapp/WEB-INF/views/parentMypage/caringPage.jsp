<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<style type="text/css">
/* reset */
* {
  margin: 0;
  padding: 0;
}
li {
  list-style: none;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
a:link, a:visited {
  color: #333;
  text-decoration: none;
}
h2 {
  font-size: 0;
  line-height: 0;
  width: 0px;
  height: 0px;
  position: absolute;
  left: -9999px;
}
.wrapper {
   width: 70%;
   margin: 80px auto;
   text-align: center;
   font-family: 'S-Air';
}
/* userInfo 사용자 상태영역 */
.userInfo {
  display: flex;
  justify-content: center;
  padding: 2em 0;
}
.userInfo .userImg {
  border: 5px solid rgb(60, 221, 73);
  width: 80px;
  height: 80px;
  border-radius: 50%;
  text-align: center;
}
.userInfo .userImg img {
  width: 100%;
  vertical-align: middle;
}
.userInfo .nameText {
  line-height: 80px;
  margin-left: 20px;
}

.userLiveWrap {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  padding: 2em 0;
}
.userLive {
  display: flex;
  justify-content: space-between;
  margin-bottom: 30px;
}
.userLive > div {
  width: 14%;
  margin-right: 10px;
  text-align: center;
}
.userLive > div:last-child {
  margin-right: 0;
}
.userLive .aa {
 background-color: rgb(56, 173, 101);
 padding: 2rem 0;
 text-align: center;
 border-radius: 10px;
 color: #fff;
}
.aa + button {
  width: 80%;
  margin-top: 10px;
}
.progress {
  width: 100%;
}
.progress-center{
   display: flex;
   justify-content: center;
}

.topCont {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  padding: 1em .5em;
  font-size: 1.1em;
}
.item1 {
  display: flex;
  justify-content: center;
  padding: 1.7em 0;
}
.item1 .childInfo {
  margin-left: 1em;
  line-height: 12rem;
}
.item1 .childImg {
  width: 200px;
  height: 200px;
  background-color: #ccc;
  border-radius: 50%;
  overflow: hidden;
}


.item3 {
   background-color: #f0f0f0;
   padding: 20px 10px;
   margin-bottom: 20px;
   border-radius: 5px;
}
.item3 li {
  margin-bottom: 20px;
}
.item3 li:last-child {
  margin-bottom: 0;
}
.item3 h3 {
  font-size: 16px;
  font-weight: 500;
}
.contentBox {
  background-color: #fff;
  border-radius: 5px;
  padding: 10px;
  box-sizing: border-box;
  word-break: keep-all;
}
.ageWrap {
  display: flex;
  justify-content: space-around;
}
.circle-div{
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background-color: #d9fbf7;
  text-align: center;
  line-height: 60px;
  font-size: 14px;
  color: rgb(50, 179, 136);
  font-weight: 500;
}

.flex-list {
  padding-left: 0px;
}
.flex-list li {
  display: flex;
}
.contentBox .flex-list li {
  font-size: 14px;
}

.activeList {
  text-align: center;
  display: flex;
}
.activeList > div img {
  display: block;
  margin: 0 auto 10px;
}

.box div{
   width: 80px;
   height: 80px;
   background-color: #caaddb;
   display: table-cell;
    vertical-align: middle; /* 수직정렬이 안됨 ㅜㅡㅜ */
    text-align: center;
    border-radius: 20px 20px;
}

section{
    padding: 10px;
    margin: 1rem;
}

@media all and (min-width: 720px) and (max-width: 1280px) {
  body {
    background-color: skyblue;
  }
}
@media all and (min-width: 320px) and (max-width: 720px) {
  body {
    background-color: #333;
  }
}
.star {
  position: relative;
  font-size: 2rem;
  color: #ddd;
}

.star input {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  opacity: 0;
  cursor: pointer;
}

.star span {
  width: 0;
  position: absolute;
  left: 0;
  color: red;
  overflow: hidden;
  pointer-events: none;
}
</style>

</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

  <!-- chat url -->
	<c:url var="enterChatRoom" value="enterChatRoom.do">
	    <c:param name="partnerIdx" value="${ dto.teacher_member_idx }"/>
	</c:url>

  <div class="wrapper" style="margin-top:80px;">
    <section class="userInfoWrap">
      <h2>사용자 상태 영역</h2>
      <div class="userLiveWrap">
        <div class="userLive">
          <div>
            <div class="aa">수락대기</div> 
            <button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('${enterChatRoom}', 'chatRoom','width=600, height=700'))">신청취소</button>
          </div>
          <div>
            <div class="aa">상담중</div>
            <button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('${enterChatRoom}', 'chatRoom','width=600, height=700'))">신청취소</button>
          </div>
          <div>
            <div class="aa">상담완료</div>
            <button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('${enterChatRoom}', 'chatRoom','width=600, height=700'))">재상담</button>
          </div>
          <div>
            <div class="aa">결제대기</div>
            <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">결제하기</button>
          </div>
          <div>
            <div class="aa">결제완료</div>
            <button type="button" class="btn btn-outline-success">결제취소</button>
          </div>
          <div>
            <div class="aa">돌봄중</div>
            <button type="button" class="btn btn-outline-success" onclick="javascript:void(window.open('chatList.do', 'chatList','width=600, height=700'))">채팅하기</button>
          </div>
          <div>
            <div class="aa">돌봄완료</div>
            <button type="button" class="btn btn-outline-success" onclick="writeReview();">후기작성</button>
          </div>
        </div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">결제정보</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ${dto.r_cost}원을 계산 하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
		        <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="requestPaymentApi('kakaopay')">결제하기</button>
		      </div>
		    </div>
		  </div>
		</div>
        <!-- progress bar -->
        <%-- <div class="progress-center">
          <div class="progress">
          		<c:if test="${ dto.status == 1 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 14%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
				<c:if test="${ dto.status == 2 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 28%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          		<c:if test="${ dto.status == 3 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 42%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          		<c:if test="${ dto.status == 4 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 56%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          		<c:if test="${ dto.status == 5 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 70%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          		<c:if test="${ dto.status == 6 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 84%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          		<c:if test="${ dto.status == 7 }">
          			<div class="progress-bar bg-success" role="progressbar" style="width: 100%; height: 30px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
          		</c:if>
          </div>
        </div> 
      </div>--%>
    </section>
    <section>
      <div class="topCont d-flex justify-content-between">
      	<div></div>
        <div>${ dto.k_name }</div>
        <div></div>
      </div>
      <div class="item1">
        <div class="childImg"><img alt="아이기본사진" src="./common/img/basic/basicboy.png" style="width: auto; max-height: 100%;"></div>
        <div class="childInfo">
          ${ dto.k_introduce } /
            <c:if test="${ dto.k_gender==2 }">
				남자아이
			</c:if>
			<c:if test="${ dto.k_gender==1 }">
				여자아이
			</c:if>
        </div>
      </div>
      <ul class="item3">
        <li>
          <h3>신청내용</h3>
          <div class="contentBox">
            ${ dto.k_require }
          </div>
        </li>
        <li>
          <h3>원하는 시터 나이</h3>
          <div class="contentBox ageWrap">
            <c:set var="timg" value="${ dto.teacher_type }" />
			<c:forEach items="${fn:split(timg, ',') }" var="item">
				<c:if test="${item == '1'}"><div class="circle-div">#20대</div></c:if>
				<c:if test="${item == '2'}"><div class="circle-div">#30대</div></c:if>
				<c:if test="${item == '3'}"><div class="circle-div">#40대</div></c:if>
				<c:if test="${item == '4'}"><div class="circle-div">#50대</div></c:if>
				<c:if test="${item == '5'}"><div class="circle-div">#60대</div></c:if>
			</c:forEach>
          </div>
        </li>
      </ul>
      <ul class="item3">
        <li>
          <h3>아이정보</h3>
          <div class="contentBox">
            <ul class="flex-list">
              <li>
                <div>${dto.k_tendency}</div>
              </li>
            </ul>
          </div>
        </li>
        <li>
          <h3>원하는 활동</h3>
          <div class="contentBox activeList">
            <div>
              <c:set  var="careType" value="${dto.k_care_type}" />
				<c:forEach items="${fn:split(careType, ',') }" var="item">
					#${item}&nbsp;&nbsp;
				</c:forEach>
            </div>
          </div>
        </li>
      </ul>
    </section>
  </div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script>
function writeReview(){
	location.href = "writeReviewForm.do?r_idx=${dto.r_idx}";
}
/** 카카오페이 결제 api */
var IMP = window.IMP;
IMP.init('imp65129698'); // 가맹점 식별코드

function requestPaymentApi(type){

	IMP.request_pay({
		pg : type,	 							// 결제방식
		pay_method : 'card', 					// 결제 수단
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : '주문명: 결제 테스트', 				// order 테이블에 들어갈 주문명 혹은 주문 번호(TODO 상품명으로바꿔야됨)
		amount : ${dto.r_cost}, 							// 결제 금액		(TODO 결제금액으로 바꿔야됨)
		buyer_email : 'dlwodlf000@naver.com', 	// 구매자 email 	(TODO 회원정보 이메일로바꿔야됨)
		buyer_name : '이동현', 					// 구매자 이름		(TODO 회원정보 이름으로)
		buyer_tel : '010-9957-6872', 			// 구매자 전화번호	(TODO 회원정보 연락처)
		buyer_addr : '서울시 영등포구', 			// 구매자 주소T	(TODO 회원정보 주소)
		buyer_postcode : '1234', 				// 구매자 우편번호	(TODO 회원정보 우편번호)
	}, function(res) {
		if (res.success) { // 성공시
			console.log("---- rsp : ", res);
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + res.imp_uid;
			msg += '상점 거래ID : ' + res.merchant_uid;
			msg += '결제 금액 : ' + res.paid_amount;
			msg += '카드 승인번호 : ' + res.apply_num;
			location.href = 'statusUpdate.do?idx=${dto.r_idx}';
		} else { // 실패시
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + res.error_msg;
		}

		return false;


		console.log('-- msg: ', msg);
		location.href = 'kakaoPayOk.do?msg=' + msg;
	});
}
</script>
</body>
</html>