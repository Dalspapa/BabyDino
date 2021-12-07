package dino.commonop.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.CommonOpDto;

public class CommonOpDaoImpl implements CommonOpDao {

	private SqlSessionTemplate sqlMap;

	public CommonOpDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	// Teacher Card
	public List<CommonOpDto> t_job_opList() {

		List<CommonOpDto> list = sqlMap.selectList("t_job_opList");
		return list;
	}

	public List<CommonOpDto> k_type_opList() {

		List<CommonOpDto> k_list = sqlMap.selectList("k_type_opList");
		return k_list;
	}

	public List<CommonOpDto> t_care_opList() {

		List<CommonOpDto> c_list = sqlMap.selectList("t_care_opList");
		return c_list;
	}

	public List<CommonOpDto> t_date_opList() {

		List<CommonOpDto> d_list = sqlMap.selectList("t_date_opList");
		return d_list;
	}

	public List<CommonOpDto> t_time_opList() {

		List<CommonOpDto> t_list = sqlMap.selectList("t_time_opList");
		return t_list;
	}

	public List<CommonOpDto> t_bank_opList() {

		List<CommonOpDto> b_list = sqlMap.selectList("t_bank_opList");
		return b_list;
	}

	
	// KidsCard
	public List<CommonOpDto> ktendency() {

		List<CommonOpDto> list = sqlMap.selectList("k_tendency");
		return list;
	}
	
	//reportType
	public List<CommonOpDto> reportType() {

		List<CommonOpDto> rp_list = sqlMap.selectList("rp_typeList");
		return rp_list;
	}
	
	//공지사항
	public List<CommonOpDto> noticeList() {
		List<CommonOpDto> list = sqlMap.selectList("notice");
		System.out.println("dao======= "+ list);
		return list;
	}
	
	//자주 묻는 질문(회원관련)
	public List<CommonOpDto> qna() {
		List<CommonOpDto> list = sqlMap.selectList("qna");
		return list;
	}
	//정부지원관련
	public List<CommonOpDto> government() {
		List<CommonOpDto> g_list = sqlMap.selectList("government");
		return g_list;
	}
	//결제환불관련
	public List<CommonOpDto> pay() {
		List<CommonOpDto> p_list = sqlMap.selectList("pay");
		return p_list;
	}
	
	
	
}
