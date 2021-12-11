package dino.adminmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;

public class AdminDaoimpl implements AdminDao {
	
	private SqlSessionTemplate sqlMap;

	public AdminDaoimpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
		
	//admin 회원관리
	public List<MemberDto> memberManagement() {
		List<MemberDto> list = sqlMap.selectList("memberManagement");
		return list;
	}
	
	//선생님 정산
	public List<ReserveDto> teacherCost() {
		List<ReserveDto> c_list = sqlMap.selectList("tcost");
		return c_list;
	}

	//부모님 취소사유
	public List<CommonOpDto> pcancel() {
		List<CommonOpDto> p_list = sqlMap.selectList("pcancel");
		return p_list;
	}

	//선생님 취소사유
	public List<CommonOpDto> tcancel() {
		List<CommonOpDto> t_list = sqlMap.selectList("tcancel");
		return t_list;
	}

	//부모님사유 삭제
	public int parentDelete(int idx) {
		int result = sqlMap.delete("pdel",idx);
		return result;
	}

	//부모님 사유 등록
	public int parentAdd(CommonOpDto commonopDto) {
		int count = sqlMap.insert("parentsInsert",commonopDto);
		return count;
	}


}
