<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아  기  공  룡</title>

	<!-- 채팅ui -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	
	<!-- 챗리스트 -->
	<style type="text/css">
	body {
		padding-top: 0;
		font-size: 12px;
		color: #777;
		background: #f9f9f9;
		font-family: 'Open Sans', sans-serif;
		margin-top: 20px;
	}
	
	.bg-white {
		background-color: #fff;
	}
	
	.friend-list {
		list-style: none;
		margin-left: -40px;
	}
	
	.friend-list li {
		border-bottom: 1px solid #eee;
	}
	
	.friend-list li a img {
		float: left;
		width: 45px;
		height: 45px;
		margin-right: 10px;
	}
	
	.friend-list li a {
		position: relative;
		display: block;
		padding: 10px;
		transition: all .2s ease;
		-webkit-transition: all .2s ease;
		-moz-transition: all .2s ease;
		-ms-transition: all .2s ease;
		-o-transition: all .2s ease;
	}
	
	.friend-list li.active a {
		background-color: #f1f5fc;
	}
	
	.friend-list li a .friend-name, .friend-list li a .friend-name:hover {
		color: #777;
	}
	
	.friend-list li a .last-message {
		width: 65%;
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	
	.friend-list li a .time {
		position: absolute;
		top: 10px;
		right: 8px;
	}
	
	small, .small {
		font-size: 85%;
	}
	
	.friend-list li a .chat-alert {
		position: absolute;
		right: 8px;
		top: 27px;
		font-size: 10px;
		padding: 3px 5px;
	}
	
	.chat-message {
		padding: 60px 20px 20px;
	}
	
	.chat {
		list-style: none;
		margin: 0;
	}
	
	.chat-message {
		background: #f9f9f9;
	}
	
	.chat li img {
		width: 45px;
		height: 45px;
		border-radius: 50em;
		-moz-border-radius: 50em;
		-webkit-border-radius: 50em;
	}
	
	img {
		max-width: 100%;
	}
	
	.chat-body {
		padding-bottom: 20px;
	}
	
	.chat li.left .chat-body {
		margin-left: 70px;
		background-color: #fff;
	}
	
	.chat li .chat-body {
		position: relative;
		font-size: 11px;
		padding: 10px;
		border: 1px solid #f1f5fc;
		box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
		-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
		-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	}
	
	.chat li .chat-body .header {
		padding-bottom: 5px;
		border-bottom: 1px solid #f1f5fc;
	}
	
	.chat li .chat-body p {
		margin: 0;
	}
	
	.chat li.left .chat-body:before {
		position: absolute;
		top: 10px;
		left: -8px;
		display: inline-block;
		background: #fff;
		width: 16px;
		height: 16px;
		border-top: 1px solid #f1f5fc;
		border-left: 1px solid #f1f5fc;
		content: '';
		transform: rotate(-45deg);
		-webkit-transform: rotate(-45deg);
		-moz-transform: rotate(-45deg);
		-ms-transform: rotate(-45deg);
		-o-transform: rotate(-45deg);
	}
	
	.chat li.right .chat-body:before {
		position: absolute;
		top: 10px;
		right: -8px;
		display: inline-block;
		background: #fff;
		width: 16px;
		height: 16px;
		border-top: 1px solid #f1f5fc;
		border-right: 1px solid #f1f5fc;
		content: '';
		transform: rotate(45deg);
		-webkit-transform: rotate(45deg);
		-moz-transform: rotate(45deg);
		-ms-transform: rotate(45deg);
		-o-transform: rotate(45deg);
	}
	
	.chat li {
		margin: 15px 0;
	}
	
	.chat li.right .chat-body {
		margin-right: 70px;
		background-color: #fff;
	}
	
	.chat-box {
		padding: 15px;
		border-top: 1px solid #eee;
		transition: all .5s ease;
		-webkit-transition: all .5s ease;
		-moz-transition: all .5s ease;
		-ms-transition: all .5s ease;
		-o-transition: all .5s ease;
	}
	
	.primary-font {
		color: #3c8dbc;
	}
	
	a:hover, a:active, a:focus {
		text-decoration: none;
		outline: 0;
	}
	
	#chat-scroll {
		padding-left: 0;
		margin: 0;
		list-style-type: none;
		display: flex;
		flex-direction: column-reverse;
		overflow-y: auto;
		height: 535px;
		border-top: 2px solid #fff;
		border-bottom: 2px solid #fff;
	}
	
	#messageSend {
		margin-top: 23px;
	}
	
	.center {
		text-align: center;
	}
	
	.chatSubject {
		font-size: x-large;
	}
	.backIcon {
		color: #198754;
    	text-decoration: none;
	}
	</style>

