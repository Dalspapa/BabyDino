package dino.member.service;

import java.util.List;

import dino.Dto.memberDto;

public interface MemberService {

	//join
	public int memberJoin(memberDto memberDto);
	public boolean idCheck(String id);

	//login
	public boolean loginCheck(String id, String pwd);
	public memberDto getUserInfo(String id);
	
	//FindId
	public List<memberDto> findId(String name,String tel);

}
