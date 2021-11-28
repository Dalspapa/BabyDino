package dino.member.service;

import dino.member.model.MemberDto;

public interface MemberService {

	//join
	public int memberJoin(MemberDto memberDto);
	public boolean idCheck(String id);

	//login
	public boolean loginCheck(String id, String pwd);
	public MemberDto getUserInfo(String id);

}
