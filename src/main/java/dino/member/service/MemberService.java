package dino.member.service;

import java.util.List;

import dino.dto.MemberDto;

public interface MemberService {

		//join
		public int memberJoin(MemberDto memberDto);
		public int idCheck(String id);

		//login
		public boolean loginCheck(String id, String pwd);
		public MemberDto getUserInfo(String id);

		//FindId
		public List<MemberDto> findId(String name,String tel);
		//FindPwd
		public List<MemberDto> findPwd(String name,String id,String tel);
		//editPwd
		public int editPwd(MemberDto memberDto);

		//휴대폰 번호 인증
		public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);
		
		//회원 탈퇴
		public int memberOut(int idx);
		
		//계정 관리 전 본인 확인
		public String accountCheck(MemberDto memberDto);
}
