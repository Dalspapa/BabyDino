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

	/**
	 * 케어노트 작성
	 * @return
	 */
	@RequestMapping(value="/writeCareNote.do")
	public String carenoteForm() {
		return "careNote/writeCareNote";
	}

	/**
	 * 캐어노트 서브밋
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="/submitCareNote.do", method = RequestMethod.POST)
	public ModelAndView carenoteWrite(CareNoteDto dto) {

		int result=careNoteService.writeCareNote(dto);
		ModelAndView mav= new ModelAndView();

		mav.addObject("dto", dto);
		mav.setViewName("main");

		return mav;
	}

}
