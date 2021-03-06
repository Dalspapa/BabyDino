package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;
import dino.report.service.ReportService;

@Controller
public class ReportController {

	@Autowired
	private ReportService reportService;

	String goUrl = "";

	/*:::::::동현 작업 시작::::::::::*/
	@RequestMapping("/reportList.do")
	public ModelAndView ReportForm(
			@RequestParam(value = "cp", defaultValue = "1")int cp) {
		int listSize = 10;
		int pageSize = 5;
		int totalCnt = reportService.getTotalCntReport();
		
		List<ReportDto> reportlist = reportService.reportList(cp, listSize);
		String pageStr = pagination.PageModule.makePage("reportList.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageStr", pageStr);
		//Test Code
		System.out.println("+====="+reportlist);
		mav.addObject("reportlist",reportlist);
		mav.setViewName("report/reportList");

		return mav;
	}
	/*:::::::동현 작업 끝::::::::::*/
	@RequestMapping(value = "/reportWrite.do", method = RequestMethod.GET)
	public ModelAndView reportWriteForm(@RequestParam(value = "idx",  defaultValue = "0") int idx) {
				
		System.out.println("ddddd"+idx);
		
		List<CommonOpDto> rp_list = reportService.reportOpList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.addObject("rp_list", rp_list);
		mav.setViewName("report/reportWrite");

		return mav;
	}

	@RequestMapping(value = "/reportWrite.do", method = RequestMethod.POST)
	public ModelAndView reportWriteSubmit(ReportDto dto) {
		int result = reportService.reportWrite(dto);
		String msg = result > 0 ?"신고 성공!" : "신고 실패!";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","reportList.do");
		mav.setViewName("report/reportMsg");
		return mav;
	}

	 @RequestMapping("/reportContent.do")
	 public ModelAndView reportContent(@RequestParam(value = "idx",defaultValue = "0")int idx) {

		 ReportDto dto = reportService.reportContent(idx);
		 ModelAndView mav = new ModelAndView();

		 if(dto == null) {
			 mav.addObject("msg", "잘못된 접근 또는 삭제된 신고글입니다.");
			 mav.setViewName("report/reportMsg");
		}else {
			mav.addObject("dto", dto);
			mav.setViewName("report/reportContent");

		} return mav;
	}

	 @RequestMapping("/reportDelete.do")
	 public ModelAndView reportDelete(int idx) {

		 int result = reportService.reportDelete(idx);
		 String msg = result > 0 ? "삭제완료" : "삭제실패";
		 ModelAndView mav = new ModelAndView ();
		 mav.addObject("msg",msg);
		 mav.addObject("goUrl","reportList.do");
		 mav.setViewName("report/reportMsg");

		 return mav;
	 }

	 @RequestMapping(value = "/reportUpdate.do", method = RequestMethod.GET)
	 public ModelAndView reportUpdateForm(@RequestParam(value = "idx" , defaultValue = "0")int idx) {
		 ReportDto dto = reportService.reportUpdateForm(idx);
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("dto",dto);
		 mav.setViewName("report/reportUpdate");
		 return mav;
	 }

	 @RequestMapping(value = "/reportUpdate.do", method = RequestMethod.POST)
	 public ModelAndView reportUpdate(ReportDto dto) {

		 int result = reportService.reportUpdate(dto);
		 String msg = result>0?	"수정 성공!": "수정 실패";
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("msg",msg);
		 mav.addObject("goUrl","reportList.do");
		 mav.setViewName("report/reportMsg");

		 return mav;
	 }
}
