package dino.member.model;

import java.util.List;
import java.util.Map;

import dino.Dto.MemberDto;

public interface MemberDao {

		//Join
		public int memberJoin(MemberDto memberDto);
		public int idCheck(String id);
		
		//Login
		public MemberDto loginCheck(String id);
		public MemberDto getUserInfo(String id);
		
		//FindId
		public List<MemberDto> findId(Map map);
}
