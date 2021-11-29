<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <section>
      <div>
         <h4>계정 정보</h4>
         <h6>입력하신 정보로 가입한 계정 정보입니다.</h6>
      </div>
      <div>
         ID : ${dto.id}
      </div>
      <div>
         <button>비밀번호 찾기</button>
         <button>로그인</button>
      </div>
   </section> 
</body>
</html>