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


	public int makeTCard(FindKidsDTO dto) {
		
		int result = findkidsDao.makeTCard(dto);
		return result;
	}
	
	
	public List<FindKidsDTO> kidsList() {

		List<FindKidsDTO> k_list = findkidsDao.kidsList();
		return k_list;
	}
	
	
}
