package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;
import dino.review.model.ReviewJoinDto;

public interface ReviewService {

	//내가 작성한 리뷰
	public List<ReviewJoinDto> reviewList(int idx);

	//내가 받은 리뷰 리스트
	public List<ReviewJoinDto> getReviewList(int idx);

	//선생님이 작성한 리뷰
	public List<ReviewJoinDto> t_reviewList(int idx);

	//선생님이 받은 리뷰
	public List<ReviewJoinDto> t_getReviewList(int idx);

	//리뷰 작성
	public int writeReview(ReviewDto dto);
}
