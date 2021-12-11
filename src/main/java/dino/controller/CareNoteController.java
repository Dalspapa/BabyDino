package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dino.carenote.service.CareNoteService;
import dino.dto.CareNoteDto;

@Controller
public class CareNoteController {

	@Autowired
	private CareNoteService careNoteService;

	@RequestMapping("/carenoteList.do")
	public ModelAndView careNoteList() {

		List<CareNoteDto> list=careNoteService.careNoteList();
		ModelAndView mav=new ModelAndView();

		mav.addObject("carenoteList", list);
		mav.setViewName("careNote/careNoteList");

		return mav;
	}

	/**
	 * 케어노트 작성화면
	 * @return
	 */
	@RequestMapping(value="/carenoteForm.do", method=RequestMethod.GET)
	public String carenoteForm() {
		return "careNote/writeCareNote";
	}

	/**
	 * 캐어노트작성
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="/carenote/write.do")
	public ModelAndView carenoteWrite(CareNoteDto dto) {

		int result=careNoteService.writeCareNote(dto);
		ModelAndView mav= new ModelAndView();

		mav.addObject("dto", dto);
		mav.setViewName("redirect:/carenote/list.do");

		return mav;
	}

}
