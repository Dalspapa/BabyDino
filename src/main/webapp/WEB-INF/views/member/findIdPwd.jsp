<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID / PWD 찾기</title>
</head>
<body>
	<h1>계정 찾기</h1>
   <section>
      <article>
         <form>
            <div>
               <button type="button" onclick="div_find_id();">아이디 찾기</button>
               <button type="button" onclick="div_find_pwd();">비밀번호 찾기</button>
               <!-- <button type="button" name="비밀번호찾기" value="비밀번호찾기" onclick="find_id()"> -->
            </div>
         </form>
      <!-- 아이디 계정찾기 -->
            <div id="find_id">
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
                   <a href="findIdCheck.do"><button>다음으로</button></a>
                </div>
            </div>

         <!-- 비밀번호 계정찾기 -->
            <div id="find_pwd">
                <div>
                   <p>이름과 생년월일(YYYYMMDD),휴대폰 번호를 입력하시고 인증을 완료해주세요.</p>
                </div>
      
                <div>
                      이름<input type="text" name="#" placeholder="이름을 입력하세요">
                </div>
      
              <div>
                      아이디<input type="text" name="#" placeholder="이름을 입력하세요">
                </div>
                
                <div>
                          생년월일<input type="text" name="#"
                      placeholder="생년월일 6자리(YYYYMMDD)를 입력하세요">
                </div>
      
                <div>
                      전화번호<input type="text" name="#" placeholder="휴대폰 번호를 '-'없이  입력하세요" />
                      <button>인증번호 발송</button>
                </div>
                
                <div>
                      인증번호<input type="text" name="#"  />
                </div>
      
                <div>
                   <a href="findPwdCheck.do"><button>다음으로</button></a>
                </div>
            </div>
      </article>
   </section>
</body>
<script>
//아이디찾기 보이기숨기기
	function div_find_id() {
	      document.getElementById("find_pwd").style.display = 'none';
	      if(document.getElementById("find_id").style.display == 'none'){
	        document.getElementById("find_id").style.display = 'block';
	      }
	  
	}
//비밀번호 찾기 보이기 숨기기
	function div_find_pwd() {
	  
	      document.getElementById("find_pwd").style.display = 'block';
	      document.getElementById("find_id").style.display = 'none'
	   }
</script>
</html>