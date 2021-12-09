package dino.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONObject;
import dino.Dto.MemberDto;

import dino.member.model.MemberDao;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MemberServiceImple implements MemberService {

	private MemberDao memberDao;

	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	//Start
	
	//회원가입
	public int memberJoin(MemberDto memberDto) {
		
		
		//test code
		System.out.println(">>addr<<=" + memberDto.getAddr1() + memberDto.getAddr2() + memberDto.getAddr3());
		
		int result = memberDao.memberJoin(memberDto);
		
		return result;
	}
	
	//아이디 중복 체크
	public int idCheck(String id) {
		
		int result = memberDao.idCheck(id);
		
		return result;
		
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
	public List<MemberDto> findId(String name, String tel) {
		Map map = new HashMap();
		map.put("name", name);
		map.put("tel", tel);
		List<MemberDto> list = memberDao.findId(map);
		return list;		
	}


	
	//휴대폰 인증
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) { 
		
		String api_key = "NCSVVXWXHSO4YCEZ"; 
		String api_secret = "ZFJRPVL1GJWKVJCVZMGSEQ6VZQIXXBZB"; 
		
		Message coolsms = new Message(api_key, api_secret); 
		
		// 4 params(to, from, type, text) are mandatory. must be filled 
		HashMap<String, String> params = new HashMap<String, String>(); 
		params.put("to", userPhoneNumber); // 수신전화번호 
		params.put("from", "010-5067-8626"); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨 
		params.put("type", "SMS"); 
		params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
		params.put("app_version", "test app 1.2"); // application name and version 
		
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
			System.out.println(obj.toString()); 
		} catch (CoolsmsException e) { 
			System.out.println(e.getMessage()); 
			System.out.println(e.getCode()); 
			} 
		}
}

