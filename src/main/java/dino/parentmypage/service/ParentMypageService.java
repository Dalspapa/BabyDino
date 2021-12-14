package dino.parentmypage.service;

import java.util.List;

import dino.dto.KidDto;
import dino.parentmypage.model.ParentMypageDto;

public interface ParentMypageService {

	//진행중 돌봄 목록
	public List<ParentMypageDto> proceedingMain_ing(int idx);

	//완료된 돌봄 목록
	public List<ParentMypageDto> proceedingMain_done(int idx);

	//돌봄 현황 페이지
	public ParentMypageDto caring(int idx);

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx);

	//돌봄 노트 리스트 페이지
	public List<ParentMypageDto> careNoteList(int idx);

	//선생님 진행중 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_ing(int idx);

	//선생님 완료된 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_done(int idx);
}
