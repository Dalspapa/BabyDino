package dino.commonop.service;

import java.util.List;

import dino.commonop.model.CommonOpDao;
import dino.dto.CommonOpDto;

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
	// 은행 옵션들 가져오기 
	public List<CommonOpDto> t_bank_opList() {
		
		List<CommonOpDto> b_list = commonopDao.t_bank_opList();	
		return b_list;
	}

	// Make KidsCard tendency list
	public List<CommonOpDto> ktendency() {

		List<CommonOpDto> list = commonopDao.ktendency();
		return list;
	}

	//Make KidsCard care list
	public List<CommonOpDto> k_care_type(){

		List<CommonOpDto> care_list = commonopDao.k_care_type();
		return care_list;
	}

	// reportType
	public List<CommonOpDto> reportType() {

		List<CommonOpDto> rp_list = commonopDao.reportType();
		return rp_list;
	}

	//공지사항
	public List<CommonOpDto> noticeList() {

		List<CommonOpDto> list = commonopDao.noticeList();
		return list;
	}

	//자주묻는 질문(회원관련질문)
	public List<CommonOpDto> qna() {

		List<CommonOpDto> m_list = commonopDao.qna();
		return m_list;
	}

	public List<CommonOpDto> government() {

		List<CommonOpDto> g_list = commonopDao.government();
		return g_list;
	}

	public List<CommonOpDto> pay() {

		List<CommonOpDto> p_list = commonopDao.pay();
		return p_list;
	}
	
	public List<CommonOpDto> k_date_opList() {
		
		List<CommonOpDto> d_list = commonopDao.k_date_list();
		
		return d_list;
	}

	public List<CommonOpDto> k_time_start_opList() {
		
		List<CommonOpDto> ts_list = commonopDao.k_time_start_list();
		
		return ts_list;
	}
	
	public List<CommonOpDto> k_time_end_opList() {
		
		List<CommonOpDto> te_list = commonopDao.k_time_end_list();
		
		return te_list;
	}	


}
