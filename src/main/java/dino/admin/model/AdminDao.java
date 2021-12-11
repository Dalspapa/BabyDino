package dino.admin.model;

import java.util.List;


import dino.dto.ReportDto;

public interface AdminDao {

	public List<ReportDto> reportList();
	
	//회원강제탈퇴
	public int adminMemberOut(int idx);
}
