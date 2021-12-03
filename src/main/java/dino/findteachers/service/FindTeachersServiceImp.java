package dino.findteachers.service;


import dino.findteachers.model.FindTeachersDao;

import dino.findteachers.model.TeacherInfoDto;

public class FindTeachersServiceImp implements FindTeachersService {

	private FindTeachersDao findTeachersDao;

	public FindTeachersDao getFindTeachersDao() {
		return findTeachersDao;
	}

	public void setFindTeachersDao(FindTeachersDao findTeachersDao) {
		this.findTeachersDao = findTeachersDao;
	}
	
	public TeacherInfoDto teacherInfo(int idx) {
		
		TeacherInfoDto t_dto = findTeachersDao.teacherInfo(idx);
		
		if(t_dto != null) {
			t_dto.setT_introduce(t_dto.getT_introduce().replaceAll("\n", "<br>"));
			t_dto.setCareer_experience(t_dto.getCareer_experience().replaceAll("\n", "<br>"));
		}
		return t_dto;
	}
	
}
