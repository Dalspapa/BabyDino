package dino.adminmypage.model;

import java.util.List;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;

public interface AdminDao {

	//admin회원 관리
	public List<MemberDto> memberManagement();
	
	//선생님 정산
	public List<ReserveDto> teacherCost();
	
	//취소사유(부모님)
	public List<CommonOpDto> pcancel();
	
	//취소사유(선생님)
	public List<CommonOpDto> tcancel();
	
	//부모님 취소사유 (삭제)
	public int parentDelete(int idx);
	
	//부모님 취소사유(등록0)
	public int parentAdd(CommonOpDto commonopDto);
}
