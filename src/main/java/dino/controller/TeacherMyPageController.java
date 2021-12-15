package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.commonop.service.CommonOpServiceImple;
import dino.dto.*;
import dino.teachermypage.model.TeacherMyPageDto;
import dino.teachermypage.service.TeacherMyPageService;

@Controller
public class TeacherMyPageController {

	@Autowired
	private TeacherMyPageService teacherMypageService;
	
	@Autowired
	private CommonOpServiceImple commonOpService;
	
	String msg = "";
	String goUrl = "";
	
	//teacher profile move
	@RequestMapping("/teacherProfile.do")
	public ModelAndView teacherProfile(@RequestParam("idx") int idx) {				
	
		ModelAndView mav = new ModelAndView();		
		
		TeacherMyPageDto tDto = teacherMypageService.teacherProfile(idx);
		String intro = tDto.getT_introduce().replace("\n", "<br>");
		tDto.setT_introduce(intro);
		String career = tDto.getCareer_experience().replace("\n", "<br>");
		tDto.setCareer_experience(career);
		List<CommonOpDto> b_list = commonOpService.t_bank_opList();
		List<CommonOpDto> k_list = commonOpService.k_type_opList();
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		if (tDto == null) {
			msg = "잘못된 접근 또는 회원 정보가 일치하지 않습니다.";
			mav.addObject("msg", msg);
			goUrl = "main.do";
			mav.addObject("goUrl", goUrl);
			mav.setViewName("teacherMypage/tMyMsg");
			return mav;
		}
		
		mav.addObject("tDto", tDto);
		mav.addObject("blist", b_list);
		mav.addObject("klist", k_list);
		mav.addObject("clist", c_list);
		mav.setViewName("teacherMypage/teacherProfile");
		return mav;		
	}
	
	// teacher profile bank, acnum, cost Update
	@RequestMapping(value = "/bankUpd.do", method = RequestMethod.POST)
	public ModelAndView bankUpd(MakeTCardDto upDto) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("프로필 컨트롤러로 넘어온dto" + upDto.getBank()+"//"+upDto.getAcnum()+"//"+upDto.getD_member_idx());
		
		int rst = teacherMypageService.batUpdate(upDto);
		msg = rst < 0? "정보 수정에 실패했습니다. 잠시 후 다시 시도해주세요.":"정보 수정 완료";
		mav.addObject("msg", msg);
		goUrl = "teacherProfile.do";
		mav.addObject("goUrl", goUrl);
		mav.setViewName("teacherMypage/tMyMsg");
		return mav;
	}
	
	
	
	// teacher profile introduce, career_experience Update
	@RequestMapping(value = "/introUpd.do", method = RequestMethod.POST)
	public ModelAndView introUpd(MakeTCardDto introDto) {
		
		ModelAndView mav = new ModelAndView();
		
		int rst = teacherMypageService.introUpdate(introDto);
		msg = rst < 0? "정보 수정에 실패했습니다. 잠시 후 다시 시도해주세요.":"정보 수정 완료";
		mav.addObject("msg", msg);
		goUrl = "teacherProfile.do";
		mav.addObject("goUrl", goUrl);
		mav.setViewName("teacherMypage/tMyMsg");
		return mav;
	}
	
	////////////////주호
	//선생님 프로필 아이유형, 돌봄 분야 업데이트
	@RequestMapping("/typeUpd.do")
	public ModelAndView typeUpd(MakeTCardDto typeDto) {	
		
		ModelAndView mav = new ModelAndView();
		
		int rst = teacherMypageService.typeUpd(typeDto);
		msg = rst < 0? "정보 수정에 실패했습니다. 잠시 후 다시 시도해주세요.":"정보 수정 완료";
		mav.addObject("msg", msg);
		goUrl = "teacherProfile.do";
		mav.addObject("goUrl", goUrl);
		mav.setViewName("teacherMypage/tMyMsg");
		
		return mav;
	}
	
	////////////////주호 끝
	
}
