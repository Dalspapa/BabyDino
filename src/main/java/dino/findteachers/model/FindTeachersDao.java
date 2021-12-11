package dino.findteachers.model;

import java.util.List;

import dino.Dto.Common_ImgDto;
import dino.Dto.KidDto;
import dino.Dto.MemberDto;
import dino.Dto.ReserveDto;
import dino.Dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersDao {

	/*
	 * //find teacher card list public List<FindTeacherJoinDto> teacherList();
	 */

	// pick kid card
	public List<KidDto> pickKidsCard(int idx);

	// make kid card
	public int makeKCard(KidDto dto);

	// Insert reserve Kid Card
	public int reserveCard(ReserveDto dto);
	
	// pick addr card
	public MemberDto pickKidsAddrCard(int idx);

	// update addr get
	public MemberDto addrUpForm(int idx);

	// update addr card
	public int updateAddr(MemberDto dto);
	
	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	public List<ReviewDto> teacherReviewList(int idx);
	
	// set kid img public int kSetImg (Common_ImgDto imgDto); 
	
	//get img path public List<Common_ImgDto> imgpath(int d_member_idx);
}
