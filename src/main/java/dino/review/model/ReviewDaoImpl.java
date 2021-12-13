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

	//내가 작성한 리뷰
	public List<ReviewDto> reviewList(ReviewDto dto) {
		List<ReviewDto> reviewList = sqlMap.selectList("reviewList", dto);
		return reviewList;
	}

	//리뷰 작성
	public int writeReview(ReviewDto dto) {
		int result=sqlMap.insert("writeReview", dto);
		return result;
	}
}
