<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배너 광고</title>
</head>
<body>
	<div>
		<!-- 배너 수익 내역 그래프 -->
		<section>
			<div>
				<span>배너 수익 내역</span>
			</div>
		</section>
		
		<!-- 등록된&만료된 배너 부분 -->
		<section>
			<div>
				<button type="button">등록 되어있는 배너</button>
				<button type="button">만료된 배너</button>
			</div>
			
			<!--등록되어 있는 배너 섹션 -->
			<section>
				<div>
					<button type="button">추가하기</button>
				</div>
				<div class="card">
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
				    <div class="card-title">Card title</div>
				    <div class="card-text"></div>
				    <div>입금금액: </div>
				  </div>
				</div>
			</section>
			
			<!--만료되어 있는 배너 섹션 -->
			<section>
				<div class="card">
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
				    <div class="card-title">Card title</div>
				    <div class="card-text"></div>
				    <div>입금금액: </div>
				  </div>
				</div>
			</section>
		</section>
	</div>
	
	<!-- 등록되어있는 배너 추가하기 버튼 모달(수정예정) -->
	<div class="modal-body">
	  <h5>Popover in a modal</h5>
	  <p>This <a href="#" role="button" class="btn btn-secondary popover-test" title="Popover title" data-bs-content="Popover body content is set in this attribute.">button</a> triggers a popover on click.</p>
	  <hr>
	  <h5>Tooltips in a modal</h5>
	  <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> have tooltips on hover.</p>
	</div>
</body>
</html>