</head>

<body>
	<c:set var="sType" value="${ saveMemberType }" />
	<span>
		<p class="chatSubject center">
			<a href="chatList.do" class="backIcon">
				<i class="fas fa-arrow-circle-left"></i>
			</a>
			${ sessionScope.saveName }님의 채팅방
		</p>
	</span>
    <!-- selected chat -->
   	<div class="bg-white ">
       <div class="chat-message" id="chat-scroll">
           <ul class="chat" >
               <!-- 기존 채팅 리스트 불러오기 -->
               <c:forEach var="vo" items="${ messageList }">

               	<!-- 필요한 변수들 -->
               	<c:set var="sessionIdx" value="${ sessionScope.saveIdx }" />
               	<c:set var="memberIdx" value="${ vo.d_member_idx }" />
               	<c:set var="message" value="${ vo.message }" />
               	<c:set var="name" value="${ vo.name }" />
               	<c:set var="memberType" value="${ vo.member_type }" />
               	<c:set var="sendTime" value="${ vo.send_time }" />

               	<!-- 내가 보낸메시지 오른쪽 -->
               	<c:if test="${ sessionIdx == memberIdx }">
	              <li class="right clearfix">
               		<span class="chat-img pull-right" id="setPic">
               		<c:choose>
						<c:when test="${ memberType == 1 }">
							 <img src="https://bootdey.com/img/Content/user_1.jpg" alt="">
						</c:when>
						<c:when test="${ memberType == 2 || memberType == 3 || memberType == 8 }">
							<img src="https://bootdey.com/img/Content/user_6.jpg" alt="">
						</c:when>
						<c:otherwise>
							 <img src="https://bootdey.com/img/Content/user_2.jpg" alt="">
						</c:otherwise>
					</c:choose>
               		</span>

	               	<div class="chat-body clearfix">
	               		<div class="header">
	               			<strong id="setName" class="primary-font">${ name }</strong>
	               			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> ${ sendTime }</small>
	               		</div>
	               		<p id="">
	               			${ message }
	               		</p>
	               	</div>
                 </li>
	        	</c:if>

	        	<!-- 상대방 보낸메시지 왼쪽 -->
	        	<c:if test="${ sessionIdx != memberIdx }">
	              <li class="left clearfix">
               		<span class="chat-img pull-left" id="setPic">
               		<c:choose>
						<c:when test="${ memberType == 1 }">
							 <img src="https://bootdey.com/img/Content/user_1.jpg" alt="">
						</c:when>
						<c:when test="${ memberType == 2 || memberType == 3 || memberType == 8 }">
							<img src="https://bootdey.com/img/Content/user_6.jpg" alt="">
						</c:when>
						<c:otherwise>
							 <img src="https://bootdey.com/img/Content/user_2.jpg" alt="">
						</c:otherwise>
					</c:choose>
               		</span>

	               	<div class="chat-body clearfix">
	               		<div class="header">
	               			<strong id="setName" class="primary-font">${ name }</strong>
	               			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> ${ sendTime }</small>
	               		</div>
	               		<p id="">
	               			${ message }
	               		</p>
	               	</div>
                 </li>

	        	</c:if>
               </c:forEach>
               <!-- 기존 채팅 리스트 불러오기  끝 -->
           </ul>
       </div>
       <!-- 메시지 보내기 -->
		<form name="fm" method="post" onsubmit="return false;">
			<div class="chat-box bg-white">
				<div class="input-group">

					<input type="text" name="write" class="form-control border no-shadow no-rounded"
						placeholder="메시지를 입력해 주세요." autocomplete="off"
						onkeyup="if(window.event.keyCode==13){sendMessage()}">

					<span class="input-group-btn">
						<button class="btn btn-success no-rounded" type="button" onclick="sendMessage()">Send</button>
					</span>

				</div>
			</div>
		</form>
		<!-- 메시지 보내기 닫힘-->
		<div>
			<a></a>
		</div>
		<c:if test="${ sType == 10 }">
			<div class="center">
				<strong><i class="far fa-handshake"></i> 상담이 완료되면 "상담완료" 라고 채팅방에 입력해 주세요 :)</strong>
			</div>
		</c:if>
	</div>
