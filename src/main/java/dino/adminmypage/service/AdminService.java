package dino.adminmypage.service;

import java.util.List;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;

public interface AdminService {
	
	/*:::::::동현 작업 시작::::::::::*/
	//신고내역
	public List<ReportDto> reportList(int cp, int ls);
	
	public int getTotalCntReport();
	/*:::::::동현 작업 끝::::::::::*/
	
	//강제탈퇴 시킬 때 해당 회원이 있는지 체크하는 메서드
	public int adminMemberOut(int idx);
	
	/*:::::::동현 작업 시작::::::::::*/
	//admin회원관리
	public List<MemberDto> memberManagement(int cp, int ls);
	
	// 페이징 처리
	public int getTotalCnt();
	/*:::::::동현 작업 끝::::::::::*/
	
	//선생님 정산
	public List<ReserveDto> teacherCost();
	
	//부모님 취소사유
	public List<CommonOpDto> pcancel();
	
	//선생님 취소사유
	public List<CommonOpDto> tcancel();
	
	//부모님 사유 삭제
	public int parentDelete(String op);
	
	//부모님 사유 등록
	public int parentAdd(CommonOpDto commonopDto);
	
	//선생님 사유 등록
	public int teacherAdd(CommonOpDto commonopDto);
	
	//선생님 사유 삭제
	public int teacherDelete(String op);
	
	//돌봄분야 리스트
	public List<CommonOpDto> careList();
	
	//돌봄분야 등록
	public int careAdd(CommonOpDto commonopDto);
	
	//돌봄분야 삭제
	public int careDel(String op);
	
	//선생님 필수 검증(쿼리 수정예정)
	public List<MemberDto> teacherCertification();
}
