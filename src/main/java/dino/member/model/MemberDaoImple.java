package dino.member.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDaoImple implements MemberDao {
	
	private SqlSessionTemplate sqlMap;

	public MemberDaoImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//Start
	
	public int memberJoin(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
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

}
