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
			//????????? ????????? ????????? ????????????
			session.setAttribute("saveAddrNum", addr1);
			System.out.println("###INFO ::::: ?????? ?????? ????????????" + addr1);

			mav.addObject("msg", userName + "??? ??????????????? !");

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
			mav.addObject("msg", "????????? ?????? ??????????????? ?????????????????????.");
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

	//????????? ?????? ????????? ???????????? ????????? ??????
	@RequestMapping("/memberJoin.do")
	public String join() {

		return "member/memberJoin";
	}

	//???????????? ??????
	@RequestMapping(value = "joinMember.do", method = RequestMethod.POST)
	public ResponseEntity<?> joinSubmit(MemberDto memberDto) {

		HashMap<String, Object> result = new HashMap<String, Object>();
		System.out.println("-- memberTyep : " + memberDto.getMember_type());


		int joinCount = memberService.memberJoin(memberDto);

		result.put("result", joinCount);
		return ResponseEntity.ok(result);
	}

	//????????? ?????? ??????
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("id")String id) {

		//????????? ??????
		System.out.println("==== ?????? ==== id : " + id);

		int result = memberService.idCheck(id);

		return result;
	}

	//????????? ????????????
	@RequestMapping(value = "/phoneCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public String sendSMS(@RequestParam("phone") String userPhoneNumber) { // ????????? ???????????????

		int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//?????? ??????

		memberService.certifiedPhoneNumber(userPhoneNumber, randomNumber);

		return String.valueOf(randomNumber);
	}

	// ????????? ???????????? ?????? ????????? ??????
	@RequestMapping("/findIdPwd.do")
	public String findIdPwd() {
		return "member/findIdPwd";
	}

	// ????????? ??????
	@RequestMapping(value = "/findIdCheck.do", method = RequestMethod.POST)
	public ModelAndView findIdCheck(@RequestParam("name") String name, @RequestParam("tel") String tel) {

		List<MemberDto> list = memberService.findId(name, tel);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("member/findIdCheck");

		return mav;
	}

	// ???????????? ??????
	@RequestMapping(value = "/findPwdCheck.do", method = RequestMethod.POST)
	public ModelAndView findPwdCheck(@RequestParam("name") String name, @RequestParam("id") String id,
			@RequestParam("tel") String tel) {
		List<MemberDto> list = memberService.findPwd(name, id, tel);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("member/findPwdCheck");
		return mav;
	}

	// ???????????? ????????????
	@RequestMapping(value = "/updatePwd.do" , method = RequestMethod.POST)
	public ModelAndView editPwd(MemberDto memberDto) {

		int result = memberService.editPwd(memberDto);

		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ?"??????????????? ??????????????? ??????????????????." : "???????????? ????????? ?????????????????????.?????? ??????????????????!";
		mav.addObject("msg", msg);
		mav.setViewName("member/findPwdMsg");

		return mav;

	}
	
	//????????????
		@RequestMapping("/memberOutForm.do")
		public String memberOutFoam() {
			return ("member/memberOut");
			
		}
		
		//????????????
		@RequestMapping("/memberOut.do")
		public ModelAndView memberOut(@RequestParam("sidx") int idx, HttpSession session) {
			
			int result = memberService.memberOut(idx);
			String msg = result > 0? "??????????????? ????????? ???????????????." : "?????? ????????? ??????????????? ???????????????.";
			System.out.println("???????????? ?????? : >>>>>>>>>>>>>>>>>>" + msg);
			session.invalidate();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("msg",msg);
			mav.addObject("goUrl","main.do");
			mav.setViewName("member/findPwdMsg");
			return mav;			
		}
				
		//????????????	
		 @RequestMapping(value = "/accountManagement.do", method=RequestMethod.GET) 
		 public String accoutManagement() {
			 return ("commonMember/accountManagement");
		 }
		 
		 //???????????? ?????? ??????
		 @ResponseBody
		 @RequestMapping(value = "/accountCheck.do", method=RequestMethod.POST)
		 public ResponseEntity<?> accountCheck(MemberDto mdto) {
			 
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			String id = memberService.accountCheck(mdto);
			
			result.put("result", id);
			
			return ResponseEntity.ok(result);			
		 }
		 
		 //???????????? ?????? ?????? 
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
		 
		 //???????????? ????????? ??????
		 @RequestMapping(value = "/accountIdUpd.do", method=RequestMethod.POST)
		 public ResponseEntity<?> accountIdUpd(int idx) {
			 
			 HashMap<String, Object> result = new HashMap<String, Object>();

			 return ResponseEntity.ok(null);
		 }

}







