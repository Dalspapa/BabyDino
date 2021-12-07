package dino.findkids.model;

import java.util.*;
import dino.Dto.*;

public interface FindKidsDao {

	//make techer card -> d_teacher Table
	public int makeTCard (MakeTCardDto dto);

	//get kids list
	public List<FindKidsJoinDto> kidsList();

	// set Teacher img
	public int tSetImg (Common_ImgDto imgDto);

	// Test get imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx);

	//get kid Info
	public FindKidsJoinDto kidContent(int idx);

	/**
	 * 선생님 등급수정
	 * author: 이은사
	 * return: int
	 * since: 2021. 12. 7.
	 */
	public int updateTeacherGrade(MemberDto teacher);

}
