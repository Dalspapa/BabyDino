package dino.findteachers.model;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.Common_ImgDto;
import dino.dto.KidDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public class FindTeachersDaoImp implements FindTeachersDao {

	private SqlSessionTemplate sqlMap;

	public FindTeachersDaoImp(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	// find teacher card list
	public List<FindTeacherJoinDto> teacherList() {

		List<FindTeacherJoinDto> t_list = sqlMap.selectList("teacherList");
		// test code
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
	
	// Insert reserve Kid Card
	public int reserveCard(ReserveDto reserveCard) {
		
		int result = sqlMap.insert("k_reserve", reserveCard);
		return result;
	}

	// pick addr card
	public MemberDto pickKidsAddrCard(int idx) {

		MemberDto addr_dto = sqlMap.selectOne("pickAddr", idx);

		return addr_dto;
	}
	
	// update addr get
	public MemberDto addrUpForm(int idx) {
		
		MemberDto addrUp = sqlMap.selectOne("getaddr", idx);
		
		return addrUp;
	}
	
	// update addr card
	public int updateAddr(MemberDto dto) {

		int addr_update = sqlMap.update("upAddr", dto);

		return addr_update;
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
	
	/*
	 * // set Kid img public int kSetImg(Common_ImgDto imgDto) {
	 * 
	 * int result = sqlMap.insert("kSetImg", imgDto);
	 * 
	 * //test code
	 * System.out.println("findKidsDao setTimg imgpath"+imgDto.getC_imgpath()+
	 * "memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
	 * 
	 * return result; }
	 */
		
	/*
	 * //get img path public List<Common_ImgDto> imgpath(int d_member_idx){
	 * List<Common_ImgDto> resultDto = sqlMap.selectList("getImg", d_member_idx);
	 * 
	 * return resultDto; }
	 */
}
