package dino.dto;

public class Common_ReviewDto {

	private int idx;
	private String cr_content;
	private int category_idx;
	private int ref_idx;
	
	
	public Common_ReviewDto() {
		super();
	}


	public Common_ReviewDto(int idx, String cr_content, int category_idx, int ref_idx) {
		super();
		this.idx = idx;
		this.cr_content = cr_content;
		this.category_idx = category_idx;
		this.ref_idx = ref_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getCr_content() {
		return cr_content;
	}


	public void setCr_content(String cr_content) {
		this.cr_content = cr_content;
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
		String str = "댓글내용" + cr_content + "\n인덱스 상태값" + category_idx + "\n참고하는 인덱스" + ref_idx;
		System.out.println(str);
		return str; 
	}
}
