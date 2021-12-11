package dino.dto;

public class MatchingDto {
	private int idx;
	private int d_member_t_idx;
	private int d_member_p_idx;
	private int d_reserve_idx;
	
	
	public MatchingDto() {
		super();
	}


	public MatchingDto(int idx, int d_member_t_idx, int d_member_p_idx, int d_reserve_idx) {
		super();
		this.idx = idx;
		this.d_member_t_idx = d_member_t_idx;
		this.d_member_p_idx = d_member_p_idx;
		this.d_reserve_idx = d_reserve_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getD_member_t_idx() {
		return d_member_t_idx;
	}


	public void setD_member_t_idx(int d_member_t_idx) {
		this.d_member_t_idx = d_member_t_idx;
	}


	public int getD_member_p_idx() {
		return d_member_p_idx;
	}


	public void setD_member_p_idx(int d_member_p_idx) {
		this.d_member_p_idx = d_member_p_idx;
	}


	public int getD_reserve_idx() {
		return d_reserve_idx;
	}


	public void setD_reserve_idx(int d_reserve_idx) {
		this.d_reserve_idx = d_reserve_idx;
	}
	
	@Override
	public String toString() {
		String str = "매칭 확인을 위한 선생님 아이디" + d_member_t_idx + "\n매칭확인을 위한 부모님 아이디" + d_member_p_idx;
		System.out.println(str);
		return str; 
	}
}
