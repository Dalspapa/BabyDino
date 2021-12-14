package dino.review.model;

import java.util.List;

import dino.dto.ReviewDto;

public interface ReviewDao {

	//부모님이 작성한 리뷰
	public List<ReviewJoinDto> reviewList(int idx);

	//부모님이 받은 리뷰
	public List<ReviewJoinDto> getReviewList(int idx);

	//선생님이 작성한 리뷰
	public List<ReviewJoinDto> t_reviewList(int idx);

	//선생님이 받은 리뷰
	public List<ReviewJoinDto> t_getReviewList(int idx);

	//리뷰작성
	public int writeReview(ReviewDto dto);
}
