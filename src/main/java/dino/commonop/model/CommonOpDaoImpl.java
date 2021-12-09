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

	
	// Make KidsCard tendency list
	public List<CommonOpDto> ktendency() {
		List<CommonOpDto> list = sqlMap.selectList("k_tendency");
		return list;
	}
	
	// Make KidsCard care list
	public List<CommonOpDto> k_care_type(){
		
		List<CommonOpDto> care_list = sqlMap.selectList("k_care_type");
		//test code
		System.out.println("careList==" + care_list);
		return care_list;
	}
	
	//reportType
	public List<CommonOpDto> reportType() {

		List<CommonOpDto> rp_list = sqlMap.selectList("rp_typeList");
		return rp_list;
	}
	
	//공지사항
	public List<CommonOpDto> noticeList(Map map) {
		List<CommonOpDto> list = sqlMap.selectList("notice", map);
		return list;
	}
	
	//자주 묻는 질문(회원관련)
	public List<CommonOpDto> qna(Map map) {
		List<CommonOpDto> list = sqlMap.selectList("qna" ,map);
		return list;
	}
	//정부지원관련
	public List<CommonOpDto> government(Map map) {
		List<CommonOpDto> g_list = sqlMap.selectList("government", map);
		return g_list;
	}
	//결제환불관련
	public List<CommonOpDto> pay(Map map) {
		List<CommonOpDto> p_list = sqlMap.selectList("pay" , map);
		return p_list;
	}
	
	
	
}
