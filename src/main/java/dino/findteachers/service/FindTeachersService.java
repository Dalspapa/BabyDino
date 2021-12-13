package dino.findteachers.service;

import java.util.List;

import dino.dto.KidDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersService {

	//find teacher card list
	public List<FindTeacherJoinDto> teacherList();

	// pick kid card
	public List<KidDto> pickKidsCard(int idx);

	// pick addr card
	public MemberDto pickKidsAddrCard(int idx);

	// make kid card
	public int makeKCard(KidDto dto);
	
	/**
	 * 아이캐어타입 저장
	 * @param dto
	 * @return
	 */
	public int makeKCareType(KidDto dto);

	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);

	// Insert reserve Kid Card
	public int reserveCard(ReserveDto reserveCard);

	// set kid img
	//public int kSetImg(Common_ImgDto imgDto);

	//get img path
	//public List<Common_ImgDto> imgpath(int d_member_idx);
}

