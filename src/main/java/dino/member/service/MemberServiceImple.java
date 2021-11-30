package dino.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dino.Dto.MemberDto;
import dino.member.model.MemberDao;

public class MemberServiceImple implements MemberService {

	private MemberDao memberDao;

	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	//Start
	
	public int memberJoin(MemberDto MemberDto) {
		int result = memberDao.memberJoin(MemberDto);
		return result;
	}

	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean loginCheck(String id,String pwd) {
		MemberDto MemberDto = memberDao.loginCheck(id);
		
		if (MemberDto != null) {
			String dbPwd = MemberDto.getPwd();
			
			//TestCode
			System.out.println("Service.java dbPwd : " + dbPwd);
			System.out.println("Service.java userPwd : " + pwd);
			
			if (dbPwd.equals(pwd)) {
				return true;
			} else {
				return false;
			}
			
		} else {
			return false;
		}
	}

	public MemberDto getUserInfo(String id) {
		MemberDto MemberDto = memberDao.getUserInfo(id);
		return MemberDto;
	}

	//findId
	public List<MemberDto> findId(String name, String tel) {
		Map map = new HashMap();
		map.put("name", name);
		map.put("tel", tel);
		List<MemberDto> list = memberDao.findId(map);
		return list;
		
	}

}
