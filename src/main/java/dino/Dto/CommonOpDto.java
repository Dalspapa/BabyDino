package dino.Dto;

public class CommonOpDto {

	private int idx;
	private String op;
	private String c_introduce;
	private int c_category;
	
	public CommonOpDto() {
		super();
	}	

	public CommonOpDto(int idx, String op, String c_introduce, int c_category) {
		super();
		this.idx = idx;
		this.op = op;
		this.c_introduce = c_introduce;
		this.c_category = c_category;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getC_introduce() {
		return c_introduce;
	}

	public void setC_introduce(String c_introduce) {
		this.c_introduce = c_introduce;
	}

	public int getC_category() {
		return c_category;
	}

	public void setC_category(int c_category) {
		this.c_category = c_category;
	}
	
}
