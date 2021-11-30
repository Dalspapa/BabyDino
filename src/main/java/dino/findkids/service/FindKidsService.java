package dino.findkids.service;

import java.util.*;

import dino.Dto.teacherDto;

public interface FindKidsService {

	public int makeTCard(teacherDto dto);
	public List<teacherDto> kidsList();
	
}
