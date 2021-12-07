<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 프로필</title>
</head>
<body>
	<div>
		<section>
			<!-- 선생님 프로필 부분 -->
			<div>
				<div>프로필</div>
				<div>#선생님 프로필 이미지 들어갈 부분</div>
				<div>#선생님 이름 | #나이</div>
				<div>
					계좌번호 : 
					<select>
						<option>국민</option>
						<option>신한</option>
						<option>농협</option>
						<option>우체국</option>
					</select>
					<input type="text" placeholder="계좌번호를 입력해주세요">
					<button type="button">수정하기</button></div>
				<div>희망시급: <input type="text"><button type="button">수정하기</button></div>
				<div>누적활동 #시간</div>
				<div>누적 수익: #수익</div>
				<div>보유 뱃지: #뱃지 갯수</div>
				<div><a herf="#">후기 보러가기></a></div>
			</div>
			
			<!-- 활동시간 부분 -->
			<div>
				<div>활동 시간</div>
				<div>
					<div>활동 할 수 있는 요일:</div>
					<select>
						<option>월</option>
						<option>화</option>
						<option>수</option>
						<option>목</option>
						<option>금</option>
						<option>토</option>
						<option>일</option>
					</select>
				</div>
				<div>
					<div>활동 할 수 있는 시간:</div>
					<select>
						<option>08:00-08:30</option>
						<option>09:00-09:30</option>
						<option>10:00-10:30</option>
						<option>11:00-11:30</option>
						<option>12:00-12:30</option>
						<option>13:00-13:30</option>
						<option>14:00-14:30</option>
						<option>15:00-15:30</option>
						<option>16:00-16:30</option>
						<option>17:00-17:30</option>
						<option>18:00-18:30</option>
						<option>19:00-19:30</option>
						<option>20:00-20:30</option>
						<option>21:00-21:30</option>
						<option>22:00-22:30</option>
					</select>
				</div>
			</div>
			<div>
				<button type="button"><a href="#">수정하기</a></button>
			</div>
			
			<!-- 선생님 소개글 -->
			<div>
				<div>선생님 한마디</div>
				<div>#선생님 한마디 가져올 부분</div>
				<div>돌봄 활동 경험/이런 활동을 해봤어요</div>
				<div>
					<nav>
						<ul>
							<li>#활동 경험</li>
							<li>#활동 경험</li>
							<li>#활동 경험</li>
						</ul>
					</nav>
				</div>
				<div>공룡 선생님 활동 계기</div>
				<div>#활동 계기 뿌려질 부분</div>
			</div>
			<div>
				<button type="button"><a href="#">수정하기</a></button>
			</div>
		</section>
	</div>
</body>
</html>