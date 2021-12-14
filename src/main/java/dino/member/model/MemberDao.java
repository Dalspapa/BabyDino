package dino.member.model;

import java.util.List;
import java.util.Map;

import dino.dto.MemberDto;

public interface MemberDao {

			//Join
			public int memberJoin(MemberDto memberDto);
			public int idCheck(String id);

			//Login
			public MemberDto loginCheck(String id);
			public MemberDto getUserInfo(String id);

			//FindId
			public List<MemberDto> findId(Map map);
			//FindPwd
			public List<MemberDto> findPwd(Map map);
			//editPwd
			public int editPwd(MemberDto memberDto);

			//memberOut
			public int memberOut(int idx);
			
			//계정 관리 전 본인 확인
			public String accountCheck(MemberDto mdto);
			
			
}
