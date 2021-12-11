package dino.findteachers.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.Common_ImgDto;
import dino.Dto.KidDto;
import dino.Dto.MemberDto;
import dino.Dto.ReserveDto;
import dino.findteachers.model.FindTeacherJoinDto;
import dino.findteachers.model.MakeReserveCardVo;

public interface FindTeachersService {
	
	//find teacher card list 
	/* public List<FindTeacherJoinDto> teacherList(); */
	
	// pick kid card
	public List<KidDto> pickKidsCard(int idx);
	
	// pick addr card
	public MemberDto pickKidsAddrCard(int idx);
	
	// update addr get
	public MemberDto addrUpForm(int idx);
	
	// update addr card
	public int updateAddr(MemberDto dto);
	
	// make kid card 
	public int makeKCard(KidDto dto);
	
	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx);
	
	// Insert reserve Kid Card
	public int reserveCard(ReserveDto dto);
	
	// set kid img 	
	//public int kSetImg(Common_ImgDto imgDto);
	
	//get img path
	//public List<Common_ImgDto> imgpath(int d_member_idx);
}
