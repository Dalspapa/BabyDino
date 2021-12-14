package dino.parentmypage.service;

import java.util.List;

import dino.dto.KidDto;
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

	//돌봄 현황 페이지
	public List<ParentMypageDto> proceedingMain(int idx) {
		List<ParentMypageDto> list = parentMypageDao.proceedingMain(idx);
		return list;
	}

	//매칭된 돌봄 현황 페이지
	public ParentMypageDto caring(int idx) {
		ParentMypageDto dto = parentMypageDao.caring(idx);
		return dto;
	}

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx) {
		List<ParentMypageDto> list = parentMypageDao.kidsCardList(idx);
		return list;
	}
}

