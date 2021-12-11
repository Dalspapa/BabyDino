package dino.adminmypage.service;

import java.util.List;

import dino.adminmypage.model.AdminDao;
import dino.commonop.model.CommonOpDao;
import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.member.model.MemberDao;

public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public List<MemberDto> memberManagement() {
		List<MemberDto> list = adminDao.memberManagement();
		return list;
	}
	
	public List<ReserveDto> teacherCost() {
		List<ReserveDto> c_list = adminDao.teacherCost();
		return c_list;
	}

	public List<CommonOpDto> pcancel() {
		List<CommonOpDto> p_list = adminDao.pcancel();
		return p_list;
	}

	public List<CommonOpDto> tcancel() {
		List<CommonOpDto> t_list = adminDao.tcancel();
		return t_list;
	}

	public int parentDelete(int idx) {
		int result = adminDao.parentDelete(idx);
		return result;
	}

	//부모님 취소사유(등록)
	public int parentAdd(CommonOpDto commonopDto) {
		int count = adminDao.parentAdd(commonopDto);
		return count;
	}

	
	
}
