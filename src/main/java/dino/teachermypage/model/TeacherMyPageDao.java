package dino.teachermypage.model;

import dino.dto.*;

public interface TeacherMyPageDao {
	
	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx);
	
	//sam - bank, acnum, t_cost Update
	public int batUpdate(MakeTCardDto upDto);

	//teacher profile bank, acnum, cost Update
	public int introUpdate(MakeTCardDto introDto);
}
