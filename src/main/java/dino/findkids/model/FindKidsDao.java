package dino.findkids.model;

import java.util.*;

import dino.Dto.teacherDto;

public interface FindKidsDao {
	
	public int makeTCard(teacherDto dto);
	public List<teacherDto> kidsList();
}
