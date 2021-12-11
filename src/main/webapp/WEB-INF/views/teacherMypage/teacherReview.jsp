<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님이 받은 후기</title>
</head>
<body>
	<div>
		<!-- 뒤로가기 버튼&후기 버튼 -->
			<div>
				<div><img src="https://cdn.mom-sitter.com/momsitter-app/static/public/mainCarousel/index-banner-left-bt.svg"alt="버튼"></div>
				<div>모든 후기</div>
			</div>
			<div>
				<button type="button">내가 받은 후기</button>
				<button type="button">내가 보낸 후기</button>
			</div>
			
			<!-- 내가 보낸 후기 섹션 -->
			<section>
				<div>
					<div><img alt="#" src="#">프로필 이미지 들어갈 부분</div>
					<div>
					<button type="button" data-bs-toggle="modal" data-bs-target="#answerModal">답글 달기</button>
					</div>
					<div>#이름들어갈 부분</div>
					<div>#후기 내용 들어갈 부분</div>
				</div>
			</section>
			
			<!-- 내가 받은 후기 섹션 -->
			<section>
				<div>
					<div><img alt="#" src="#">프로필 이미지 들어갈 부분</div>
					<div>
					<button type="button">수정하기</button>
					<button type="button"  data-bs-toggle="modal" data-bs-target="#deleteModal">삭제하기</button>
					</div>
					<div>#이름들어갈 부분</div>
					<div>#후기 내용 들어갈 부분</div>
					<div>선생님 답변: #선생님 답변 불러오기</div>
				</div>
			</section>
			
			<!-- 페이징 처리 될 부분 -->
            <div>
               <nav aria-label="Page navigation example">
                 <ul class="pagination justify-content-center">
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Previous">
                       <span aria-hidden="true">&laquo;</span>
                     </a>
                   </li>
                   <li class="page-item"><a class="page-link" href="#">1</a></li>
                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                   <li class="page-item">
                     <a class="page-link" href="#" aria-label="Next">
                       <span aria-hidden="true">&raquo;</span>
                     </a>
                   </li>
                 </ul>
               </nav>
            </div>
	</div>
</body>

<!-- answerModal -->
<div class="modal fade" id="answerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">답변하기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	<textarea rows="30" cols="10"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">작성하기</button>
      </div>
    </div>
  </div>
</div>
</html>