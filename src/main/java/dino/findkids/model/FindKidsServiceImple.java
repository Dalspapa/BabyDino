package dino.findkids.model;

import java.util.*;

public class FindKidsServiceImple implements FindKidsService {

	private FindKidsDAO findkidsDao;
	
	public FindKidsDAO getFindkidsDao() {
		return findkidsDao;
	}
	public void setFindkidsDao(FindKidsDAO findkidsDao) {
		this.findkidsDao = findkidsDao;
	}


	public int makeTCard(MakeTCardDTO dto) {
		
		int result = findkidsDao.makeTCard(dto);
		return result;
	}
	
	
	public List<MakeTCardDTO> kidsList() {

		List<MakeTCardDTO> k_list = findkidsDao.kidsList();
		return k_list;
	}
	
	
}
