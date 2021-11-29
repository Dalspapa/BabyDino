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

	public List<CommonOpDTO> opList() {
		
		Map map = new HashMap();
		List<CommonOpDTO> list = commonopDao.opList(map);
		return list;
	}
	
	public List<CommonOpDTO> ktendency() {
		
		Map map = new HashMap();
		List<CommonOpDTO> list = commonopDao.ktendency(map);
		return list;
	}

}
