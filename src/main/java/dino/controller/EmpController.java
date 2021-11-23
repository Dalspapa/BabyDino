package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.emp.model.EmpDAO;
import test.emp.model.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired //웹기반이기 때문에 어플리케이션 개발에서 사용 불가.
	private EmpDAO empDao;

	@RequestMapping("/emp.do")
	public String empForm() {
		
		return "emp/emp";
	}
	
	@RequestMapping("/empAdd.do")
	public ModelAndView empAdd(EmpDTO dto) {
		
		int result = empDao.empAdd(dto);
		String msg = result > 0 ? "사원등록 성공!" : "사원등록 실패!";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/empDel.do")
	//public ModelAndView empDel(@RequestParam("name") String name)
	public ModelAndView empDel(String name) { //(@RequestParam("name") 생략 가능
		
		int result = empDao.empDel(name);
		String msg = result > 0 ? "사원삭제성공!" : "사원삭제실패!";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/empList.do")
	public ModelAndView empList() {
		
		List<EmpDTO> list = empDao.empAllList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("emp/empList");
		return mav;
	}
	
	@RequestMapping("/empUpdateForm.do")
	public ModelAndView empUpdateForm(@RequestParam("idx") int idx) {
		
		System.out.println("idx : " + idx); //test code
		
		EmpDTO dto = empDao.empUpdateForm(idx);
		
		ModelAndView mav = new ModelAndView();
		
		if (dto == null) {
			String msg = "존재하지 않는 사원 번호 입니다.";
			mav.addObject("msg", msg);
			mav.setViewName("emp/empMsg");
		} else {
			mav.addObject("dto", dto);
			mav.setViewName("emp/empUpdate");
		}
		
		return mav;
	}
	
	@RequestMapping("/empUpdate.do")
	public ModelAndView empUpdate(EmpDTO dto) {
		
		int result = empDao.empUpdate(dto);
		
		String msg = result > 0 ? "사원수정성공!" : "사원수정실패!";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
}