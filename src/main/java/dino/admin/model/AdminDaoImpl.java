package dino.admin.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.MemberDto;
import dino.dto.ReportDto;

public class AdminDaoImpl implements AdminDao {

	private SqlSessionTemplate sqlMap;
	
	public AdminDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<ReportDto> reportList() {
		List<ReportDto> reportlist = sqlMap.selectList("reportList");
		return reportlist;
	}
	
	//회원강제탈퇴
	public int adminMemberOut(int idx) {
		System.out.println("리포트 삭제 idxdddddddddddd "+idx);
		int result = sqlMap.update("adminMemberOut", idx);
		return result;
	}
}
