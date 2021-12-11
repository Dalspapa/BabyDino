package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.admin.service.AdminService;
import dino.dto.ReportDto;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	String msg = "";
	String goUrl = "";
	
	@RequestMapping("/reportManagement.do")
	public ModelAndView reportManagement() {
		
		List<ReportDto> reportManagement = adminService.reportList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("reportManagement",reportManagement);
		mav.setViewName("admin/reportManagement");
		
		return mav;
	}
	
	//관리자가 강제탈퇴버튼 누르면 연결되는 메서드
	@RequestMapping("/adminMemberOut.do")
	public ModelAndView adminMemberOut(@RequestParam("idx") int idx) {
		
		System.out.println("리포트 삭제 idx "+idx);
		int result = adminService.adminMemberOut(idx);
		msg = result > 0? "강제탈퇴 처리 되었습니다." : "강제탈퇴처리가 이루어지지 않았습니다.";
		goUrl = "reportManagement.do";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl", goUrl);
		mav.setViewName("admin/adminMsg");
		return mav;
	}
}
