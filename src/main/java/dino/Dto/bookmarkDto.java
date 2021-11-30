package dino.Dto;

public class bookmarkDto {

	private int idx;
	private int b_status;
	private int b_type;
	private int d_teacher_idx;
	private int d_kid_idx;
	
	
	public bookmarkDto() {
		super();
	}


	public bookmarkDto(int idx, int b_status, int b_type, int d_teacher_idx, int d_kid_idx) {
		super();
		this.idx = idx;
		this.b_status = b_status;
		this.b_type = b_type;
		this.d_teacher_idx = d_teacher_idx;
		this.d_kid_idx = d_kid_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getB_status() {
		return b_status;
	}


	public void setB_status(int b_status) {
		this.b_status = b_status;
	}


	public int getB_type() {
		return b_type;
	}


	public void setB_type(int b_type) {
		this.b_type = b_type;
	}


	public int getD_teacher_idx() {
		return d_teacher_idx;
	}


	public void setD_teacher_idx(int d_teacher_idx) {
		this.d_teacher_idx = d_teacher_idx;
	}


	public int getD_kid_idx() {
		return d_kid_idx;
	}


	public void setD_kid_idx(int d_kid_idx) {
		this.d_kid_idx = d_kid_idx;
	}
	
	@Override
	public String toString() {
		String str = "좋아요싫어요 상태" + b_status + "\n좋아요 싫어요 유형" + b_type + "\n선생님 카드 인덱스" + d_teacher_idx + "\n아이카드 인덱스" + d_kid_idx;
		System.out.println(str);
		return str; 
	}
}
