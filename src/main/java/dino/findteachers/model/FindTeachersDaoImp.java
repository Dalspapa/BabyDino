package dino.findteachers.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.Common_ImgDto;
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
	public List<FindTeacherJoinDto> teacherList(){
	  
	  List<FindTeacherJoinDto> t_list = sqlMap.selectList("teacherList"); 
	  //test code 
	  System.out.println("t_list = " + t_list);
	  
	  return t_list; 
	  }
	 
	
	// pick kid card
	public List<KidDto> pickKidsCard(int idx) {
		
		List<KidDto> mkList = sqlMap.selectList("pickKidsCard", idx);
		System.out.println("=== dao idx : " + idx);
		return mkList;
	}

	// make kid card
	public int makeKCard(KidDto dto) {

		int result = sqlMap.insert("k_makeCard", dto);
		return result;
	}

	// set Kid img
	public int kSetImg(Common_ImgDto imgDto) {
		
		int result = sqlMap.insert("kSetImg", imgDto);
	
		//test code
		System.out.println("findKidsDao setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
	
		return result;
	}
		
	//get img path
	public List<Common_ImgDto> imgpath(int d_member_idx){
		List<Common_ImgDto> resultDto = sqlMap.selectList("getImg", d_member_idx);
		
		return resultDto;
	}
	
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
