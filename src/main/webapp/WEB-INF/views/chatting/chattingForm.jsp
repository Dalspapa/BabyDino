<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공룡톡</title>
</head>
<body>
	<form action="" onsubmit="submitChatMessageForm(this); return false;">
		<div>
			<input type="text" name="writer" placeholder="이름">
		</div>
		<div>
			<input type="text" name="body" placeholder="내용">
		</div>
		<div>
			<button>작성</button>
		</div>
	</form>
</body>
<script type="text/javascript">
	function submitChatMessageForm(form) {
		var writer = form.writer.value;
		
		alert(writer);
	}
</script>
</html>