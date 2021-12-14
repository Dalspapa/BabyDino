package dino.parentmypage.service;

import java.util.List;

import dino.dto.KidDto;
import dino.parentmypage.model.ParentMypageDto;

public interface ParentMypageService {

	//proceedingMain.jsp
	public List<ParentMypageDto> proceedingMain(int idx);

	//돌봄 현황 페이지
	public ParentMypageDto caring(int idx);

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx);

	//돌봄 노트 리스트 페이지
	public List<ParentMypageDto> careNoteList(int idx);
}
