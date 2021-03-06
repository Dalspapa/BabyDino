package dino.findteachers.service;

import dino.findteachers.model.FindTeachersDao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.ArrayList;
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

public class FindTeachersServiceImpl implements FindTeachersService {

	private FindTeachersDao findTeachersDao;

	public static final String IMGPATH = "C:\\upload\\";

	public FindTeachersDao getFindTeachersDao() {
		return findTeachersDao;
	}

	public void setFindTeachersDao(FindTeachersDao findTeachersDao) {
		this.findTeachersDao = findTeachersDao;
	}

	//이미지셋팅 두번 실행 필요없는 메소드...
	public int kSetImg(Common_ImgDto imgDto) {

//		int result = findTeachersDao.kSetImg(imgDto);

		System.out.println("findKidsservice setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());

//		return result;
		return 0;
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

	// make kid card
	@Transactional
	public void makeKCard(KidDto kids, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request) {

		String c_imgpath = "";
		if ( imgFiles == null || imgFiles.size() == 0) {

			c_imgpath = "noimage.png";
			imgDto.setC_imgpath(c_imgpath);
		}

		// 파일경로에 파일저장
		if(imgFiles != null) {
			for(int i = 0; i < imgFiles.size(); i++) {
				System.out.println("== filimgFileName : " + imgFiles.get(i).getOriginalFilename());
				copyInto(imgFiles.get(i));
				System.out.println("copyinto 성공 ");
				c_imgpath += imgFiles.get(i).getOriginalFilename();
			}
		}

		//키드카드 인서트
		int result = findTeachersDao.makeKCard(kids);
		if(result == 0) {
			System.out.println("insert 에러남.");
		}

		// inset된 data idx
		int ref_idx = kids.getD_kidcard_idx();
		int category_idx = 1; //sql맵에서 이미 지정해서 사실상 필요 x
		int d_member_idx = kids.getD_member_idx();

		//imgDto.setC_imgpath();
		imgDto.setRef_idx(ref_idx);
		imgDto.setCategory_idx(category_idx); //sql맵에서 이미 지정해서 사실상 필요 x
		imgDto.setD_member_idx(d_member_idx);
		imgDto.setC_imgpath(c_imgpath); 

		System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx());

		//이미지테이블 인서트
		int setImgResult = findTeachersDao.kSetImg(imgDto);
	}


	public int makeKCareType(KidDto dto) {

		int result = findTeachersDao.makeKCareType(dto);

		return result;
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
