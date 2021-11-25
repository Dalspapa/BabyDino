<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>계정 찾기</h1>
   <section>
      <article>
         <form>
            <div>
               <button type="button" onclick="#">아이디 찾기</button>
               <button type="button" onclick="#">비밀번호 찾기</button>
            </div>
         </form>

         <form action="#">
            <div>
               <p>이름과 생년월일(YYYYMMDD),휴대폰 번호를 입력하시면, 가입한 계정 정보를 알려드립니다.</p>
            </div>

            <div>
               이름<input type="text" name="#" placeholder="이름을 입력하세요">
            </div>

            <div>
               생년월일<input type="text" name="#"
                  placeholder="생년월일 6자리(YYYYMMDD)를 입력하세요">
            </div>

            <div>
               전화번호<input type="text" name="#" placeholder="휴대폰 번호를 '-'없이  입력하세요" />
            </div>

            <div>
               <button>확인</button>
            </div>
         </form>
      </article>
   </section>
</body>
</html>