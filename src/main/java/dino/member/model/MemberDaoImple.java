package dino.member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.MemberDto;

public class MemberDaoImple implements MemberDao {
	
	private SqlSessionTemplate sqlMap;

	public MemberDaoImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//Start
	
	//join
	public int memberJoin(MemberDto memberDto) {
		int result = sqlMap.insert("joinMember", memberDto);
		return result;
	}

	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	
	//login
	public MemberDto loginCheck(String id) {
		MemberDto memberDto = sqlMap.selectOne("loginCheck", id);
		
		//TestCode
		System.out.println("Dao.java memberDto : " + memberDto);
		
		if (memberDto != null) {
			return memberDto;
		} else {
			return null;
		}
		
	}

	public MemberDto getUserInfo(String id) {
		MemberDto memberDto = sqlMap.selectOne("getUserInfo", id);
		
		//TestCode
		System.out.println("Dao.java memberDto : " + memberDto);
		
		return memberDto;
	}

	//findId
	public List<MemberDto> findId(Map map) {
		List<MemberDto> list = sqlMap.selectList("findId", map);
		return list;
	}



}
