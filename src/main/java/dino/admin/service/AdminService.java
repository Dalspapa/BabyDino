package dino.admin.service;

import java.util.List;

import dino.dto.ReportDto;

public interface AdminService {

	//신고내역
	public List<ReportDto> reportList();
	
	//강제탈퇴 시킬 때 해당 회원이 있는지 체크하는 메서드
	public int adminMemberOut(int idx);
}
