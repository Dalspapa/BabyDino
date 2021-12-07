package dino.findteachers.model;

import java.util.List;

import dino.Dto.KidDto;
import dino.Dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersDao {
	
	//find teacher card list 
	
	//make kid card
	public List<KidDto> formKidsCard(int idx);
	//public int makeKCard(KidDto dto);
	 
	//teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	public List<ReviewDto> teacherReviewList(int idx);
}
