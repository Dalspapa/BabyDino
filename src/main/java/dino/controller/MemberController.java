package dino.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

import dino.dto.MemberDto;
import dino.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	//Do Login
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ResponseEntity<?> loginSubmit(@RequestParam("id") String id,
			@RequestParam("pwd") String pwd, HttpSession session,
			@RequestParam(value = "saveId", required = false) String saveId,
			HttpServletResponse resp) {

		HashMap<String, Object> response = new HashMap<String, Object>();
		String success = "fail";
		boolean result = memberService.loginCheck(id, pwd);

		response.put("result", result);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main");

		if (result == true) {
			MemberDto memberDto = memberService.getUserInfo(id);
			String userName = memberDto.getName();
			int memberType = memberDto.getMember_type();
			String addr1 = memberDto.getAddr1();

			if (memberType == 9) {
				boolean outMember = true;
				response.put("outMember", outMember);
				
				return ResponseEntity.ok(response);
			}
			
			session.setAttribute("saveIdx", memberDto.getIdx());
			session.setAttribute("saveId", id);
			session.setAttribute("saveName", userName);
			session.setAttribute("saveMemberType", memberType);
			//가까운 검색에 필요한 주소정보
			session.setAttribute("saveAddrNum", addr1);
			System.out.println("###INFO ::::: 세션 저장 우편번호" + addr1);

			mav.addObject("msg", userName + "님 환영합니다 !");

			if (saveId == null) {
				Cookie ck = new Cookie("saveId", id);
				ck.setMaxAge(0);
				resp.addCookie(ck);
			} else {
				Cookie ck = new Cookie("saveId", id);
				ck.setMaxAge(60*60*24*30);
				resp.addCookie(ck);
			}
			success = "success";

		} else if (result == false) {
			mav.addObject("msg", "아이디 또는 비밀번호가 잘못되었습니다.");
		}

		response.put("success", success);
		return ResponseEntity.ok(response);
	}

	//Do Logout
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.invalidate();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:main.do");

		return mav;
	}

	@RequestMapping("/join.do")
	public String goJoinPage() {
		return "member/join";
	}

	//선생님 또는 부모님 회원가입 페이지 이동
	@RequestMapping("/memberJoin.do")
	public String join() {

		return "member/memberJoin";
	}

	//회원가입 요청
	@RequestMapping(value = "joinMember.do", method = RequestMethod.POST)
	public ResponseEntity<?> joinSubmit(MemberDto memberDto) {

		HashMap<String, Object> result = new HashMap<String, Object>();
		System.out.println("-- memberTyep : " + memberDto.getMember_type());


		int joinCount = memberService.memberJoin(memberDto);

		result.put("result", joinCount);
		return ResponseEntity.ok(result);
	}

	//아이디 중복 체크
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("id")String id) {

		//테스트 코드
		System.out.println("==== 진입 ==== id : " + id);

		int result = memberService.idCheck(id);

		return result;
	}

	//휴대폰 번호인증
	@RequestMapping(value = "/phoneCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public String sendSMS(@RequestParam("phone") String userPhoneNumber) { // 휴대폰 문자보내기

		int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

		memberService.certifiedPhoneNumber(userPhoneNumber, randomNumber);

		return String.valueOf(randomNumber);
	}

	// 아이디 비밀번호 찾기 페이지 이동
	@RequestMapping("/findIdPwd.do")
	public String findIdPwd() {
		return "member/findIdPwd";
	}

	// 아이디 찾기
	@RequestMapping(value = "/findIdCheck.do", method = RequestMethod.POST)
	public ModelAndView findIdCheck(@RequestParam("name") String name, @RequestParam("tel") String tel) {

		List<MemberDto> list = memberService.findId(name, tel);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("member/findIdCheck");

		return mav;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/findPwdCheck.do", method = RequestMethod.POST)
	public ModelAndView findPwdCheck(@RequestParam("name") String name, @RequestParam("id") String id,
			@RequestParam("tel") String tel) {
		List<MemberDto> list = memberService.findPwd(name, id, tel);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("member/findPwdCheck");
		return mav;
	}

	// 비밀번호 수정하기
	@RequestMapping(value = "/updatePwd.do" , method = RequestMethod.POST)
	public ModelAndView editPwd(MemberDto memberDto) {

		int result = memberService.editPwd(memberDto);

		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ?"비밀번호가 정상적으로 바뀌었습니다." : "비밀번호 수정에 실패하였습니다.다시 확인해주세요!";
		mav.addObject("msg", msg);
		mav.setViewName("member/findPwdMsg");

		return mav;

	}
	
	//회원탈퇴
		@RequestMapping("/memberOutForm.do")
		public String memberOutFoam() {
			return ("member/memberOut");
			
		}
		
		//회원탈퇴
		@RequestMapping("/memberOut.do")
		public ModelAndView memberOut(@RequestParam("sidx") int idx, HttpSession session) {
			
			int result = memberService.memberOut(idx);
			String msg = result > 0? "성공적으로 탈퇴가 되었습니다." : "회원 탈퇴가 이루어지지 않았습니다.";
			System.out.println("회원탈퇴 결과 : >>>>>>>>>>>>>>>>>>" + msg);
			session.invalidate();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("msg",msg);
			mav.addObject("goUrl","main.do");
			mav.setViewName("member/findPwdMsg");
			return mav;			
		}
				
		//계정관리	
		 @RequestMapping(value = "/accountManagement.do", method=RequestMethod.GET) 
		 public String accoutManagement() {
			 return ("commonMember/accountManagement");
		 }
		 
		 //계정관리 비번 확인
		 @ResponseBody
		 @RequestMapping(value = "/accountCheck.do", method=RequestMethod.POST)
		 public ResponseEntity<?> accountCheck(MemberDto mdto) {
			 
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			String id = memberService.accountCheck(mdto);
			
			result.put("result", id);
			
			return ResponseEntity.ok(result);			
		 }
		 
		 //계정관리 회원 정보 
		 @RequestMapping(value = "/accountInfo.do", method = RequestMethod.POST)
		 public ResponseEntity<?> accountInfo(String id){
			 
			 HashMap<String, Object> result = new HashMap<String, Object>();
			
			 MemberDto mdto = memberService.getUserInfo(id);
			 
			 if(mdto != null) {

				String pwd = mdto.getPwd();
				String tel = mdto.getTel();
				String addr1 = mdto.getAddr1();
				String addr2 = mdto.getAddr2();
				String addr3 = mdto.getAddr3();				 
 
				result.put("pwd", pwd);
				result.put("tel", tel);
				result.put("addr1", addr1);
				result.put("addr2", addr2);
				result.put("addr3", addr3);
				
				return ResponseEntity.ok(result);
			 }			 
			 return ResponseEntity.ok(null);
		 }
		 
		 //계정관리 아이디 수정
		 @RequestMapping(value = "/accountIdUpd.do", method=RequestMethod.POST)
		 public ResponseEntity<?> accountIdUpd(int idx) {
			 
			 HashMap<String, Object> result = new HashMap<String, Object>();

			 return ResponseEntity.ok(null);
		 }

}







