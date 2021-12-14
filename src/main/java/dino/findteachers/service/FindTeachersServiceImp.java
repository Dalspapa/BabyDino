package dino.findteachers.service;

import dino.findteachers.model.FindTeachersDao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dino.dto.Common_ImgDto;
import dino.dto.KidDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.dto.ReviewDto;
import dino.findteachers.model.FindTeacherJoinDto;

public class FindTeachersServiceImp implements FindTeachersService {

	private FindTeachersDao findTeachersDao;

	public static final String IMGPATH = "C:\\리동현\\upload\\";

	public FindTeachersDao getFindTeachersDao() {
		return findTeachersDao;
	}

	public void setFindTeachersDao(FindTeachersDao findTeachersDao) {
		this.findTeachersDao = findTeachersDao;
	}
	
	//중복제거 
	public int kSetImg(Common_ImgDto imgDto) {
		
		int result = findTeachersDao.kSetImg(imgDto);
		
		System.out.println("findteacherservice setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
		
		return result;
	}

	//Test imgpath
	public List<FindTeacherJoinDto> imgpath(int d_member_idx) {

		List<FindTeacherJoinDto> resultImg = findTeachersDao.imgpath(d_member_idx);

		return resultImg;
	}
	
	// find teacher card list
	public List<FindTeacherJoinDto> teacherList() {

		List<FindTeacherJoinDto> t_list = findTeachersDao.teacherList();
		return t_list;

	}

	// pick kid card
	public List<KidDto> pickKidsCard(int idx) {

		List<KidDto> mkList = findTeachersDao.pickKidsCard(idx);

		return mkList;
	}

	// pick addr card
	public MemberDto pickKidsAddrCard(int idx) {

		MemberDto addr_dto = findTeachersDao.pickKidsAddrCard(idx);

		return addr_dto;
	}

//	// make kid card
//	public int makeKCard(KidDto dto) {
//
//		int result = findTeachersDao.makeKCard(dto);
//
//		return result;
//	}

	// make kid card (테스트)
	@Transactional
	public void makeKCard(KidDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request) {
		
		String c_imgpath = "";
		if ( imgFiles == null || imgFiles.size() == 0) {

			c_imgpath = "teacher.png"; //기본 이미지
			imgDto.setC_imgpath(c_imgpath);
		}

		// 파일경로에 파일저장
		for(int i = 0; i < imgFiles.size(); i++) {
			System.out.println("== filimgFileName : " + imgFiles.get(i).getOriginalFilename());
			copyInto(imgFiles.get(i));
			System.out.println("copyinto 성공 ");
			c_imgpath += imgFiles.get(i).getOriginalFilename();
		}
		
		int result = findTeachersDao.makeKCard(dto);
		if(result == 0) {
			System.out.println("insert 에러남.");
		}
		
		// inset된 data idx
		int ref_idx = dto.getIdx();
		int category_idx = 1;

		int d_member_idx = dto.getD_member_idx();
//		String updId = (String)request.getSession().getAttribute("saveId");

		//imgDto.setC_imgpath();
		imgDto.setRef_idx(ref_idx);
		imgDto.setCategory_idx(category_idx);
		imgDto.setD_member_idx(d_member_idx);
		imgDto.setC_imgpath(c_imgpath);

		System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx());

//		int setImgResult = findTeachersDao.kSetImg(imgDto);
	}
	
	//img copy method
	public void copyInto(MultipartFile imgFiles) {
		try {
			byte[] bytes = imgFiles.getBytes();
			File out = new File(IMGPATH + imgFiles.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(out);
			fos.write(bytes);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// Insert reserve Kid Card
	public int reserveCard(ReserveDto reserveCard) {

		int result = findTeachersDao.reserveCard(reserveCard);

		return result;
	}

	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx) {

		FindTeacherJoinDto t_dto = findTeachersDao.teacherInfo(idx);

		List<ReviewDto> reviewList = findTeachersDao.teacherReviewList(idx);

		if (t_dto != null && reviewList != null && reviewList.size() > 0) {
			t_dto.setReview_list(reviewList);
		}

		return t_dto;
	}

}
