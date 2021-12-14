package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.KidDto;
import dino.parentmypage.model.ParentMypageDto;
import dino.parentmypage.service.ParentMypageService;

@Controller
public class ParentMypageController {

	@Autowired
	private ParentMypageService parentMypageService;

	/**
	 * 돌봄 현황 페이지
	 * @return
	 */
	@RequestMapping("/proceedingMain.do")
	public ModelAndView proceedingMain_ing(@RequestParam("idx")int idx) {
		List<ParentMypageDto> list_ing = parentMypageService.proceedingMain_ing(idx);
		List<ParentMypageDto> list_done = parentMypageService.proceedingMain_done(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list_ing",list_ing);
		mav.addObject("list_done",list_done);
		mav.setViewName("parentMypage/proceedingMain");
		return mav;
	}

	/**
	 * 선생님 돌봄 현황 페이지
	 * @param idx
	 * @return
	 */
	@RequestMapping("/t_proceedingMain.do")
	public ModelAndView t_proceedingMain_ing(@RequestParam("idx")int idx) {
		List<ParentMypageDto> t_list_ing = parentMypageService.t_proceedingMain_ing(idx);
		List<ParentMypageDto> t_list_done = parentMypageService.t_proceedingMain_done(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("t_list_ing",t_list_ing);
		mav.addObject("t_list_done",t_list_done);
		mav.setViewName("teacherMypage/t_proceedingMain");
		return mav;
	}

	/**
	 * 부모님 - 매칭된 돌봄 현황 페이지
	 * @return
	 */
	@RequestMapping("/caring.do")
	public ModelAndView caring(@RequestParam("idx")int idx) {
		ParentMypageDto dto = parentMypageService.caring(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("parentMypage/caringPage");
		return mav;
	}

	@RequestMapping("/t_caring.do")
	public ModelAndView t_caring(@RequestParam("idx")int idx) {
		ParentMypageDto dto = parentMypageService.caring(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("parentMypage/t_caringPage");
		return mav;
	}

	/**
	 * 아이카드 목록 보기 페이지
	 * @return
	 */
	@RequestMapping("/kidsCard.do")
	public ModelAndView kidsCardList(@RequestParam("idx")int idx) {
		List<ParentMypageDto> list = parentMypageService.kidsCardList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("parentMypage/kidsCard");
		return mav;
	}

	/**
	 * 작성된 돌봄노트 목록 보기
	 * @return
	 */
	@RequestMapping(value = "/careNoteList.do")
	public ModelAndView careNoteList(@RequestParam("idx")int idx) {
		List<ParentMypageDto> list = parentMypageService.careNoteList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("parentMypage/careNote");
		return mav;
	}
}

