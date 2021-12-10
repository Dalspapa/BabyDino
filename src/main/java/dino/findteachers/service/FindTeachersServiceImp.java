package dino.findteachers.service;

import dino.findteachers.model.FindTeachersDao;

import java.util.List;
import dino.dto.KidDto;
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

	// find teacher card list
	/*
	 * public List<FindTeacherJoinDto> teacherList() {
	 * 
	 * List<FindTeacherJoinDto> t_list = findTeachersDao.teacherList(); return
	 * t_list; }
	 */

	/*
	 * @Transactional public void makeKCard(KidDto dto, Common_ImgDto imgDto,
	 * List<MultipartFile> imgFiles, String dirPath) {
	 * 
	 * String c_imgpath = ""; if (imgFiles == null || imgFiles.size() == 0) {
	 * 
	 * c_imgpath = "kid.png"; imgDto.setC_imgpath(c_imgpath); }
	 * 
	 * // test code System.out.println(">>>>파일만들기<<<<");
	 * System.out.println(">>>서비스에 들어왔다고 알리고<<<");
	 * 
	 * // 파일 경로에 파일 저장 for (int i = 0; i < imgFiles.size(); i++) {
	 * System.out.println(">>>filimgFileName<<< = " +
	 * imgFiles.get(i).getOriginalFilename()); copyInto(imgFiles.get(i));
	 * System.out.println(">>copy 성공입니다람쥐~<<"); c_imgpath +=
	 * imgFiles.get(i).getOriginalFilename() + ";"; }
	 * System.out.println(">>이미지 없음 ?<<"); System.out.println(">>파일이름은 ?<< = " +
	 * c_imgpath);
	 * 
	 * int result = findTeachersDao.makeKCard(dto);
	 * 
	 * if (result == 0) { System.out.println("insert 에러이빈다~"); }
	 * 
	 * // insert 된 data int int ref_idx = dto.getIdx(); int category_idx = 2; int
	 * d_member_idx = 41; System.out.println(">>>파일경로<<< = " + dirPath);
	 * 
	 * // imgDto.setC_imgpath(); imgDto.setRef_idx(ref_idx);
	 * imgDto.setCategory_idx(category_idx); imgDto.setD_member_idx(d_member_idx);
	 * imgDto.setC_imgpath(c_imgpath);
	 * 
	 * // test code System.out.println("이미지 DTO 값 : " + imgDto.getD_member_idx() +
	 * "/" + imgDto.getC_imgpath() + "/" + imgDto.getCategory_idx() + "/" +
	 * imgDto.getRef_idx());
	 * 
	 * int setImgResult = findTeachersDao.kSetImg(imgDto);
	 * 
	 * System.out.println(">>>result<<< : " + result); }
	 * 
	 * private void copyInto(MultipartFile imgFiles) { try { byte[] bytes =
	 * imgFiles.getBytes(); File out = new File(IMGPATH +
	 * imgFiles.getOriginalFilename()); FileOutputStream fos = new
	 * FileOutputStream(out); fos.write(bytes); fos.close();
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * }
	 */

	/*
	 * // set kid img public int kSetImg(Common_ImgDto imgDto) {
	 * 
	 * int result = findTeachersDao.kSetImg(imgDto); // test code
	 * System.out.println("findteacherservice setTimg imgpath" +
	 * imgDto.getC_imgpath() + "memberidx" + imgDto.getD_member_idx() + "ref idx" +
	 * imgDto.getRef_idx()); return result; }
	 * 
	 * // get img path public List<Common_ImgDto> imgpath(int d_member_idx) {
	 * 
	 * List<Common_ImgDto> resultImg = findTeachersDao.imgpath(d_member_idx);
	 * 
	 * return resultImg; }
	 */

	// pick kid card
	public List<KidDto> pickKidsCard(int idx) {

		List<KidDto> mkList = findTeachersDao.pickKidsCard(idx);

		return mkList;
	}

	// make kid card 
	public int makeKCard(KidDto dto) {
	  
	  int result = findTeachersDao.makeKCard(dto); 
	  
	  return result; 
	} 

	// teacher card content
	public FindTeacherJoinDto teacherInfo(int idx) {

		FindTeacherJoinDto t_dto = findTeachersDao.teacherInfo(idx);

		List<ReviewDto> reviewList = findTeachersDao.teacherReviewList(idx);
		t_dto.setReview_list(reviewList);
		
		return t_dto;
	}

}
