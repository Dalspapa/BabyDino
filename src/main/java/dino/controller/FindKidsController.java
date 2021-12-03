package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.CommonOpDto;
import dino.Dto.MakeTCardDto;
import dino.commonop.service.CommonOpService;
import dino.findkids.model.KidInfoDto;
import dino.findkids.service.FindKidsService;

import java.util.*;

@Controller
public class FindKidsController {
	
	@Autowired
	private CommonOpService commonOpService;
	
	@Autowired
	private FindKidsService findKidsService;

	@RequestMapping("/findKids.do")
	public ModelAndView findKids() {
		
		List<MakeTCardDto> k_list = findKidsService.kidsList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("k_list", k_list);
		mav.setViewName("findKids/findKids");		
		return mav;
	}
	
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.POST)
	public ModelAndView makeTeacherCard(MakeTCardDto dto) {
		
		int result = findKidsService.makeTCard(dto);
		
		String msg = result > 0 ? "선생님 카드가 정상적으로 등록되었습니다!":"선생님 카드 등록에 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("findKids/kidsMsg");
		return mav;
	}
	
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.GET)
	public ModelAndView makeTeacherCard() {
		
		List<CommonOpDto> list = commonOpService.t_job_opList();
		List<CommonOpDto> k_list = commonOpService.k_type_opList();
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		List<CommonOpDto> d_list = commonOpService.t_date_opList();
		List<CommonOpDto> t_list = commonOpService.t_time_opList();
		List<CommonOpDto> b_list = commonOpService.t_bank_opList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("k_list", k_list);
		mav.addObject("c_list", c_list);
		mav.addObject("d_list", d_list);
		mav.addObject("t_list", t_list);
		mav.addObject("b_list", b_list);
		mav.setViewName("findKids/makeTeacherCard");
		return mav;
	}
	
	@RequestMapping("/compulsoryCheck.do")
	public ModelAndView compulsoryCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("findKids/compulsoryCheck");
		return mav;
	}
	
	//아이카드 상세내역
	@RequestMapping("/kidInfo.do")
	public ModelAndView kidInfo(
			@RequestParam(value = "idx", defaultValue = "0")int idx) {
		
		KidInfoDto k_dto = findKidsService.kidInfo(idx);
		
		ModelAndView mav = new ModelAndView();
		
		if(k_dto == null) {
			mav.addObject("msg", "잘못된 접근 또는 삭제된 게시글 입니다.");
			mav.setViewName("findKids/kidsMsg");
		}else {
			mav.addObject("k_dto", k_dto);
			mav.setViewName("findKids/kidInfo");
		}
	
		return mav;
	}
}
