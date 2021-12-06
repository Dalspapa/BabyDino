package dino.findteachers.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.KidDto;
import dino.Dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public class FindTeachersDaoImp implements FindTeachersDao {

	private SqlSessionTemplate sqlMap;

	public FindTeachersDaoImp(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	// find teacher card list

	// make kid card
	
	public List<KidDto> formKidsCard(int idx) {	
	List<KidDto> k_dto = sqlMap.selectList("formKidsCard", idx); return k_dto; }
	

//	public int makeKCard(KidDto dto) {
//
//		int result = sqlMap.insert("k_makeCard", dto);
//		return result;
//	}

	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx) {
		FindTeacherJoinDto t_dto = sqlMap.selectOne("teacherInfo", idx);
		return t_dto;
	}

	// teacher review list
	public List<ReviewDto> teacherReviewList(int idx) {
		List<ReviewDto> review_list = sqlMap.selectList("teacherReviewList", idx);
		return review_list;
	}
}
