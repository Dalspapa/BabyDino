package dino.adminmypage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dino.adminmypage.model.*;
import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;


public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}
	/*222222동현 작업 시작22222222*/
	public List<ReportDto> reportList(int cp, int ls) {
		int start = (cp-1)*ls+1;
		int end = cp*ls;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<ReportDto> reportlist = adminDao.reportList(map);
		return reportlist;
	}
	
	//페이징 처리
		public int getTotalCntReport() {
			int count = adminDao.getTotalCntReport();
			return count;
		}
	
	/*222222동현 작업 끝22222222*/
	
	//회원 강제탈퇴 관련 메서드
	public int adminMemberOut(int idx) {
		int result = adminDao.adminMemberOut(idx);
		return result;
	}	

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	/*:::::::동현 작업 시작::::::::*/
	public List<MemberDto> memberManagement(int cp, int ls) {
		int start = (cp-1)*ls+1;
		int end = cp*ls;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<MemberDto> list = adminDao.memberManagement(map);
		return list;
	}
	
	//페이징 처리
	public int getTotalCnt() {
		int count = adminDao.getTotalCnt();
		return count;
	}
	/*:::::::동현 작업 끝::::::::*/
	
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

	public int parentDelete(String op) {
		int result = adminDao.parentDelete(op);
		return result;
	}

	//부모님 취소사유(등록)
	public int parentAdd(CommonOpDto commonopDto) {
		int count = adminDao.parentAdd(commonopDto);
		return count;
	}

	//선생님 사유 등록
	public int teacherAdd(CommonOpDto commonopDto) {
		int count = adminDao.teacherAdd(commonopDto);
		return count;
	}
	
	
	//선생님 사유 삭제
	public int teacherDelete(String op) {
		int result = adminDao.teacherDelete(op);
		return result;
	}
	
	//돌봄분야 리스트
	public List<CommonOpDto> careList() {
		List<CommonOpDto> c_list = adminDao.careList();
		return c_list;
	}
	
	//돌봄분야 등록
	public int careAdd(CommonOpDto commonopDto) {
		int count = adminDao.careAdd(commonopDto);
		return count;
	}
	
	//돌봄분야 삭제
	public int careDel(String op) {
		int result = adminDao.careDel(op);
		return result;
	}
	
	
	//선생님 필수 인증(쿼리 수정완료 )
	public List<AdminDto> teacherCertification() {
		List<AdminDto> t_list = adminDao.teacherCertification();
		return t_list;
	}
	
	//선생님 등급 수정
	public int teaCertUpd(int idx) {
		System.out.println("샘등급 수정 진행service"+idx);
		return adminDao.teaCertUpd(idx);
	}
	
	
}
