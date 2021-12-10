package dino.findteachers.service;

import java.util.List;
import java.util.Map;

import dino.dto.KidDto;
import org.springframework.web.multipart.MultipartFile;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersService {
	
	//find teacher card list 
	/* public List<FindTeacherJoinDto> teacherList(); */
	
	// pick kid card
	public List<KidDto> pickKidsCard(int idx);
	
	// make kid card 
	public int makeKCard(KidDto dto);
	
	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	
	// set kid img 	
	//public int kSetImg(Common_ImgDto imgDto);
	
	//get img path
	//public List<Common_ImgDto> imgpath(int d_member_idx);
}
