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
	public int parentDelete(int idx);
	
	//부모님 사유 등록
	public int parentAdd(CommonOpDto commonopDto);
}
