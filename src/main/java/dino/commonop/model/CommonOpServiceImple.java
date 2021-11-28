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
		
		Map map = new HashMap();
		List<CommonOpDTO> list = commonopDao.t_job_opList(map);
		return list;
	}
	
	public List<CommonOpDTO> k_type_opList() {

		Map map = new HashMap();
		List<CommonOpDTO> k_list = commonopDao.k_type_opList(map);
		return k_list;
	}
}
