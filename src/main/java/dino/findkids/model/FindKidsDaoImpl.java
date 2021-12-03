package dino.findkids.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.http.ResponseEntity;

import dino.Dto.*;

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
	public List<MakeTCardDto> kidsList() {

		List<MakeTCardDto> k_list = sqlMap.selectList("kidsList");
		return k_list;
	}
	
	// set Teacher img 
	public int tSetImg(Common_ImgDto imgDto) {

		int result = sqlMap.insert("tSetImg", imgDto);
		//Test Code
		System.out.println("findKidsDao setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
		return result;
	}
	
	// Test get imgpath
	public Common_ImgDto imgpath(int d_member_idx) {
		
		Common_ImgDto resultDto = sqlMap.selectOne("getImg", d_member_idx);
				
		return resultDto;
	}
	
	
}
