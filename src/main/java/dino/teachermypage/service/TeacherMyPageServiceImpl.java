package dino.teachermypage.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import dino.dto.MakeTCardDto;
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
	
	//sam - bank, acnum, t_cost Update
	public int batUpdate(MakeTCardDto upDto) {
		System.out.println("service impl------"+upDto);
		return teacherMypageDao.batUpdate(upDto);
	}
	
	//teacher profile bank, acnum, cost Update
	public int introUpdate(MakeTCardDto introDto) {
		System.out.println("intro service impl------"+introDto.getT_introduce()+"//"+introDto.getCareer_experience()+"//"+introDto.getD_member_idx()+"/////"+introDto.getCctvagree());
		return teacherMypageDao.introUpdate(introDto);
	}
	
	//////////////주호
		
	//선생님 프로필 아이유형, 돌봄분야 업데이트
	public int typeUpd(MakeTCardDto typeDto) {
		
		return teacherMypageDao.typeUpd(typeDto);
	}


	//////////////주호 끝
	
	
	//돌봄상태값 업데이트 은사
	public int statusUpd(Map<String, Object> params) {
		
		int result = teacherMypageDao.statusUpd(params);
		
		return result;
	}
	
	
}
