package dino.parentmypage.service;

import java.util.List;

import dino.parentmypage.model.ParentMypageDao;
import dino.parentmypage.model.ParentMypageDto;

public class ParentMypageServiceImpl implements ParentMypageService {

	private ParentMypageDao parentMypageDao;

	public ParentMypageDao getParentMypageDao() {
		return parentMypageDao;
	}

	public void setParentMypageDao(ParentMypageDao parentMypageDao) {
		this.parentMypageDao = parentMypageDao;
	}

	//start

	//proceedingMain.jsp 출력
	public List<ParentMypageDto> proceedingMain() {
		List<ParentMypageDto> list = parentMypageDao.proceedingMain();
		return list;
	}
}
