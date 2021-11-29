package dino.member.service;

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
	
	public int memberJoin(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean loginCheck(String id,String pwd) {
		MemberDto memberDto = memberDao.loginCheck(id);
		
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

	public MemberDto getUserInfo(String id) {
		MemberDto memberDto = memberDao.getUserInfo(id);
		return memberDto;
	}

	//findId
	public MemberDto findId(String name, String tel) {
		MemberDto dto = memberDao.findId(name, tel);
		return dto;
		
	}

}
