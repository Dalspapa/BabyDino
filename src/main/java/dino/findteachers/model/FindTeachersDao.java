package dino.findteachers.model;

import java.util.List;

import dino.dto.KidDto;
import dino.dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersDao {
	
	/*
	 * //find teacher card list public List<FindTeacherJoinDto> teacherList();
	 */
	
	// pick kid card
	public List<KidDto> pickKidsCard(int idx);
	
	// make kid card
	public int makeKCard(KidDto dto);
	 
	/*
	 * // set kid img public int kSetImg (Common_ImgDto imgDto);
	 * 
	 * //get img path public List<Common_ImgDto> imgpath(int d_member_idx);
	 */
	//teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	public List<ReviewDto> teacherReviewList(int idx);
}
