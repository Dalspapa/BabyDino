package dino.findkids.service;

import java.util.*;

import dino.Dto.teacherDto;
import dino.findkids.model.FindKidsDao;

public class FindKidsServiceImple implements FindKidsService {

	private FindKidsDao findkidsDao;
	
	public FindKidsDao getFindkidsDao() {
		return findkidsDao;
	}
	public void setFindkidsDao(FindKidsDao findkidsDao) {
		this.findkidsDao = findkidsDao;
	}


	public int makeTCard(teacherDto dto) {
		
		int result = findkidsDao.makeTCard(dto);
		return result;
	}
	
	
	public List<teacherDto> kidsList() {

		List<teacherDto> k_list = findkidsDao.kidsList();
		return k_list;
	}
	
	
}
