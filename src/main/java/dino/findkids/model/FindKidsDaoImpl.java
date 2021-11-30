package dino.findkids.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.teacherDto;

public class FindKidsDaoImpl implements FindKidsDao {
	
	private SqlSessionTemplate sqlMap;
	
	public FindKidsDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int makeTCard(teacherDto dto) {
		
		int result = sqlMap.insert("t_makeCard", dto);
		return result;
	};
	
	
	public List<teacherDto> kidsList() {

		List<teacherDto> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
	
}
