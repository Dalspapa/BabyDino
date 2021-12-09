package dino.dto;

import java.sql.*;

public class SalesDto {

	private int idx;
	private int s_status;
	private int s_cost;
	private Date s_date;
	private int d_member_idx; //d_member_idx or d_advertisement
	
	
	public SalesDto() {
		super();
	}


	public SalesDto(int idx, int s_status, int s_cost, Date s_date, int d_member_idx) {
		super();
		this.idx = idx;
		this.s_status = s_status;
		this.s_cost = s_cost;
		this.s_date = s_date;
		this.d_member_idx = d_member_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getS_status() {
		return s_status;
	}


	public void setS_status(int s_status) {
		this.s_status = s_status;
	}


	public int getS_cost() {
		return s_cost;
	}


	public void setS_cost(int s_cost) {
		this.s_cost = s_cost;
	}


	public Date getS_date() {
		return s_date;
	}


	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}


	public int getD_member_idx() {
		return d_member_idx;
	}


	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}
	
	@Override
	public String toString() {
		String str = "매출상태" + s_status + "\n매출금액" + s_cost + "\n결제일" + s_date + "회원이 갖는 고유번호" + d_member_idx ;
		System.out.println(str);
		return str; 
	}
	
}
