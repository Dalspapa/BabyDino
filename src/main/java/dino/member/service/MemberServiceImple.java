package dino.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dino.Dto.memberDto;
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
	
	public int memberJoin(memberDto memberDto) {
		int result = memberDao.memberJoin(memberDto);
		return result;
	}

	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean loginCheck(String id,String pwd) {
		memberDto memberDto = memberDao.loginCheck(id);
		
		if (memberDto != null) {
			String dbPwd = memberDto.getPwd();
			
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

	public memberDto getUserInfo(String id) {
		memberDto memberDto = memberDao.getUserInfo(id);
		return memberDto;
	}

	//findId
	public List<memberDto> findId(String name, String tel) {
		Map map=new HashMap();
		map.put("name", name);
		map.put("tel", tel);
		List<memberDto> list = memberDao.findId(map);
		return list;
		
	}

}
