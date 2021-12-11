package dino.teachermypage.service;

import dino.teachermypage.model.*;

public class TeacherMyPageServiceImpl implements TeacherMyPageService {

	private TeacherMyPageDao teacherMyPageDao;

	public TeacherMyPageDao getTeacherMyPageDao() {
		return teacherMyPageDao;
	}

	public void setTeacherMyPageDao(TeacherMyPageDao teacherMyPageDao) {
		this.teacherMyPageDao = teacherMyPageDao;
	}

	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx) {
		
		TeacherMyPageDto tProDto = teacherMyPageDao.teacherProfile(idx);
		
		return tProDto;
	}
	
	
}
