<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공룡톡</title>
</head>
<body>
	<h1>채팅폼</h1>
	<form onsubmit="submitChatMessageForm(this); return false;">
		<div>
			<input type="text" name="writer" placeholder="이름" 
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
	
	<h1>채팅 메세지</h1>
	<div class="chat-messages">
	
	</div>
	
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	console.clear();

	function submitChatMessageForm(form) {
		form.writer.value = form.writer.value.trim();
		
		if (form.writer.value.length == 0) {
			alert('이름을 입력해주세요');
			form.writer.focus();
			
			return;
		}
		
		form.body.value = form.body.value.trim();
		
		if (form.body.value.length == 0) {
			alert('내용을 입력해주세요');
			form.body.focus();
			
			return;
		}
		
		var writer = form.writer.value;
		var body = form.body.value;
		 
		var content = writer + " : " + body;
		
		form.body.value = '';
		form.body.focus();
		
		console.log(content);
		
		var html = '<div class="chat-message">' + content + '</div>';
		
		$('.chat-messages').append(html);
	}	
		
</script>
</html>