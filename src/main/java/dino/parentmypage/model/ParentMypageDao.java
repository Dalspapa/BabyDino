package dino.parentmypage.model;

import java.util.List;

import dino.dto.KidDto;

public interface ParentMypageDao {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain(int idx);

	//돌봄 현황 페이지
	public ParentMypageDto caring(int idx);

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx);
}

