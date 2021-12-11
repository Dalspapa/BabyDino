package dino.parentmypage.model;

import java.util.List;

import dino.dto.KidDto;

public interface ParentMypageDao {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain();

	//매칭된 돌봄 현황 페이지
	public KidDto caring(int idx);
}

