package dino.adminmypage.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;

public class AdminDaoImpl implements AdminDao {
	
	private SqlSessionTemplate sqlMap;
	
	/*::::::::::동현 작업 시작:::::::::::*/
	//신고하기
	public List<ReportDto> reportList(Map map) {
		List<ReportDto> reportlist = sqlMap.selectList("reportList", map);
		return reportlist;
	}
	
	// 페이징 처리
		public int getTotalCntReport() {
			int count = sqlMap.selectOne("totalCntReport");
			return count;
		}
	/*::::::::::동현 작업 끝:::::::::::*/
	//회원강제탈퇴
	public int adminMemberOut(int idx) {
		int result = sqlMap.update("adminMemberOut", idx);
		return result;
	}	

	public AdminDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	/*:::::::동현 작업 시작::::::::*/
	//admin 회원관리
	public List<MemberDto> adminMemberManagement(Map map) {
		List<MemberDto> list = sqlMap.selectList("adminMemberManagement", map);
		return list;
	}
	
	// 페이징 처리
	public int getTotalCnt() {
		int count = sqlMap.selectOne("memberManagementTotalCnt");
		return count;
	}
	/*:::::::동현 작업 끝::::::::*/
	
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

	
	//선생님 필수 인증(쿼리부분수정 완료 )
	public List<AdminDto> teacherCertification() {
		List<AdminDto> t_list = sqlMap.selectList("teacherCertification");
		return t_list;
	}

	
	//선생님 등급 수정
	public int teaCertUpd(int idx) {
		System.out.println("샘등급 수정 진행dao");
		return sqlMap.update("teaCertUpd", idx);
	}
}
