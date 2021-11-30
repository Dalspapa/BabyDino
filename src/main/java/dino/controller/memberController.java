package dino.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.memberDto;
import dino.member.service.MemberService;

@Controller
public class memberController {
	
	@Autowired
	private MemberService memberService;
	
//	//Move LoginPage
//	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
//	public String goLoginPage() {
//		return "member/login";
//	}
	
	//Do Login
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView loginSubmit(@RequestParam("id") String id, 
			@RequestParam("pwd") String pwd, HttpSession session, 
			@RequestParam(value = "saveId", required = false) String saveId, 
			HttpServletResponse resp) {
		
		boolean result = memberService.loginCheck(id, pwd);
		
		//TestCode
		System.out.println("Controller.java result : " + result);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		
		if (result == true) {
			memberDto memberDto = memberService.getUserInfo(id);
			String userName = memberDto.getName();
			int memberType = memberDto.getMember_type();
			
			//TestCode
			System.out.println("Controller.java memberType : " + memberType);
			
			//TestCode
			System.out.println("Controller.java userName : " + userName);
			
			session.setAttribute("saveId", id);
			session.setAttribute("saveName", userName);
			session.setAttribute("saveMemberType", memberType);
			
			mav.addObject("msg", userName + "님 환영합니다 !");
			
			//TestCode
			System.out.println("Controller.java memberType : " + memberType);
			
			if (saveId == null) {
				Cookie ck = new Cookie("saveId", id);
				ck.setMaxAge(0);
				resp.addCookie(ck);
			} else {
				Cookie ck = new Cookie("saveId", id);
				ck.setMaxAge(60*60*24*30);
				resp.addCookie(ck);
			}
			
		} else if (result == false) {
			mav.addObject("msg", "아이디 또는 비밀번호가 잘못되었습니다.");
		}
		
		//TestCode
		System.out.println("::: 로그인 컨트롤러 수행됨 :::");
		
		return mav;
	}

	//Do Logout
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		
		//TestCode
		System.out.println("::: 로그아웃 컨트롤러 수행됨 :::");
		
		return mav;
	}
	
	
	
	
	@RequestMapping("/join.do")
	public String goJoinPage() {
		return "member/join";
	}
	
	@RequestMapping(value = "/memberJoin.do", method = RequestMethod.POST)
	public ModelAndView joinSubmit(memberDto memberDto) {
		
		int result = memberService.memberJoin(memberDto);
		
		String msg = result > 0 ? "성공" : "실패";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("main");
		
		return mav;
		
	}
	
	
	
	
	
	
	
	@RequestMapping("/memberJoin.do")
	public String join() {
		return "member/memberJoin";
	}
	
	//아이디 비밀번호 찾기
	@RequestMapping("/findIdPwd.do")
	public String findIdPwd() {
		
		return "member/findIdPwd";
	}
	
	//아이디 찾기
	@RequestMapping("/findIdCheck.do")
	public ModelAndView findIdCheck(@RequestParam("name") String name,@RequestParam("tel") String tel) {
		
		List<memberDto> list = memberService.findId(name, tel);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("member/findIdCheck");
		return mav;
	}

}
