package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping("/noticeMain.do")
	public String noticeMain() {
		return "notice/noticeMain";
	}
	
	@RequestMapping("/notice.do")
	public String notice() {
		return "notice/notice";
	}
	
	@RequestMapping("/mostQna.do")
	public String mostQna() {
		return "notice/mostQna";
	}
	
	@RequestMapping("/parentsGuide.do")
	public String parentsGuide() {
		return "notice/parentsGuide";
	}
	
	@RequestMapping("/TeacherGuide.do")
	public String TeacherGuide() {
		return "notice/TeacherGuide";
	}
	
	@RequestMapping("/Qna.do")
	public String QnaForm() {
		return "notice/QnaForm";
	}
}
