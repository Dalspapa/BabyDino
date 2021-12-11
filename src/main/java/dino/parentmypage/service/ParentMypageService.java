package dino.parentmypage.service;

import java.util.List;

import dino.dto.KidDto;
import dino.parentmypage.model.ParentMypageDto;

public interface ParentMypageService {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain();

	//매칭된 돌봄 현황 페이지
	public KidDto caring(int idx);
}
