package dino.Dto;

import java.sql.*;

public class reportDto {

	private int idx;
	private int d_member_attack_idx;
	private int d_member_shield_idx;
	private int rp_type;
	private Date rp_writedate;
	private int rp_status;
	
	
	public reportDto() {
		super();
	}


	public reportDto(int idx, int d_member_attack_idx, int d_member_shield_idx, int rp_type, Date rp_writedate,
			int rp_status) {
		super();
		this.idx = idx;
		this.d_member_attack_idx = d_member_attack_idx;
		this.d_member_shield_idx = d_member_shield_idx;
		this.rp_type = rp_type;
		this.rp_writedate = rp_writedate;
		this.rp_status = rp_status;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getD_member_attack_idx() {
		return d_member_attack_idx;
	}


	public void setD_member_attack_idx(int d_member_attack_idx) {
		this.d_member_attack_idx = d_member_attack_idx;
	}


	public int getD_member_shield_idx() {
		return d_member_shield_idx;
	}


	public void setD_member_shield_idx(int d_member_shield_idx) {
		this.d_member_shield_idx = d_member_shield_idx;
	}


	public int getRp_type() {
		return rp_type;
	}


	public void setRp_type(int rp_type) {
		this.rp_type = rp_type;
	}


	public Date getRp_writedate() {
		return rp_writedate;
	}


	public void setRp_writedate(Date rp_writedate) {
		this.rp_writedate = rp_writedate;
	}


	public int getRp_status() {
		return rp_status;
	}


	public void setRp_status(int rp_status) {
		this.rp_status = rp_status;
	}
	
	@Override
	public String toString() {
		String str = "신고자 아이디" + d_member_attack_idx + "\n신고받는 대상자의 아이디" + d_member_shield_idx + "\n신고하기 게시글을 작성한 날짜" + rp_writedate;
		System.out.println(str);
		return str; 
	}
}
