package dino.findkids.service;

import java.util.*;

import org.springframework.web.multipart.MultipartFile;

import dino.Dto.*;
import dino.findkids.model.*;

public interface FindKidsService {

	//make techer card -> d_teacher Table
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto);
	
	//get kids list
	public List<FindKidsJoinDto> kidsList();
	
	// set Teacher img
	public int tSetImg(Common_ImgDto imgDto);

	// Test get imgpath 
	public List<Common_ImgDto> imgpath(int d_member_idx);	
	
}
