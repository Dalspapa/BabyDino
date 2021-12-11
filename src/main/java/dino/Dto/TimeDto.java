package dino.dto;

public class TimeDto {

	private int idx;
	private int d_member_idx;
	private String d_common_idx;
	
	
	public TimeDto() {
		super();
	}


	public TimeDto(int idx, int d_member_idx, String d_common_idx) {
		super();
		this.idx = idx;
		this.d_member_idx = d_member_idx;
		this.d_common_idx = d_common_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getD_member_idx() {
		return d_member_idx;
	}


	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}


	public String getD_common_idx() {
		return d_common_idx;
	}


	public void setD_common_idx(String d_common_idx) {
		this.d_common_idx = d_common_idx;
	}
	
	@Override
	   public String toString() {
	     String str = "둘리 멤버idx" + d_member_idx + "공통 옵션 테이블에 시간에 해당하는 고유번호 " + d_common_idx;
	     System.out.println(str);
	      return str;
	   }
}
