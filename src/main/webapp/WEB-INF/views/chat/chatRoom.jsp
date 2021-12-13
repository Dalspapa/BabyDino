<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<!-- 채팅ui -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<!-- 챗리스트 -->
	<style type="text/css">
		body {
		  padding-top: 0;
		  font-size: 12px;
		  color: #777;
		  background: #f9f9f9;
		  font-family: 'Open Sans',sans-serif;
		  margin-top:20px;
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
		
		.friend-list li a .friend-name, 
		.friend-list li a .friend-name:hover {
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
		  padding: 60px 20px 115px;
		}
		
		.chat {
		    list-style: none;
		    margin: 0;
		}
		
		.chat-message{
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
		  box-shadow: 0 1px 1px rgba(0,0,0,.05);
		  -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
		  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
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
		/*
		  position: fixed;
		  bottom: 0;
		  left: 444px;
		  right: 0;
		*/
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
	
	
	
		
.chat-message {
    position: relative;
}	
.messageUl {
    padding:0;
}	    
.message {
	
}
.message span{
	display: block;
}
.message #id {
    font-weight: bold;
    font-size: 13px;
}
.text {
	border: 1px solid gray;
    padding: 10px;
    border-radius: 5px;
    margin: 5px 0;
}
.sender-right-name {
	text-align: right;
} 
.receiver-left-name {
	text-align: left;
}
 
.sender-right-Text {
    margin-left: auto;
    width: 30%;
}
.receiver-left-Text {
    margin-right: auto;
    width: 30%;
}

.left {
	left:0;
}	
.right {
	right:0;
}		
		
		
	</style>
	
</head>

<c:set var="sessionIdx" value="${ sessionScope.saveIdx }" />


<body>
	
	<!-- chat test -->
	
	
	<h1>${ sessionScope.roomIdx }</h1>
	
	
    <!-- selected chat -->
   	<div class="bg-white ">
       <div class="chat-message">
           <ul id="messageUl" class="chat">
      
              <!-- 내가보낸 메시지 영역 -->
               <li id="senderMessage" class="message right">
	               	<span id="name" class="sender-right-name">이은사</span>
	               	<span id="sendertext" class="text sender-right-Text">테스트 텍스트</span>
               </li>
               
               <!-- 남이 보낸 메시지 영역 -->
               <li id="receiverMessage" class="message left">
	               	<span id="name" class="receiver-left-name">남이름</span>
	               	<span id="receivertext" class="text receiver-left-Text">안녕하세요 ㅎㅎ</span>
               </li>
               
               
               <!-- 내가보낸 메시지 영역 -->
               <li id="senderLi" class="right clearfix">
				<span class="chat-img pull-right">
					<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">
				</span>
               	<div class="chat-body clearfix">
               		<div class="header">
               			<strong class="primary-font">은사</strong>
               			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
               		</div>
               		<p id="senderMessage">
               			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. 
               		</p>
               	</div>
               </li>
               
               <!-- 상대방이 보낸 메시지 영역 -->
               <li class="left clearfix">
               	<span class="chat-img pull-left">
               		<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">
               	</span>
               	<div class="chat-body clearfix">
               		<div class="header">
               			<strong class="primary-font">채팅파트너이름</strong>
               			<small id="sendTime" class="pull-right text-muted"><i class="fa fa-clock-o"></i>보낸시간</small>
               		</div>
               		<p id="receiverMessage">
               			Lorem ipsum dolor sit amet, consectetur adipiscing elit.
               		</p>
               	</div>
               </li>
               
                
               
                          
           </ul>
           
      
	<form name="fm" method="post" onsubmit="return false;">
		<textarea rows="15" cols="35" name="content1"></textarea><br>
	<!-- 	입력 : <input type="text" name="" autocomplete="off" onkeyup="if(window.event.keyCode==13){show()}" />
		<input type="button" value="전송" onclick="show()" /> <br/><br/> -->
		<input type="button" value="대화참여" onclick="yongConnect()"/>
		<input type="button" value="대화종료" onclick="yongClose()"/>
	    
           
           
       
       <div class="chat-box bg-white">
       	<div class="input-group">
       		<input type="text" name="write" class="form-control border no-shadow no-rounded" placeholder="Type your message here" 
       		autocomplete="off" onkeyup="if(window.event.keyCode==13){show()}">
       		<span class="input-group-btn">
       			<button class="btn btn-success no-rounded" type="button" onclick="show()">Send</button>
       		</span>
       	</div><!-- /input-group -->	
       </div> 
	</form>            
	</div>

</body>


<!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 제이쿼리 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<!-- 채팅 테스트 -->
<script type="text/javascript">

	var ws;
	
	$(function() {
		yongConnect();
	});
	
	
	function yongConnect() {
		if(ws == null || ws.readyState === WebSocket.CLOSED) {
			ws = new WebSocket('ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/dino-ws?roomIdx=${sessionScope.roomIdx}'); //사용자 요청정보. 로컬호스트 대신 아이피주소 사용.
			ws.onmessage = function(evt) {
				document.fm.content.value += evt.data; // 작동함.
			};
			ws.onopen = onOpen;
			ws.onclose = onClose;
		}
	}
	
	function onOpen(evt) {
		/* document.fm.content.value = '대화참여함\n'; */
	}
	
	function onClose(evt) {
		/* document.fm.content.value = '대화종료함\n'; */
	}
	
	function show() {
		
		if(ws == null || ws.readyState === WebSocket.CLOSED) {
			return alert("대화방이 닫혀있습니다.");
		}
		
		var senderName = '${sessionScope.saveName}님: ';
		var msg = document.fm.write.value + '\n';
		var messageUl = document.getElementById('messageUl');
		var senderMessage = document.getElementById('senderMessage');
			senderMessage.innerHTML = msg;
		/* document.fm.content.value += msg; */ 
		
		var chatLi = $('div.chat-message ul#messageUl li').clone();
		
		var messageBox = messageUl.innerHTML = `
       	  <li id="senderLi" class="right clearfix">
			<span class="chat-img pull-right">
				<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">
			</span>
           	<div class="chat-body clearfix">
           		<div class="header">
           			<strong class="primary-font">은사</strong>
           			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
           		</div>
           		<p id="senderMessage"></p>
           	</div>
           </li>
		`;
		
		ws.send(messageBox);
		
		document.fm.write.value = '';
		document.fm.write.focus();
		
	}
	
	function yongClose() {
		if(ws != null && ws.readyState === WebSocket.OPEN) {
			ws.close();
		}
	}
	
</script>

<!-- 보낸 시간 구하기 -->
<script>
	
	var currentNow = new Date();
	var theHours = currentNow.getHours();
	var theMinutes = currentNow.getMinutes();
	//보낸시간.
	var sendTime;
	
	if (theHours > 12) {
		
		theHours = theHours -12
		sendTime = " 오후 " + theHours + ":" + theMinutes;
		
		$("#sendTime").text(sendTime);
		
	} else {
		
		sendTime = " 오전 " + theHours + ":" + theMinutes;
		$("#sendTime").text(sendTime);
		
	}
	
</script>


</html>