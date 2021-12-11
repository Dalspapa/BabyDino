package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.admin.service.AdminService;
import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;

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
	
	//회원관리로 이동
	@RequestMapping("/memberManagement.do")
	public ModelAndView memberManageMent() {
		List<MemberDto> list = adminService.memberManagement();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("adminMypage/memberManagement");
		return mav;
	}
	
	//선생님 정산
	@RequestMapping("/settlement.do")
	public ModelAndView settlement() {
		List<ReserveDto> c_list = adminService.teacherCost();
		//테스트코드
		System.out.println("선생님 전산 컨트롤러 >>>>>>>>>>>>>" + c_list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("c_list" , c_list);
		mav.setViewName("adminMypage/settlement");
		return mav;
	}
	
	//기능편집
	@RequestMapping("/functionEdit.do")
	public ModelAndView functionEdit() {
		List<CommonOpDto> p_list = adminService.pcancel();
		List<CommonOpDto> t_list = adminService.tcancel();
		ModelAndView mav = new ModelAndView();
		mav.addObject("p_list",p_list);
		mav.addObject("t_list",t_list);
		mav.setViewName("adminMypage/functionEdit");
		return mav;
	}
	
	//기능편집-부모님 사유 삭제
	@RequestMapping("/parentDelete.do")
	public ModelAndView parentDelete(int idx) {
		int result = adminService.parentDelete(idx);
		String msg = result > 0 ? "부모님 사유 삭제 완료" : "부모님 사유 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		
		return mav;
	}
	
	//기능편집-부모님 사유 추가하기
	@RequestMapping("/parentAddForm.do")
	public String parentAddForm() {
		return "adminMypage/parentsReason";
	}
	
	
}
