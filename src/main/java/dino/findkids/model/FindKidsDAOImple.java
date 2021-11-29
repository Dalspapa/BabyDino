package dino.findkids.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class FindKidsDAOImple implements FindKidsDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public FindKidsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int makeTCard(MakeTCardDTO dto) {
		
		int result = sqlMap.insert("t_makeCard", dto);
		return result;
	};
	
	
	public List<MakeTCardDTO> kidsList() {

		List<MakeTCardDTO> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
	
}
