package dino.dto;

import java.sql.*;

public class ReserveDto {
 
	private int idx;
	private int d_member_p_idx;
	private int d_kid_idx;
	private String r_time;
	private int r_status;
	private int hope_cost;
	private Date r_endday;
	private int r_cost;
	private int d_teacher_idx;
	private Date r_day;
	private int r_cancle_reason;
	
	
	public ReserveDto() {
		super();
	}


	public ReserveDto(int idx, int d_member_p_idx, int d_kid_idx, String r_time, int r_status, int hope_cost,
			Date r_endday, int r_cost, int d_teacher_idx, Date r_day, int r_cancle_reason) {
		super();
		this.idx = idx;
		this.d_member_p_idx = d_member_p_idx;
		this.d_kid_idx = d_kid_idx;
		this.r_time = r_time;
		this.r_status = r_status;
		this.hope_cost = hope_cost;
		this.r_endday = r_endday;
		this.r_cost = r_cost;
		this.d_teacher_idx = d_teacher_idx;
		this.r_day = r_day;
		this.r_cancle_reason = r_cancle_reason;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getD_member_p_idx() {
		return d_member_p_idx;
	}


	public void setD_member_p_idx(int d_member_p_idx) {
		this.d_member_p_idx = d_member_p_idx;
	}


	public int getD_kid_idx() {
		return d_kid_idx;
	}


	public void setD_kid_idx(int d_kid_idx) {
		this.d_kid_idx = d_kid_idx;
	}


	public String getR_time() {
		return r_time;
	}


	public void setR_time(String r_time) {
		this.r_time = r_time;
	}


	public int getR_status() {
		return r_status;
	}


	public void setR_status(int r_status) {
		this.r_status = r_status;
	}


	public int getHope_cost() {
		return hope_cost;
	}


	public void setHope_cost(int hope_cost) {
		this.hope_cost = hope_cost;
	}


	public Date getR_endday() {
		return r_endday;
	}


	public void setR_endday(Date r_endday) {
		this.r_endday = r_endday;
	}


	public int getR_cost() {
		return r_cost;
	}


	public void setR_cost(int r_cost) {
		this.r_cost = r_cost;
	}


	public int getD_teacher_idx() {
		return d_teacher_idx;
	}


	public void setD_teacher_idx(int d_teacher_idx) {
		this.d_teacher_idx = d_teacher_idx;
	}


	public Date getR_day() {
		return r_day;
	}


	public void setR_day(Date r_day) {
		this.r_day = r_day;
	}


	public int getR_cancle_reason() {
		return r_cancle_reason;
	}


	public void setR_cancle_reason(int r_cancle_reason) {
		this.r_cancle_reason = r_cancle_reason;
	}

	 @Override
	   public String toString() {
	     String str = "돌봄에약건에 대한 부모님 아이디" + d_member_p_idx + " 돌봄 활동 시간: " + r_time + "\n요청 받는 사람의 희망 시급: " + hope_cost + "\n실제 돌봄이 이뤄지는 날짜: " + r_endday;
	     System.out.println(str);
	      return str;
	   }
}	
