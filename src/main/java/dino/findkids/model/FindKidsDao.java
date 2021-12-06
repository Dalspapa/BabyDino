package dino.findkids.model;

import java.util.*;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import dino.Dto.*;
import dino.findkids.model.*;

public interface FindKidsDao {
	
	//make techer card -> d_teacher Table 
	public int makeTCard (MakeTCardDto dto);
	
	//get kids list 
	public List<FindKidsJoinDto> kidsList();
	
	// set Teacher img 	
	public int tSetImg (Common_ImgDto imgDto);
	
	// Test get imgpath 
	public List<Common_ImgDto> imgpath(int d_member_idx);

}
