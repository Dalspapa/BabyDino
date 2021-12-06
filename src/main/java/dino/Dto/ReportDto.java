package dino.Dto;

import java.sql.Date;

public class ReportDto {

	private int idx;
	private int d_member_attack_idx;
	private int d_member_shield_idx;
	private int rp_type;
	private Date rp_writedate;
	private int rp_status;
	private String rp_content;
	
	public ReportDto() {
		super();
	}
	public ReportDto(int idx, int d_member_attack_idx, int d_member_shield_idx, int rp_type, Date rp_writedate,
			int rp_status, String rp_content) {
		super();
		this.idx = idx;
		this.d_member_attack_idx = d_member_attack_idx;
		this.d_member_shield_idx = d_member_shield_idx;
		this.rp_type = rp_type;
		this.rp_writedate = rp_writedate;
		this.rp_status = rp_status;
		this.rp_content = rp_content;
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
	public int getrp_type() {
		return rp_type;
	}
	public void setrp_type(int rp_type) {
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
	public String getRp_content() {
		return rp_content;
	}
	public void setRp_content(String rp_content) {
		this.rp_content = rp_content;
	}
	
	
}

