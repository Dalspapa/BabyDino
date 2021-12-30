package dino.findkids.model;

import java.util.List;

import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;

public interface FindKidsDao {

	//make techer card -> d_teacher Table
	public int makeTCard (MakeTCardDto dto);

	//get kids list
	public List<FindKidsJoinDto> kidsList();
	
	//searchKids
	public List<FindKidsJoinDto> searchKids(FindKidsJoinDto searchKids);

	// set Teacher img
	public int tSetImg (Common_ImgDto imgDto);

	// Test get imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx);

	//get kid Info
	public FindKidsJoinDto kidContent(int idx);

	/**
	 * 선생님 등급수정
	 * author: 이은사
	 * return: int
	 * since: 2021. 12. 7.
	 */
	public int updateTeacherGrade(MemberDto teacher);

	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId);

	//수정된 멤버타입 조회
	public int UpdGrade(String id);
//////////////주호
	//선생님 필수 정보 입력
	public int setTeacherCert(TeacherCertDto tcDto);
//////////////주호끝


	public int updateReserveCard(ReserveDto reserveDto);

}
