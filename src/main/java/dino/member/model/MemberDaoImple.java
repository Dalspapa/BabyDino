package dino.member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.MemberDto;

public class MemberDaoImple implements MemberDao {

	private SqlSessionTemplate sqlMap;

	public MemberDaoImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//Start

	//회원가입
	public int memberJoin(MemberDto memberDto) {

		int result = sqlMap.insert("joinMember", memberDto);

		return result;
	}

	//아이디 중복체크
	public int idCheck(String id) {

		int result = sqlMap.selectOne("idCheck", id);

		return result;

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

	//findpwd
	public List<MemberDto> findPwd(Map map) {
	    List<MemberDto> list = sqlMap.selectList("findPwd",map);
		return list;
	}

	//editpwd
	public int editPwd(MemberDto memberDto) {
		int result = sqlMap.update("editPwd", memberDto);
		return result;
	}
	


}

