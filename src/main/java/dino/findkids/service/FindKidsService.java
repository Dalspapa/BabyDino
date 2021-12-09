package dino.findkids.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.findkids.model.FindKidsJoinDto;

public interface FindKidsService {


	//make techer card -> d_teacher Table
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto);
	
	//get kids list
	public List<FindKidsJoinDto> kidsList();
	
	// set Teacher img
	public int tSetImg(Common_ImgDto imgDto);

	// get imgpath 
	public List<Common_ImgDto> imgpath(int d_member_idx);	
	
	//get kid Info
	public FindKidsJoinDto kidContent(int idx);
	

}
