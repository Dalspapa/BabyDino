package dino.findkids.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.findkids.model.*;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface FindKidsService {


	//make techer card -> d_teacher Table
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request);

	//get kids list
	public List<FindKidsJoinDto> getKidsList();
	
	//searchKids
	public List<FindKidsJoinDto> searchKids(FindKidsJoinDto searchKids);

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
	
	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId);
	
	//수정된 멤버타입 조회
	public int UpdGrade(String id);
//////////////주호
	//선생님 필수 정보 입력
	public int setTeacherCert(TeacherCertDto tcDto);
//////////////주호 끝

	public int updateReserveCard(ReserveDto reserveDto);
}
