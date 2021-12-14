package dino.findkids.service;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.dto.MemberDto;
import dino.findkids.model.*;

@Service
public class FindKidsServiceImple implements FindKidsService {

	private FindKidsDao findkidsDao;

	//public static final String IMGPATH = "C:\\project_dooli\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BabyDino\\resources";
	public static final String IMGPATH = "C:\\이주호\\upload\\";

	public FindKidsDao getFindkidsDao() {
		return findkidsDao;
	}

	public void setFindkidsDao(FindKidsDao findkidsDao) {
		this.findkidsDao = findkidsDao;
	}

	//make techer card -> d_teacher Table
	@Transactional
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto, HttpServletRequest request) {

		String c_imgpath = "";
		if ( imgFiles == null || imgFiles.size() == 0) {

			c_imgpath = "teacher.png";
			imgDto.setC_imgpath(c_imgpath);
		}

		// 파일경로에 파일저장
		for(int i = 0; i < imgFiles.size(); i++) {
			System.out.println("== filimgFileName : " + imgFiles.get(i).getOriginalFilename());
			copyInto(imgFiles.get(i));
			System.out.println("copyinto 성공 ");
			c_imgpath += imgFiles.get(i).getOriginalFilename();
		}

		int result = findkidsDao.makeTCard(dto);
		if(result == 0) {
			System.out.println("insert 에러남.");
		}

		// inset된 data idx
		int ref_idx = dto.getIdx();
		int category_idx = 2;

		int d_member_idx = dto.getD_member_idx();
		String updId = (String)request.getSession().getAttribute("saveId");

		//imgDto.setC_imgpath();
		imgDto.setRef_idx(ref_idx);
		imgDto.setCategory_idx(category_idx);
		imgDto.setD_member_idx(d_member_idx);
		imgDto.setC_imgpath(c_imgpath);

		System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx() + "/" + imgDto.getC_imgpath() + "/" + imgDto.getCategory_idx() + "/" + imgDto.getRef_idx());

//		int setImgResult = findkidsDao.tSetImg(imgDto);

		System.out.println("==== result : " + result);

	}
	
	// 선생님 필수 정보 입력  //////////////주호
	public int setTeacherCert(TeacherCertDto tcDto) {
				
		copyInto(tcDto.getImgpath());
		
		System.out.println("sevice로 넘어온 인증 DTo" + tcDto.toString());
		
		String certimgpath = tcDto.getImgpath().getOriginalFilename();
		tcDto.setExemplification(certimgpath);
		String crimeagree = tcDto.getCrimeagree();
		if(StringUtils.isEmpty(crimeagree)) {
			tcDto.setCrimeagree("동의합니다.");
		}
		
		int certRst = findkidsDao.setTeacherCert(tcDto);
		
	return certRst;
}//////////////주호 끝

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
	public List<FindKidsJoinDto> getKidsList() {
		List<FindKidsJoinDto> k_list = findkidsDao.kidsList();
		return k_list;
	}
	
	//searchKids
	public List<FindKidsJoinDto> searchKids(FindKidsJoinDto searchKids) {
		List<FindKidsJoinDto> k_list = findkidsDao.searchKids(searchKids);
		return k_list;
	}

	public int tSetImg(Common_ImgDto imgDto) {
		int result = findkidsDao.tSetImg(imgDto);
		System.out.println("findKidsservice setTimg imgpath"+imgDto.getC_imgpath()+"memberidx"+imgDto.getD_member_idx()+"ref idx"+imgDto.getRef_idx());
		return result;
	}

	//Test imgpath
	public List<Common_ImgDto> imgpath(int d_member_idx) {

		List<Common_ImgDto> resultImg = findkidsDao.imgpath(d_member_idx);

		return resultImg;
	}

	// get kid Info
	public FindKidsJoinDto kidContent(int idx) {

		FindKidsJoinDto kidInfoDto = findkidsDao.kidContent(idx);

		System.out.println("service imple=====" + kidInfoDto.toString());

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

	//카드 만든 후 선생님 유형 변경
	public int teacherGradeUpd(int idx, String updId) {
		return findkidsDao.teacherGradeUpd(idx, updId);
	}

	//수정된 멤버타입 조회
	public int UpdGrade(String id) {
		return findkidsDao.UpdGrade(id);
	}
	
	

}
