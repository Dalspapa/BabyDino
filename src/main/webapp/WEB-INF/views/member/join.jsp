<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:url var="joinUrl" value="memberJoin.do">
	<c:param name="member_type">${ dto.member_type }</c:param>
</c:url> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공룡 가족되기</h1>
<section>
   <div>
      아기공룡 선생님! 우리 아이를 돌봐주세요 <br>
      <a href="memberJoin.do?member_type=2">부모님 회원가입></a>
   </div>
   <div>
       든든한 선생님이 되어줄게요!<br>
       <a href="memberJoin.do?member_type=4">선생님 회원가입></a>
   </div>
   <div>이미 아기공룡 가족이신가요? <br> 
      <a href="login.do">여기서 로그인하세요!</a>
    </div>
  
</section>
</body>
</html>