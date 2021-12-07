<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<div>
		<section>
			<!-- 관리자모드& 종 아이콘 (보류)-->
			<div>
				<div>관리자 모드<i class="far fa-toggle-on"></i></div>
				<div><i class="far fa-bell"></i></div>
			</div>
			
			<!-- 회원목록(관리자) -->
			<div>
				<div>회원목록(관리자)</div>
				<div>
					<select>
						<option>전체</option>
						<option>학부모</option>
						<option>부모님</option>
					</select>
					<input type="text" placeholder="아이디 입력">
					<select>
						<option>평점</option>
						<option>높은순</option>
						<option>낮은순</option>
					</select>
					<select>
						<option>별점</option>
						<option>높은순</option>
						<option>낮은순</option>
					</select>
					<select>
						<option>리뷰</option>
						<option>많은순</option>
						<option>적은순</option>
					</select>
					<select>
						<option>총수익</option>
						<option>많은순</option>
						<option>적은순</option>
					</select>
					<div>
						<button type="button">검색</button>
					</div>
				</div>
			</div>
			
			<!-- 회원테이블 -->
			<div>
				<div>
					<a>약속 파기한 회원순</a><br>
					<a>신고 누적순</a>
				</div>
				<table border="1">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td>회원번호</td>
							<td>이름</td>
							<td>아이디</td>
							<td>가입날</td>
							<td>신고당한 횟수</td>
							<td>평균별점</td>
							<td>리뷰수</td>
							<td>총 수익</td>
							<td>약속 파기</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>회원번호 뿌려질곳</td>
							<td>회원유형 뿌려질곳</td>
							<td>이름 뿌려질곳</td>
							<td>아이디 뿌려질곳</td>
							<td>가입날 뿌려질 곳</td>
							<td>신고당한횟수 뿌려질곳</td>
							<td>평균별점 뿌려질곳</td>
							<td>리뷰수 뿌려질곳</td>
							<td>총 수익 뿌려질곳</td>
							<td>약속파기 횟수 뿌려질곳</td>
						</tr>
					</tbody>
				</table>
				<div>
					<button>탈퇴처리</button>
				</div>
				<div>
					페이징 처리 될 부분
				</div>
			</div>
		</section>
	</div>
</body>
</html>