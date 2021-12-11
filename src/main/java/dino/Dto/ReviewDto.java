package dino.dto;

import java.sql.*;

public class ReviewDto {

	private int idx;
	private int d_reserve_idx;
	private int d_member_idx;
	private int star;
	private Date r_writedate;
	private String r_content;
	
	
	public ReviewDto() {
		super();
	}


	public ReviewDto(int idx, int d_reserve_idx, int d_member_idx, int star, Date r_writedate, String r_content) {
		super();
		this.idx = idx;
		this.d_reserve_idx = d_reserve_idx;
		this.d_member_idx = d_member_idx;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getD_reserve_idx() {
		return d_reserve_idx;
	}


	public void setD_reserve_idx(int d_reserve_idx) {
		this.d_reserve_idx = d_reserve_idx;
	}


	public int getD_member_idx() {
		return d_member_idx;
	}


	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}


	public int getStar() {
		return star;
	}


	public void setStar(int star) {
		this.star = star;
	}


	public Date getR_writedate() {
		return r_writedate;
	}


	public void setR_writedate(Date r_writedate) {
		this.r_writedate = r_writedate;
	}


	public String getR_content() {
		return r_content;
	}


	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	
	@Override
	public String toString() {
		String str = "후기를 작성한 작성자 아이디" + d_member_idx + "\n후기 작성 날짜" + r_writedate + "\n후기 게시글의 본문내용" + r_content;
		System.out.println(str);
		return str; 
	}
}
