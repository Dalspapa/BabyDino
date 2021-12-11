package dino.dto;

public class Common_ImgDto {

	private int idx;
	private String c_imgpath;
	private int d_member_idx;
	private int category_idx;
	private int ref_idx;
	
	
	public Common_ImgDto() {
		super();
	}


	public Common_ImgDto(int idx, String c_imgpath, int d_member_idx, int category_idx, int ref_idx) {
		super();
		this.idx = idx;
		this.c_imgpath = c_imgpath;
		this.d_member_idx = d_member_idx;
		this.category_idx = category_idx;
		this.ref_idx = ref_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getC_imgpath() {
		return c_imgpath;
	}


	public void setC_imgpath(String c_imgpath) {
		this.c_imgpath = c_imgpath;
	}


	public int getD_member_idx() {
		return d_member_idx;
	}


	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}


	public int getCategory_idx() {
		return category_idx;
	}


	public void setCategory_idx(int category_idx) {
		this.category_idx = category_idx;
	}


	public int getRef_idx() {
		return ref_idx;
	}


	public void setRef_idx(int ref_idx) {
		this.ref_idx = ref_idx;
	}
	
	@Override
	public String toString() {
		String str = "이미지 경로" + c_imgpath + "\n회원의 고유번호" + d_member_idx + "\n인덱스 상태값" + category_idx;
		System.out.println(str);
		return str; 
	}
}
