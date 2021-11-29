package dino.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class payController {
	
	@RequestMapping("/kakaoPay.do")
	public String kakayPay() {
		return "kakaoPayTest/kakaoPay";
	}
	
	@RequestMapping("/kakaoPayOk.do")
	public ModelAndView kakaoPayOk(
			@RequestParam("msg") String msg) {
		
		System.out.println("------------------ msg : " + msg);
		return null;
	}

}
