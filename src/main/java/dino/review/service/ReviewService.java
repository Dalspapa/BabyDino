package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;

public interface ReviewService {

	//내가 작성한 리뷰
	public List<ReviewDto> reviewList(ReviewDto dto);

	//리뷰 작성
	public int writeReview(ReviewDto dto);
}
