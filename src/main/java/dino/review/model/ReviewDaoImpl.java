package dino.review.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.ReviewDto;

public class ReviewDaoImpl implements ReviewDao {

	private SqlSessionTemplate sqlMap;

	public ReviewDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//부모님이 작성한 리뷰
	public List<ReviewJoinDto> reviewList(int idx) {
		List<ReviewJoinDto> myreview = sqlMap.selectList("myreview", idx);
		return myreview;
	}

	//부모님이 받은 리뷰 리스트
	public List<ReviewJoinDto> getReviewList(int idx) {
		List<ReviewJoinDto> getreview = sqlMap.selectList("getreview", idx);
		return getreview;
	}

	//선생님이 작성한 리뷰
	public List<ReviewJoinDto> t_reviewList(int idx) {
		List<ReviewJoinDto> t_myreview = sqlMap.selectList("t_myreview", idx);
		return t_myreview;
	}

	//선생님이 받은 리뷰
	public List<ReviewJoinDto> t_getReviewList(int idx) {
		List<ReviewJoinDto> t_getreview = sqlMap.selectList("t_getreview", idx);
		return t_getreview;
	}
	//리뷰 작성
	public int writeReview(ReviewDto dto) {
		int result=sqlMap.insert("writeReview", dto);
		return result;
	}
}
