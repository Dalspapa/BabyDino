package dino.commonop.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class CommonOpDAOImple implements CommonOpDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public CommonOpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<CommonOpDTO> opList(Map map) {

		List<CommonOpDTO> list = sqlMap.selectList("opList", map);
		return list;
	}
	
	public List<CommonOpDTO> ktendency(Map map) {
		
		List<CommonOpDTO> list= sqlMap.selectList("k_tendency", map);
		return list;
	}

}
