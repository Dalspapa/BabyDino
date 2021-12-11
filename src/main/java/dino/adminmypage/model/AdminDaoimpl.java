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
	public int parentDelete(String op) {
		int result = sqlMap.delete("pdel",op);
		return result;
	}

	//부모님 사유 등록
	public int parentAdd(CommonOpDto commonopDto) {
		int count = sqlMap.insert("parentsInsert",commonopDto);
		return count;
	}

	//선생님 사유등록
	public int teacherAdd(CommonOpDto commonopDto) {
		int count = sqlMap.insert("teacherInsert",commonopDto);
		return count;
	}
	
	//선생님 사유삭제
	public int teacherDelete(String op) {
		int result = sqlMap.delete("tdel",op);
		return result;
	}

	//돌봄분야 리스트
	public List<CommonOpDto> careList() {
		List<CommonOpDto> c_list = sqlMap.selectList("careList");
		return c_list;
	}
	
	//돌봄분야 등록
	public int careAdd(CommonOpDto commonopDto) {
		int count = sqlMap.insert("careAdd",commonopDto);
		return count;
	}
	
	//돌봄분야 삭제
	public int careDel(String op) {
		int result = sqlMap.delete("cdel",op);
		return result;
	}
}
