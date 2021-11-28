<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공룡톡</title>
</head>
<body>
	<h1>${ roomId }번방</h1>
		<form onsubmit="submitChatMessageForm(this); return false;">
			<div>
				<input type="text" name="writer" placeholder="작성자" 
				autocomplete="off" />
			</div>
			<div>
				<input type="text" name="body" placeholder="내용" 
				autocomplete="off" />
			</div>
			<div>
				<input type="submit" value="작성" />
			</div>
		</form>
		
		<div class="chat-messages">
		
		</div>
		
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var Chat__roomId = parseInt('${param.roomId}');
	/* var Chat__roomId = ${param.roomId}; */

	//폼이 발송되기 전 한번씩 실행(엔터 한번 칠때마다)
	function Chat__addMessage(writer, body) {
		$.post(
			'./doAddMessage.do',
			{
				roomId:Chat__roomId,
				writer:writer,
				body:body
			},
			function (data) {
				
			},
			'json'
		);
	}

	function Chat__drawMessage(chatMessage) {
		var html = chatMessage.writer + ' : ' + chatMessage.body;
		
		$('.chat-messages').prepend('<div>' + html + '</div>');
	}
	
	var Chat__lastLoadeMessagId = 0;
	
	function Chat__loadNewMessages() {
		$.get(
			'./getMessagesFrom.do',
			{
				roomId:Chat__roomId,
				from:Chat__lastLoadeMessagId + 1
			},
			function (data) {
				for (var i = 0; i < data.messages.length; i++) {
					Chat__drawMessage(data.messages[i]);
					
					Chat__lastLoadeMessagId = data.messages[i].id;
				}
			},
			'json'
		);
	}
	
	setInterval(Chat__loadNewMessages, 1000);
	
	function submitChatMessageForm(form) {
		form.writer.value = form.writer.value.trim();
		
		if (form.writer.value.length == 0) {
			alert('작성자를 입력해주세요.');
			form.writer.focus();
			
			return false;
		}
		
		if (form.body.value.length == 0) {
			alert('내용을 입력해주세요.');
			form.body.focus();
			
			return false;
		}
		
		var writer = form.writer.value;
		var body = form.body.value;
		
		form.body.value = '';
		form.body.focus();
		
		Chat__addMessage(writer, body);
	}
</script>
</html>












