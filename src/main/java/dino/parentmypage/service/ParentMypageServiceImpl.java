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

	//진행중 돌봄 목록
	public List<ParentMypageDto> proceedingMain_ing(int idx) {
		List<ParentMypageDto> list = parentMypageDao.proceedingMain_ing(idx);
		return list;
	}

	//완료된 돌봄 목록
	public List<ParentMypageDto> proceedingMain_done(int idx) {
		List<ParentMypageDto> list = parentMypageDao.proceedingMain_done(idx);
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

	//돌봄 노트 리스트 페이지
	public List<ParentMypageDto> careNoteList(int idx) {
		List<ParentMypageDto> list = parentMypageDao.careNoteList(idx);
		return list;
	}

	//선생님 진행중 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_ing(int idx) {
		List<ParentMypageDto> list = parentMypageDao.t_proceedingMain_ing(idx);
		return list;
	}

	//선생님 완료된 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_done(int idx) {
		List<ParentMypageDto> list = parentMypageDao.t_proceedingMain_done(idx);
		return list;
	}

	//결제후 예약테이블 상태 변경
	public int statusUpdate(int idx) {
		int result = parentMypageDao.statusUpdate(idx);
		return result;
	}
}

