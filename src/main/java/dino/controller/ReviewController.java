package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.ReviewDto;
import dino.review.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;

	/**
	 * 내가 작성한 리뷰
	 * @return
	 */
	@RequestMapping(value="/reviewMain.do")
	public ModelAndView reviewMain(ReviewDto dto) {
		List<ReviewDto> reviewList= reviewService.reviewList(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", reviewList);
		mav.setViewName("review/reviewMain");
		return mav;
	}

	/**
	 * 리뷰 작성
	 * @return
	 */
	@RequestMapping(value="writeReviewForm.do")
	public String writeReviewForm() {
		return "review/writeReview";
	}

	/**
	 * 리뷰작성서브밋
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="/writesubmit.do")
	public ModelAndView writeReview(ReviewDto dto) {
		reviewService.writeReview(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("review/reviewMain");
		return mav;
	}
}
