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
	
}
