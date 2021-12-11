package dino.adminmypage.service;

import java.util.List;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;

public interface AdminService {

	//admin회원관리
	public List<MemberDto> memberManagement();
	
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
}
