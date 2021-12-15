package dino.parentmypage.model;

import java.util.List;

import dino.dto.KidDto;

public interface ParentMypageDao {

	//진행중 돌봄 목록
	public List<ParentMypageDto> proceedingMain_ing(int idx);

	//완료된 돌봄 목록
	public List<ParentMypageDto> proceedingMain_done(int idx);

	//돌봄 진행 페이지
	public ParentMypageDto caring(int idx);

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx);

	//돌봄노트 리스트 페이지
	public List<ParentMypageDto> careNoteList(int idx);

	//선생님 진행중 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_ing(int idx);

	//선생님 완료된 돌봄 목록
	public List<ParentMypageDto> t_proceedingMain_done(int idx);

	//결제후 예약테이블 상태 변경
	public int statusUpdate(int idx);
}

