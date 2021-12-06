<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.nav-wrapper a {
    border: 0;
    color: rgba(136, 136, 135, 1);
    justify-content: center;
    align-items: center;
    padding: 13px 13px;
    width: 80px;
    height: 36px;
    background: #ff7000;
    border-radius: 30px;
    font-size: 12px !important;
    font-weight: 500;
    color: white;
}
.blocks-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    list-style: none;
    padding: 0;
}
</style>
</head>
<body>
<h1>아기공룡 고객센터</h1>
<section>
	<h2>안녕하세요. 아기공룡 고객센터입니다.</h2>
	<h3>반갑습니다. 무엇을 도와드릴까요?</h3>
	<div class="nav-wrapper">      
    <a class="submit-a-request" href="Qna.do">문의하기</a>
  </div>
	<form>
	
	<input type="search" placeholder="검색어를 입력하세요" autocomplete="off" aria-label="	검색">
	</form>
	
	
</section>

<section class="categories blocks">
      <ul class="blocks-list">
        <li class="blocks-item">
          <a href="mostQna.do" class="blocks-item-link">
            <img class="faq" src="https://cdn.mom-sitter.com/momsitter-cs/icon/faq.svg" alt="자주 묻는 질문">
            <span class="blocks-item-title">자주 묻는 질문</span>
            <span class="blocks-item-description">FAQ</span>
          </a>
        </li>
        <li class="blocks-item">
          <a href="https://mom-sitter.zendesk.com/hc/ko/categories/900000285706-%EB%B6%80%EB%AA%A8%ED%9A%8C%EC%9B%90" class="blocks-item-link">
            <img class="parent" src="https://cdn.mom-sitter.com/momsitter-cs/icon/parent.svg" alt="부모회원 이용가이드">
            <span class="blocks-item-title" style="margin-top: 7px;">부모회원</span>
            <span class="blocks-item-description">이용가이드</span>
          </a>
        </li>
				<li class="blocks-item">
          <a href="https://mom-sitter.zendesk.com/hc/ko/categories/900000172943-%EC%8B%9C%ED%84%B0%ED%9A%8C%EC%9B%90" class="blocks-item-link">
            <img class="sitter" src="https://cdn.mom-sitter.com/momsitter-cs/icon/sitter.svg" alt="alt=" 시터회원="" 이용가이드""="">
            <span class="blocks-item-title">선생님회원</span>
            <span class="blocks-item-description">이용가이드</span>
          </a>
        </li>
				<li class="blocks-item">
          <a href="notice.do" class="blocks-item-link">
            <img class="notice" src="https://cdn.mom-sitter.com/momsitter-cs/icon/notice.svg" alt="공지사항">
            <span class="blocks-item-title">공지사항</span>
            <span class="blocks-item-description">아기공룡 소식</span>
          </a>
        </li>
      </ul>
      
    </section>

</body>
</html>