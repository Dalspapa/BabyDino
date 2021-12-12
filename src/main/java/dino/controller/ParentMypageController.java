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
	 * 돌봄현황 메인 정보 출력
	 * @return
	 */
	@RequestMapping("/proceedingMain.do")
	public ModelAndView proceedingMain() {
		List<ParentMypageDto> list = parentMypageService.proceedingMain();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("parentMypage/proceedingMain");
		return mav;
	}

	/**
	 * 매칭된 돌봄 현황 페이지
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
}

