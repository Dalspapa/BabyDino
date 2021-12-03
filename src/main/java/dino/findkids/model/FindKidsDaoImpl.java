package dino.findkids.model;

import java.util.*;


import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.MakeTCardDto;

public class FindKidsDaoImpl implements FindKidsDao {
	
	private SqlSessionTemplate sqlMap;
	
	public FindKidsDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int makeTCard(MakeTCardDto dto) {
		
		int result = sqlMap.insert("t_makeCard", dto);
		return result;
	};
	
	
	public List<MakeTCardDto> kidsList() {

		List<MakeTCardDto> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
}
