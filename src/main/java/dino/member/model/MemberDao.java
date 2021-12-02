package dino.member.model;

import dino.Dto.MemberDto;

public interface MemberDao {

		//Join
		public int memberJoin(MemberDto memberDto);
		public int idCheck(String id);
		
		//Login
		public MemberDto loginCheck(String id);
		public MemberDto getUserInfo(String id);
}
