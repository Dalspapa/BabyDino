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

	public List<CommonOpDTO> t_job_opList() {

		List<CommonOpDTO> list = sqlMap.selectList("t_job_opList");
		return list;
	}
	
	public List<CommonOpDTO> k_type_opList() {

		List<CommonOpDTO> k_list = sqlMap.selectList("k_type_opList");
		return k_list;
	}
	
	public List<CommonOpDTO> t_care_opList() {

		List<CommonOpDTO> c_list = sqlMap.selectList("t_care_opList");
		return c_list;
	}
	
	public List<CommonOpDTO> t_date_opList() {

		List<CommonOpDTO> d_list = sqlMap.selectList("t_date_opList");
		return d_list;
	}
	
	public List<CommonOpDTO> t_time_opList() {
		
		List<CommonOpDTO> t_list = sqlMap.selectList("t_time_opList");
		return t_list;
	}
	
	public List<CommonOpDTO> t_bank_opList() {

		List<CommonOpDTO> b_list = sqlMap.selectList("t_bank_opList");
		return b_list;
	}

}
