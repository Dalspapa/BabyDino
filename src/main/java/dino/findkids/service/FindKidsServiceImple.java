package dino.findkids.service;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dino.Dto.*;
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
	public void makeTCard(MakeTCardDto dto, List<MultipartFile> imgFiles, String dirPath, Common_ImgDto imgDto) {
		
		String c_imgpath = "";
		if ( imgFiles == null || imgFiles.size() == 0) {
			
			c_imgpath = "teacher.png";
			imgDto.setC_imgpath(c_imgpath);
		}
		System.out.println("파일 넣어주세요 제발");
		System.out.println("=== serviceimpl 진입 =====");
		
		// 파일경로에 파일저장
		for(int i = 0; i < imgFiles.size(); i++) {
			System.out.println("== filimgFileName : " + imgFiles.get(i).getOriginalFilename());
			copyInto(imgFiles.get(i));
			System.out.println("copyinto 성공 ");
			c_imgpath += imgFiles.get(i).getOriginalFilename() + ",";
		}
		System.out.println("이미지가 없나요? ㅡㅡ");
		
		System.out.println("#########파일이름" + c_imgpath);
		
		int result = findkidsDao.makeTCard(dto);
		if(result == 0) {
			System.out.println("insert 에러남.");
		} 
		
		// inset된 data idx
		int ref_idx = dto.getIdx();
		int category_idx = 2;
		int d_member_idx = 41;
		System.out.println("== 파일경로 : " + dirPath);
		
		//imgDto.setC_imgpath();
		imgDto.setRef_idx(ref_idx);
		imgDto.setCategory_idx(category_idx);
		imgDto.setD_member_idx(d_member_idx);
		imgDto.setC_imgpath(c_imgpath);
		
		System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx() + "/" + imgDto.getC_imgpath() + "/" + imgDto.getCategory_idx() + "/" + imgDto.getRef_idx());

		int setImgResult = findkidsDao.tSetImg(imgDto);
		
		System.out.println("==== result : " + result);
		
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
		
	//set Teacher img
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
	
}
