package dino.commonop.model;

import java.util.*;

public class CommonOpServiceImple implements CommonOpService {
	
	private CommonOpDAO commonopDao;
	
	public CommonOpDAO getCommonopDao() {
		return commonopDao;
	}
	
	public void setCommonopDao(CommonOpDAO commonopDao) {
		this.commonopDao = commonopDao;
	}

	public List<CommonOpDTO> t_job_opList() {
		
		List<CommonOpDTO> list = commonopDao.t_job_opList();
		return list;
	}
	
	public List<CommonOpDTO> k_type_opList() {

		List<CommonOpDTO> k_list = commonopDao.k_type_opList();
		return k_list;
	}
	
	public List<CommonOpDTO> t_care_opList() {
		
		List<CommonOpDTO> c_list = commonopDao.t_care_opList();
		return c_list;
	}
	
	public List<CommonOpDTO> t_date_opList() {
		
		List<CommonOpDTO> d_list = commonopDao.t_date_opList();
		return d_list;
	}
	
	public List<CommonOpDTO> t_time_opList() {
		
		List<CommonOpDTO> t_list = commonopDao.t_time_opList();
		return t_list;
	}
	
	public List<CommonOpDTO> t_bank_opList() {
		
		List<CommonOpDTO> b_list = commonopDao.t_bank_opList();
		return b_list;
	}
	
}




