package dino.commonop.service;

import java.util.*;

import dino.Dto.common_OptionDto;
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

	public List<common_OptionDto> t_job_opList() {

		List<common_OptionDto> list = commonopDao.t_job_opList();
		return list;
	}

	public List<common_OptionDto> k_type_opList() {

		List<common_OptionDto> k_list = commonopDao.k_type_opList();
		return k_list;
	}

	public List<common_OptionDto> t_care_opList() {

		List<common_OptionDto> c_list = commonopDao.t_care_opList();
		return c_list;
	}

	public List<common_OptionDto> t_date_opList() {

		List<common_OptionDto> d_list = commonopDao.t_date_opList();
		return d_list;
	}

	public List<common_OptionDto> t_time_opList() {

		List<common_OptionDto> t_list = commonopDao.t_time_opList();
		return t_list;
	}

	public List<common_OptionDto> t_bank_opList() {

		List<common_OptionDto> b_list = commonopDao.t_bank_opList();
		return b_list;
	}

	// kidsCard
	public List<common_OptionDto> ktendency() {

		Map map = new HashMap();
		List<common_OptionDto> list = commonopDao.ktendency(map);
		return list;
	}

}
