package dino.findteachers.model;

import java.util.List;

import dino.dto.Common_ImgDto;
import dino.dto.KidDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersDao {

	
	 //find teacher card list 
	public List<FindTeacherJoinDto> teacherList();
	 

	// pick kid card
	public List<KidDto> pickKidsCard(int idx);

	// make kid card
	public int makeKCard(KidDto dto);

	// Insert reserve Kid Card
	public int reserveCard(ReserveDto reserveCard);
	
	// pick addr card
	public MemberDto pickKidsAddrCard(int idx);

	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	public List<ReviewDto> teacherReviewList(int idx);
	
	// set kid img 
	public int kSetImg (Common_ImgDto imgDto); 
	
	//get img path 
	public List<Common_ImgDto> imgpath(int d_member_idx);
}
