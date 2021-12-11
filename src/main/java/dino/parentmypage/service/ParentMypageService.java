package dino.parentmypage.service;

import java.util.List;

import dino.dto.KidDto;
import dino.parentmypage.model.ParentMypageDto;

public interface ParentMypageService {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain();

	//돌봄 진행 상태
	public KidDto caringInfo(String r_idx);
}
