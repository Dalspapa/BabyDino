package dino.findkids.service;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import dino.dto.*;
import dino.findkids.model.*;

@Service
public class FindKidsServiceImple implements FindKidsService {

<<<<<<< HEAD
	private FindKidsDao findkidsDao;
=======
	private FindKidsDao findkidsDao;
>>>>>>> Yeongchan

	//public static final String IMGPATH = "C:\\project_dooli\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BabyDino\\resources";
	public static final String IMGPATH = "C:\\이주호\\upload\\";

	public FindKidsDao getFindkidsDao() {
		return findkidsDao;
	}

	public void setFindkidsDao(FindKidsDao findkidsDao) {
		this.findkidsDao = findkidsDao;
	}
<<<<<<< HEAD
=======

>>>>>>> Yeongchan

	//make techer card -> d_teacher Table
	@Transactional
<<<<<<< HEAD
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto) {
=======
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request) {
>>>>>>> Yeongchan

		String c_imgpath = "";
		if ( imgFiles == null || imgFiles.size() == 0) {

			c_imgpath = "teacher.png";
			imgDto.setC_imgpath(c_imgpath);
		}
<<<<<<< HEAD
		System.out.println("파일 넣어주세요 제발");
		System.out.println("=== serviceimpl 진입 =====");
=======
>>>>>>> Yeongchan

		// 파일경로에 파일저장
		for(int i = 0; i < imgFiles.size(); i++) {
			System.out.println("== filimgFileName : " + imgFiles.get(i).getOriginalFilename());
			copyInto(imgFiles.get(i));
			System.out.println("copyinto 성공 ");
			c_imgpath += imgFiles.get(i).getOriginalFilename() + ",";
		}
<<<<<<< HEAD
		System.out.println("이미지가 없나요? ㅡㅡ");

		System.out.println("#########파일이름" + c_imgpath);


=======

>>>>>>> Yeongchan
		int result = findkidsDao.makeTCard(dto);
		if(result == 0) {
			System.out.println("insert 에러남.");
		}

		// inset된 data idx
		int ref_idx = dto.getIdx();
		int category_idx = 2;
<<<<<<< HEAD
		int d_member_idx = 41;
		System.out.println("== 파일경로 : " + dirPath);

=======
		int d_member_idx = dto.getD_member_idx();
		String updId = (String)request.getSession().getAttribute("saveId");
		
>>>>>>> Yeongchan
		//imgDto.setC_imgpath();
		imgDto.setRef_idx(ref_idx);
		imgDto.setCategory_idx(category_idx);
		imgDto.setD_member_idx(d_member_idx);
		imgDto.setC_imgpath(c_imgpath);
<<<<<<< HEAD

		System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx() + "/" + imgDto.getC_imgpath() + "/" + imgDto.getCategory_idx() + "/" + imgDto.getRef_idx());

		int setImgResult = findkidsDao.tSetImg(imgDto);

		System.out.println("==== result : " + result);

	}

	public int makeTCard(MakeTCardDto dto) {
		// TODO Auto-generated method stub
		return 0;
=======
		
		int setImgResult = findkidsDao.tSetImg(imgDto);
		int tGradeUpd = teacherGradeUpd(d_member_idx, updId);
		if(setImgResult < 0 || tGradeUpd < 0) {
			throw new IllegalStateException("카드 등록중 예기치 못한 문제가 발생하였습니다. 잠시후 다시 시도해주세요.");
		}

>>>>>>> Yeongchan
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

	//get kids list
	public List<FindKidsJoinDto> kidsList() {

		List<FindKidsJoinDto> k_list = findkidsDao.kidsList();
		return k_list;

	}

<<<<<<< HEAD
	//set Teacher img
=======
//	//set Teacher img  
>>>>>>> Yeongchan
	public int tSetImg(Common_ImgDto imgDto) {

		int result = findkidsDao.tSetImg(imgDto);
		System.out.println("findKidsservice setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
		return result;
<<<<<<< HEAD
	}
=======
	}
>>>>>>> Yeongchan

	//Test imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx) {

		List<Common_ImgDto> resultImg = findkidsDao.imgpath(d_member_idx);

		return resultImg;
	}

	// get kid Info
	public FindKidsJoinDto kidContent(int idx) {

		FindKidsJoinDto kidInfoDto = findkidsDao.kidContent(idx);

		System.out.println("service imple=====" + kidInfoDto.toString());
<<<<<<< HEAD

		return kidInfoDto;

	}

	/* (non-Javadoc)
	 * @see dino.findkids.service.FindKidsService#updateTeacherGrade(dino.Dto.MemberDto)
=======

		return kidInfoDto;

	}

	/* (non-Javadoc)
	 * @see dino.findkids.service.FindKidsService#updateTeacherGrade(dino.dto.MemberDto)
>>>>>>> Yeongchan
	 */
	@Transactional
	public int updateTeacherGrade(MemberDto member_type) {
		return findkidsDao.updateTeacherGrade(member_type);

	}
<<<<<<< HEAD

=======
	
	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId) {
		return findkidsDao.teacherGradeUpd(idx, updId);
	}
	
	//수정된 멤버타입 조회
	public int UpdGrade(String id) {
		return findkidsDao.UpdGrade(id);
	}

>>>>>>> Yeongchan
}
