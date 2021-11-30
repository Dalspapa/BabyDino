package dino.commonop.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.common_OptionDto;

public class CommonOpDaoImpl implements CommonOpDao {

	private SqlSessionTemplate sqlMap;

	public CommonOpDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	// Teacher Card
	public List<common_OptionDto> t_job_opList() {

		List<common_OptionDto> list = sqlMap.selectList("t_job_opList");
		return list;
	}

	public List<common_OptionDto> k_type_opList() {

		List<common_OptionDto> k_list = sqlMap.selectList("k_type_opList");
		return k_list;
	}

	public List<common_OptionDto> t_care_opList() {

		List<common_OptionDto> c_list = sqlMap.selectList("t_care_opList");
		return c_list;
	}

	public List<common_OptionDto> t_date_opList() {

		List<common_OptionDto> d_list = sqlMap.selectList("t_date_opList");
		return d_list;
	}

	public List<common_OptionDto> t_time_opList() {

		List<common_OptionDto> t_list = sqlMap.selectList("t_time_opList");
		return t_list;
	}

	public List<common_OptionDto> t_bank_opList() {

		List<common_OptionDto> b_list = sqlMap.selectList("t_bank_opList");
		return b_list;
	}

	
	// KidsCard
	public List<common_OptionDto> ktendency(Map map) {

		List<common_OptionDto> list = sqlMap.selectList("k_tendency", map);
		return list;
	}

}
