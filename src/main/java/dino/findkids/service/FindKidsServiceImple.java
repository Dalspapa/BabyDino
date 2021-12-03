package dino.findkids.service;

import java.util.*;

import dino.Dto.MakeTCardDto;
import dino.findkids.model.FindKidsDao;
import dino.findkids.model.KidInfoDto;
import dino.findteachers.model.TeacherInfoDto;

public class FindKidsServiceImple implements FindKidsService {

	private FindKidsDao findkidsDao;
	
	public FindKidsDao getFindkidsDao() {
		return findkidsDao;
	}
	public void setFindkidsDao(FindKidsDao findkidsDao) {
		this.findkidsDao = findkidsDao;
	}


	public int makeTCard(MakeTCardDto dto) {
		
		int result = findkidsDao.makeTCard(dto);
		return result;
	}
	
	
	public List<MakeTCardDto> kidsList() {

		List<MakeTCardDto> k_list = findkidsDao.kidsList();
		return k_list;
	}
	
	//아이카드 상세내역
	public KidInfoDto kidInfo(int idx) {
		
		KidInfoDto k_dto = findkidsDao.kidInfo(idx);
		
		/*
		 * if(k_dto != null) {
		 * k_dto.setT_introduce(k_dto.getT_introduce().replaceAll("\n", "<br>"));
		 * k_dto.setCareer_experience(k_dto.getCareer_experience().replaceAll("\n",
		 * "<br>")); }
		 */
		return k_dto;
		
	}
	
}
