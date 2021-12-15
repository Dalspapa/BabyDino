package dino.teachermypage.model;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.MakeTCardDto;

public class TeacherMyPageDaoImpl implements TeacherMyPageDao {
	
	private SqlSessionTemplate sqlMap;
	
	public TeacherMyPageDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx) {
		return sqlMap.selectOne("teacherProfile", idx);
	}
	
	//sam - bank, acnum, t_cost Update
	public int batUpdate(MakeTCardDto upDto) {		
		System.out.println("dao imple------"+upDto);
		return sqlMap.update("profileUpd" ,upDto);
	}
	
	//teacher profile bank, acnum, cost Update
	public int introUpdate(MakeTCardDto introDto) {
		System.out.println("intro dao impl------"+introDto.getT_introduce()+"//"+introDto.getCareer_experience()+"//"+introDto.getD_member_idx()+"/////"+introDto.getCctvagree());
		return sqlMap.update("introUpd", introDto);
	}
	
	//////////////주호
		
	//선생님 프로필 아이유형, 돌봄분야 업데이트
	public int typeUpd(MakeTCardDto typeDto) {
		
		return sqlMap.update("typeUpd", typeDto);
	}

	public int statusUpd(Map map) {
		
		int result = sqlMap.update("statusUpd", map);
		return result;
	}
	
	
	//////////////주호 끝
}
