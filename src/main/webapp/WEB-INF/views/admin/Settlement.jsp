<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 정산페이지</title>
<style>
.title-box {
            display: flex;
        }
        .title {
            display: flex;
            margin:  0 auto;
        }
        .title div {
            margin: 0 auto;
            padding: 20px 30px;
        }
        .title h2 {
            display: block;
        }
.fees {
		float: right; 
		display: flex;
		margin-right: 20px;
		
}
.fees h4 {
		margin-right: 15px;
}
.sales {
		float: right; 
		display: flex;
		margin: -6%;
		margin-right: 3%;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	width: 770px;
	text-align: center;
}
table {
	margin-top: 70px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #FFFFB4;
}
table.table-striped.table-hover tbody tr:hover {
	background: #CEF279;
}
	table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
</style>
</head>
<body>
<div>
	<div>
		<div class="title-box">
			<div class="title">
				<div>
					<img src="https://cdn.mom-sitter.com/momsitter-app/static/public/mainCarousel/index-banner-left-bt.svg"
                            alt="버튼">
                    </div>
                    <h2>##월 선생님 정산</h2>
                    <div>
                        <img src="https://cdn.mom-sitter.com/momsitter-app/static/public/mainCarousel/index-banner-right-bt.svg"
                            alt="버튼">
                    </div>
                </div>
            </div>
            <div>
                <div class = "fees">
                <h4>현 정산 수수료 15%</h4>
               <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">변경하기</button>
           		</div>
           	</div>    
	</div>
            <br><br><br>
            <hr>
		<div>
			<div class ="sales">
				<h4>매출 높은 순 | 매출 낮은 순</h4>
			</div>
			
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>은행명</th>
							<th>총수익</th>
							<th>순수익</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>정산정보 들어갈 곳</td>
						</tr>
					</tbody>
				</table>
				
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
</div>
<!-- 변경하기 버튼 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">선생님 수수료 변경</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <input type = "text">
        <button type = "button">변경완료</button>
      </div>
    </div>
  </div>
</div>
</html>