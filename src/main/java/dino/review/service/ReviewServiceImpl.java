package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;
import dino.review.model.ReviewDao;

public class ReviewServiceImpl implements ReviewService {

	private ReviewDao reviewDao;

	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	//내가 작성한 리뷰
	public List<ReviewDto> reviewList(ReviewDto dto) {
		List<ReviewDto> reviewList = reviewDao.reviewList(dto);
		return reviewList;
	}

	//리뷰 작성
	public int writeReview(ReviewDto dto) {
		int result=reviewDao.writeReview(dto);
		return result;
	}
}
