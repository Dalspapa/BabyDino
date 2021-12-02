package dino.member.service;

import dino.Dto.MemberDto;

public interface MemberService {

	//join
	public int memberJoin(MemberDto memberDto);
	public int idCheck(String id);

	//login
	public boolean loginCheck(String id, String pwd);
	public MemberDto getUserInfo(String id);
	
	//휴대폰 번호 인증
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);


}
