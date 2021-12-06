package dino.findteachers.service;

import dino.findteachers.model.FindTeachersDao;

import java.util.List;

import dino.Dto.KidDto;
import dino.Dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public class FindTeachersServiceImp implements FindTeachersService {

	private FindTeachersDao findTeachersDao;

	public FindTeachersDao getFindTeachersDao() {
		return findTeachersDao;
	}
	
	public void setFindTeachersDao(FindTeachersDao findTeachersDao) {
		this.findTeachersDao = findTeachersDao;
	}
	
	// find teacher card list
	
	
	// make kid card
	public List<KidDto> formKidsCard(int idx) {
		
		List<KidDto> k_dto = findTeachersDao.formKidsCard(idx);
		return k_dto;
	}
	
	public int makeKCard(KidDto dto) {
		
		int result = findTeachersDao.makeKCard(dto);
		return result;
	}


	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx) {

		FindTeacherJoinDto t_dto = findTeachersDao.teacherInfo(idx);

		List<ReviewDto> reviewList = findTeachersDao.teacherReviewList(idx);
		t_dto.setReview_list(reviewList);
		return t_dto;
	}

}
