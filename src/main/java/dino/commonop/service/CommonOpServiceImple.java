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
}
