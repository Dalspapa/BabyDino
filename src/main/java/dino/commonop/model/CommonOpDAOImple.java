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

	public List<CommonOpDTO> t_job_opList(Map map) {

		List<CommonOpDTO> list = sqlMap.selectList("t_job_opList", map);
		return list;
	}
	
	public List<CommonOpDTO> k_type_opList(Map map) {

		List<CommonOpDTO> k_list = sqlMap.selectList("k_type_opList",map);
		return k_list;
	}

}
