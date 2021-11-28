package dino.findkids.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class FindKidsDAOImple implements FindKidsDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public FindKidsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int makeTCard(FindKidsDTO dto) {
		
		int result = sqlMap.insert("t_makeCard", dto);
		return result;
	};
	
	
	public List<FindKidsDTO> kidsList() {

		List<FindKidsDTO> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
	
}
