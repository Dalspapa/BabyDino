package dino.commonop.service;

import java.util.*;

import dino.Dto.CommonOpDto;
import dino.commonop.model.CommonOpDao;

public class CommonOpServiceImple implements CommonOpService {

	private CommonOpDao commonopDao;

	public CommonOpDao getCommonopDao() {
		return commonopDao;
	}

	//TeacherCard
	public void setCommonopDao(CommonOpDao commonopDao) {
		this.commonopDao = commonopDao;
	}

	public List<CommonOpDto> t_job_opList() {

		List<CommonOpDto> list = commonopDao.t_job_opList();
		return list;
	}

	public List<CommonOpDto> k_type_opList() {

		List<CommonOpDto> k_list = commonopDao.k_type_opList();
		return k_list;
	}

	public List<CommonOpDto> t_care_opList() {

		List<CommonOpDto> c_list = commonopDao.t_care_opList();
		return c_list;
	}

	public List<CommonOpDto> t_date_opList() {

		List<CommonOpDto> d_list = commonopDao.t_date_opList();
		return d_list;
	}

	public List<CommonOpDto> t_time_opList() {

		List<CommonOpDto> t_list = commonopDao.t_time_opList();
		return t_list;
	}

	public List<CommonOpDto> t_bank_opList() {

		List<CommonOpDto> b_list = commonopDao.t_bank_opList();
		return b_list;
	}

	// kidsCard
	public List<CommonOpDto> ktendency() {

		Map map = new HashMap();
		List<CommonOpDto> list = commonopDao.ktendency(map);
		return list;
	}
 
	// reportType
	public List<CommonOpDto> reportType() {
		
		List<CommonOpDto> rp_list = commonopDao.reportType();
		return rp_list;
	}
	
	//공지사항
	public List<CommonOpDto> noticeList() {
		Map map = new HashMap();
		List<CommonOpDto> list = commonopDao.noticeList(map);
		return list;
	}
	
	//자주묻는 질문(회원관련질문)
	public List<CommonOpDto> qna() {
		Map map = new HashMap();
		List<CommonOpDto> m_list = commonopDao.qna(map);
		return m_list;
	}

	public List<CommonOpDto> government() {
		Map map = new HashMap();
		List<CommonOpDto> g_list = commonopDao.government(map);
		return g_list;
	}

	public List<CommonOpDto> pay() {
		Map map = new HashMap();
		List<CommonOpDto> p_list = commonopDao.pay(map);
		return p_list;
	}
	
	
}
