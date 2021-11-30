package dino.member.model;

import java.util.List;
import java.util.Map;

import dino.Dto.memberDto;

public interface MemberDao {

		//Join
		public int memberJoin(memberDto memberDto);
		public boolean idCheck(String id);
		
		//Login
		public memberDto loginCheck(String id);
		public memberDto getUserInfo(String id);
		
		//FindId
		public List<memberDto> findId(Map map);
}
