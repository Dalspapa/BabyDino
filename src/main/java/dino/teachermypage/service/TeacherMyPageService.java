package dino.teachermypage.service;

import dino.dto.MakeTCardDto;
import dino.teachermypage.model.TeacherMyPageDto;

public interface TeacherMyPageService {
	
	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx);
	
	//sam - bank, acnum, t_cost Update
	public int batUpdate(MakeTCardDto upDto);

	//teacher profile bank, acnum, cost Update
	public int introUpdate(MakeTCardDto introDto);
	
	//////////////주호
		
	//선생님 프로필 아이유형, 돌봄분야 업데이트
	public int typeUpd(MakeTCardDto typeDto);

	public int statusUpd(int status, int reserveIdx);
	
	
	//////////////주호 끝
	
}
