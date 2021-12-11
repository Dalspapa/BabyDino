package dino.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import dino.admin.model.AdminDao;
import dino.dto.ReportDto;

@Service
public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;
	
	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public List<ReportDto> reportList() {
		
		List<ReportDto> reportlist = adminDao.reportList();
		
		return reportlist;
	}
	
	//회원 강제탈퇴 관련 메서드
	public int adminMemberOut(int idx) {
		int result = adminDao.adminMemberOut(idx);
		return result;
	}
}
