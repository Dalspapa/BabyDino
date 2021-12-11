package dino.teachermypage.service;

import dino.teachermypage.model.*;

public class TeacherMyPageServiceImpl implements TeacherMyPageService {

	private TeacherMyPageDao teacherMypageDao;

	public TeacherMyPageDao getTeacherMyPageDao() {
		return teacherMypageDao;
	}

	public void setTeacherMyPageDao(TeacherMyPageDao teacherMyPageDao) {
		this.teacherMypageDao = teacherMyPageDao;
	}

	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx) {		
		return teacherMypageDao.teacherProfile(idx);
	}
	
	
}
