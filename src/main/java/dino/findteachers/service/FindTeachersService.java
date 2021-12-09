package dino.findteachers.service;

import java.util.List;

import dino.dto.KidDto;
import dino.dto.MakeTCardDto;
import dino.findteachers.model.FindTeacherJoinDto;

public interface FindTeachersService {
	
	//find teacher card list 
	
	//make kids card
	public List<KidDto> formKidsCard(int idx);
	//public int makeKCard(KidDto dto);
	
	//teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	
}
