package dino.findkids.service;

import java.util.List;

<<<<<<< HEAD
import org.springframework.web.multipart.MultipartFile;

import dino.Dto.Common_ImgDto;
import dino.Dto.MakeTCardDto;
import dino.Dto.MemberDto;
import dino.findkids.model.FindKidsJoinDto;
=======
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import dino.dto.*;
import dino.findkids.model.FindKidsJoinDto;
>>>>>>> Yeongchan

public interface FindKidsService {


	//make techer card -> d_teacher Table
<<<<<<< HEAD
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto);
=======
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request);
>>>>>>> Yeongchan

	//get kids list
	public List<FindKidsJoinDto> kidsList();

	// set Teacher img
	public int tSetImg(Common_ImgDto imgDto);

	// get imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx);

	//get kid Info
	public FindKidsJoinDto kidContent(int idx);

	/**
	 * 선생님 등급수정
	 * author: 이은사
	 * return: int
	 * since: 2021. 12. 7.
	 */
	int updateTeacherGrade(MemberDto teacher);
<<<<<<< HEAD


=======
	
	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId);
	
	//수정된 멤버타입 조회
	public int UpdGrade(String id);

>>>>>>> Yeongchan
}