</body>


<!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 제이쿼리 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<!-- 채팅 테스트 -->
<script type="text/javascript">

	var ws;

	//챗룸 입장시 웹소켓 연결
	$(function() {
		yongConnect();
	});

	//소켓연결
	function yongConnect() {
		if(ws == null || ws.readyState === WebSocket.CLOSED) {
			ws = new WebSocket('ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/dino-ws?roomIdx=${sessionScope.roomIdx}'); //사용자 요청정보. 로컬호스트 대신 아이피주소 사용.
			//연결되면(또는 상대가 메시지를 보내면) 핸들러에서 메시지 받음.
			ws.onmessage = function(evt) {

				var str = evt.data;
				var strArr = str.split(',');

				var characterType = '';
				
				if (strArr[1] == 1) {
					characterType = '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
				} else if (strArr[1] == 2 || strArr[1] == 3 || strArr[1] == 8) {
					characterType = '<img src="https://bootdey.com/img/Content/user_6.jpg" alt="">';
				} else {
					characterType = '<img src="https://bootdey.com/img/Content/user_2.jpg" alt="">';
				}

				var talkHtml = '';
				
				//선생님이 상담완료라고 입력시 마이페이지 이동 링크 출력.
				if (strArr[2] === "상담완료\n" && strArr[1] == 10) {
					talkHtml += '<li class="left clearfix">';
					talkHtml += 	'<span class="chat-img pull-left">';
					talkHtml += 	characterType;
					talkHtml += '</span>';
					talkHtml += '<div class="chat-body clearfix">';
					talkHtml += 	'<div class="header">';
					talkHtml += 		'<strong class="primary-font">' + strArr[0] + '</strong>';
					talkHtml += 		'<small class="pull-right text-muted">';
					talkHtml += 			'<i class="fa fa-clock-o"></i>';
					talkHtml += 			fnGetTime();
					talkHtml += 		'</small>';
					talkHtml += 	'</div>';
					talkHtml += 	'<a href="proceedingMain.do?idx=${sessionIdx}" target="_blank">';
					talkHtml += 		'상담이 완료되었습니다. 메시지를 누르면 마이페이지로 이동합니다.';
					talkHtml += 	'</a>';
					talkHtml += '</div>';
					talkHtml += '</li>';
					
					$('.chat').append(talkHtml);
					
				} else {
					talkHtml += '<li class="left clearfix">';
					talkHtml += 	'<span class="chat-img pull-left">';
					talkHtml += 	characterType;
					talkHtml += '</span>';
					talkHtml += '<div class="chat-body clearfix">';
					talkHtml += 	'<div class="header">';
					talkHtml += 		'<strong class="primary-font">' + strArr[0] + '</strong>';
					talkHtml += 		'<small class="pull-right text-muted">';
					talkHtml += 			'<i class="fa fa-clock-o"></i>';
					talkHtml += 			fnGetTime();
					talkHtml += 		'</small>';
					talkHtml += 	'</div>';
					talkHtml += 	'<p>';
					talkHtml += 			strArr[2];
					talkHtml += 	'</p>';
					talkHtml += '</div>';
					talkHtml += '</li>';
					
					$('.chat').append(talkHtml);					
				
				}
				
			};
			
			ws.onopen = onOpen;
			ws.onclose = onClose;
		}
	}

	//방 입장하면 기존 대화목록 여기서 불러냄.
	function onOpen(evt) {
	}

	//대화종료.
	function onClose(evt) {
	}

	function sendMessage() {

		if(ws == null || ws.readyState === WebSocket.CLOSED) {
			return alert("대화방이 닫혀있습니다.");
		}

		var senderName = '${sessionScope.saveName}';
		var d_member_idx = '${ sessionScope.saveIdx }';
		var d_chatroom_idx = '${sessionScope.roomIdx}';
		var memberType = '${sessionScope.saveMemberType}';

		var message = document.fm.write.value + '\n';
		var send_time = fnGetTime();

		var jsonParams = {d_member_idx   : d_member_idx,
						  d_chatroom_idx : d_chatroom_idx,
						  message        : message,
						  send_time      : send_time
						 };
		console.log("### INFO jsonParams : ", jsonParams);

		$.ajax({
			method : 'POST',
			url : '/saveChatMessage.do',
			data : jsonParams,
			dataType : 'json',
			success : function (result) {
				console.log('메시지 저장 성공');
			},
			error : function() {
				console.log('메시지 저장 실패' + message);
        	}

		});


		var typeChar = '';
		if (memberType == 1) {
			typeChar = '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
		} else if (memberType == 2 || memberType == 3 || memberType == 8) {
			typeChar = '<img src="https://bootdey.com/img/Content/user_6.jpg" alt="">';
		} else {
			typeChar = '<img src="https://bootdey.com/img/Content/user_2.jpg" alt="">';
		}

		$('.chat').append(

	           '<li class="right clearfix">' +
                    '<span class="chat-img pull-right">' +
                    typeChar +
               	'</span>' +
               	'<div class="chat-body clearfix">' +
               		'<div class="header">' +
               			'<strong class="primary-font">' + senderName + '</strong>' +
               			'<small class="pull-right text-muted">' +
               				'<i class="fa fa-clock-o"></i>' + fnGetTime() +
               			'</small>' +
               		'</div>' +
               		'<p>'
               			+ message +
               		'</p>' +
               	'</div>' +
               '</li>'

		);
		
		if (message === "상담완료\n" && memberType == 10) {
			$('.chat').append(
	
			           '<li class="right clearfix">' +
		                    '<span class="chat-img pull-right">' +
		                    typeChar +
		               	'</span>' +
		               	'<div class="chat-body clearfix">' +
		               		'<div class="header">' +
		               			'<strong class="primary-font">' + senderName + '</strong>' +
		               			'<small class="pull-right text-muted">' +
		               				'<i class="fa fa-clock-o"></i>' + fnGetTime() +
		               			'</small>' +
		               		'</div>' +
		               		'<a href="t_proceedingMain.do?idx=${sessionIdx}" target="_blank">'
		               			+ '메시지를 클릭하면 마이페이지로 이동합니다 :) 상담 완료 버튼을 눌러주세요 !' +
		               		'</a>' +
		               	'</div>' +
		               '</li>'
	
				);
			
		}

		//핸들러로 메시지 보냄.
		ws.send(message);

		document.fm.write.value = '';
		document.fm.write.focus();

	};

	function yongClose() {
		if(ws != null && ws.readyState === WebSocket.OPEN) {
			ws.close();
		}
	}

	//시간구하기
	function fnGetTime() {
		var currentNow = new Date();
		var theHours = currentNow.getHours();
		var theMinutes = currentNow.getMinutes();
		var sendTime;
		
		if (theMinutes.toString().length == 1) {
			theMinutes = "0" + theMinutes;
		}

		if (theHours > 12) {
			theHours = theHours - 12
			sendTime = " 오후 " + theHours + ":" + theMinutes;
		} else {
			sendTime = " 오전 " + theHours + ":" + theMinutes;
		}

		return sendTime;
	}

</script>
</html>