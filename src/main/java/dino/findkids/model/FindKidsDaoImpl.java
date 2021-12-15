package dino.findkids.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.dto.MemberDto;


public class FindKidsDaoImpl implements FindKidsDao {

	private SqlSessionTemplate sqlMap;

	public FindKidsDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//make techer card -> d_teacher Table
	public int makeTCard(MakeTCardDto dto) {
		int result = sqlMap.insert("t_makeCard", dto);
		return result;
	};

	//get kids list
	public List<FindKidsJoinDto> kidsList() {
		List<FindKidsJoinDto> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
	//search kids
	public List<FindKidsJoinDto> searchKids(FindKidsJoinDto searchKids) {
		List<FindKidsJoinDto> k_list = sqlMap.selectList("searchKids", searchKids);
		return k_list;
	}

	// set Teacher img
	public int tSetImg(Common_ImgDto imgDto) {

		int result = sqlMap.insert("tSetImg", imgDto);
		//Test Code
		System.out.println("findKidsDao setTimg imgpath"+imgDto.getC_imgpath()+"member idx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
		return result;
	}

	// Test get imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx) {
		List<Common_ImgDto> resultDto = sqlMap.selectList("getImg", d_member_idx);

		return resultDto;
	}

	//get kid Info
	public FindKidsJoinDto kidContent(int idx) {

		//
		FindKidsJoinDto kidInfoDto = sqlMap.selectOne("kidInfoContent", idx);
		if(kidInfoDto == null) {
			System.out.println("또 뭔데 ㅡㅡ dao / idx" + idx);
		}
		System.out.println("daoimple=====" + kidInfoDto.toString());

		return kidInfoDto;
	}

	public int updateTeacherGrade(MemberDto member_type) {
		return sqlMap.update("updateTeacherGrade", member_type);
	}

	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId) {
		return sqlMap.update("teacherGradeUpd", idx);
	}

	//수정된 멤버타입 조회
	public int UpdGrade(String id) {
		System.out.println("샘등급 조회 진행dao");
		return sqlMap.selectOne("UpdGrade", id);
	}
//////////////주호
	//선생님 필수 정보 입력
	public int setTeacherCert(TeacherCertDto tcDto) {
		return sqlMap.insert("setCert", tcDto);
	}
//////////////주호 끝
}






