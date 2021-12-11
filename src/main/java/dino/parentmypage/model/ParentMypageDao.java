package dino.parentmypage.model;

import java.util.List;

import dino.dto.KidDto;

public interface ParentMypageDao {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain();

	//돌봄 진행 상태
	public KidDto caringInfo(String r_idx);
}
