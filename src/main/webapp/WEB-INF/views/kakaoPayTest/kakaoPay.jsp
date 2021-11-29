<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>결제 Api 테스트</h1>
		<img src="${pageContext.request.contextPath }/common/img/kakaoPay1.png" style="cursor: pointer; width: 100px; heihgt: 40px;" onclick="requestPaymentApi('kakaopay')"/>
	</div>
	
	<div id="map" style="width:500px;height:400px;"></div>


</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=799ea40d2e8454d64bcb4e4aae11d125"></script>
<script>
	
	
	/** 카카오 지도 api */
	/* var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.51795334189508, 126.89483972060654), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	 */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.51795334189508, 126.89483972060654), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.51795334189508, 126.89483972060654); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);    
	
	/** 카카오페이 결제 api */
	var IMP = window.IMP;
	IMP.init('imp65129698'); // 가맹점 식별코드
	
	function requestPaymentApi(type){
		
		IMP.request_pay({
			pg : type,	 							// 결제방식
			pay_method : 'card', 					// 결제 수단
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명: 결제 테스트', 				// order 테이블에 들어갈 주문명 혹은 주문 번호(TODO 상품명으로바꿔야됨)
			amount : 100, 							// 결제 금액		(TODO 결제금액으로 바꿔야됨)
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
</html>