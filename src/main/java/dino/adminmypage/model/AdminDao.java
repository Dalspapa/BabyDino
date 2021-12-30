package dino.adminmypage.model;

import java.util.List;
import java.util.Map;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;
import dino.adminmypage.model.*;

public interface AdminDao {
	
	/*222222222동현 작업 시작22222222222*/
	//신고하기(관리자)
	public List<ReportDto> reportList(Map map);
	
	public int getTotalCntReport();
	
	/*222222222동현 작업 끝22222222222*/
	//회원강제탈퇴
	public int adminMemberOut(int idx);
	
	/**동현 작업 시작:::::::::::::::::::::*/
	//admin회원 관리
	public List<MemberDto> adminMemberManagement(Map map);
	
	//페이징 처리
	public int getTotalCnt();
	/**동현 작업 끝:::::::::::::::::::::*/
	
	//선생님 정산
	public List<ReserveDto> teacherCost();
	
	//취소사유(부모님)
	public List<CommonOpDto> pcancel();
	
	//취소사유(선생님)
	public List<CommonOpDto> tcancel();
	
	//부모님 취소사유 (삭제)
	public int parentDelete(String op);
	
	//부모님 취소사유(등록0)
	public int parentAdd(CommonOpDto commonopDto);
	
	//선생님 취소사유등록
	public int teacherAdd(CommonOpDto commonopDto);
	
	//선생님 취소사유 삭제
	public int teacherDelete(String op);
	
	//돌봄분야 리스트
	public List<CommonOpDto> careList();
	
	//돌봄분야 등록
	public int careAdd(CommonOpDto commonopDto);
	
	//돌봄분야 삭제
	public int careDel(String op);
	
	//선생님 필수 인증(쿼리부분수정 완료 )
	public List<AdminDto> teacherCertification();
	
	//선생님 등급 수정
	public int teaCertUpd(int idx);	
	
}
