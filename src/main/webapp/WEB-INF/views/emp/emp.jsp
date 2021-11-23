<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 관리 프로그램</h1>
<form name="empAdd" action="empAdd.do">
	<fieldset>
		<legend>사원등록</legend>
		<table>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<th>e-mail</th>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dept"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="사원등록"/>
					<input type="reset" value="다시작성"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>
<hr>
<form name="empDel" action="empDel.do">
	<fieldset>
		<legend>사원삭제</legend>
		<table>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="name"/></td>
				<td><input type="submit" value="삭제"> </td>
			</tr>
		</table>
	</fieldset>
</form>
<hr>
<fieldset>
	<legend>모든 사원 내역</legend>
	<h3><a href="empList.do">모든 사원 내역 보기</a></h3>
</fieldset>
<hr>
<form name="empUpdateForm" action="empUpdateForm.do" 
	onsubmit="return idx_check()">
	<fieldset>
		<legend>사원 정보 수정</legend>
		<table>
			<tr>
				<th>사원번호</th>
				<td>
					<input type="text" name="idx" onkeydown="onlyNumber()" 
						required="required"/>
				</td>
				<td>
					<input type="submit" value="검색"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>
</body>

<script>
	function idx_check() {
		if (document.empUpdateForm.idx.value == '') {
			window.alert('사원번호를 입력하셔야합니다.');
			return false;
		}
		return true;
	}
	
	function onlyNumber() {
		if (!(event.keyCode >= 48 && event.keyCode <= 57)) {
			event.returnValue = false;
		}
	}
</script>

</html>
<!-- 
개발 순서
1. DB스키마 설계
2. 디자인 설계
3. DTO & DAO 설계 (myBatis)
	3_1. DTO 설계 
	3_2. SQL ID선정 SQL작성
	3_3. DAO 설계
4. 컨트롤러 설계
	4_1. 명령어 선정
	4_2. 커멘드 클래스 작성(컨트롤러 진입메소드)
	4_3. 등록
	
emp.jsp -> empSQL.xml -> EmpDAO -> EmpDAOImple -> EmpController ->  dispatcher-servlet.xml -> empMsg.jsp	
 -->