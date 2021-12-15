<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
<h2>당신은 어떤 분인가요?</h2>
<h3>선생님이에요</h3>
   <input type="radio" name="teacher" value="선생님" width="100" />선생님이에요
   <p>보육교사, 유치원 정교사, 특수학교(유치원/초등)정교사, 초등학교 정교사 자격증을 보유하고 있는 경우</p>
<h3>엄마예요</h3>
   <input type="radio" name="mom" value="엄마" width="100" />엄마예요
   <p>본인의 아이를 키우며 육아 경험이 있는 경우</p>
<h3>대학생이에요</h3>
   <input type="radio" name="student" value="대학생" width="100" />대학생이에요
   <p>현재 대학교에서 재학 및 휴학 중인 경우</p>   
<h3>일반인이에요</h3>
   <input type="radio" name="nomal" value="일반인" width="100" />일반인이에요
   <p>위 3가지 경우에 해당하지 않으나 악어선생님으로 활동하고 싶은 경우</p>      
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>