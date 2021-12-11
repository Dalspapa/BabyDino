package dino.dto;

import java.sql.*;

public class CareNoteDto {

	private int idx;
	private int d_reserve_idx;
	private String c_content;
	private Date c_writedate;

	private String k_name;
	private String k_care_type;
	private String care_time;





	public String getK_name() {
		return k_name;
	}


	public void setK_name(String k_name) {
		this.k_name = k_name;
	}


	public String getK_care_type() {
		return k_care_type;
	}


	public void setK_care_type(String k_care_type) {
		this.k_care_type = k_care_type;
	}


	public String getCare_time() {
		return care_time;
	}


	public void setCare_time(String care_time) {
		this.care_time = care_time;
	}


	public CareNoteDto() {
		super();
	}


	public CareNoteDto(int idx, int d_reserve_idx, String c_content, Date c_writedate) {
		super();
		this.idx = idx;
		this.d_reserve_idx = d_reserve_idx;
		this.c_content = c_content;
		this.c_writedate = c_writedate;
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


	public String getC_content() {
		return c_content;
	}


	public void setC_content(String c_content) {
		this.c_content = c_content;
	}


	public Date getC_writedate() {
		return c_writedate;
	}


	public void setC_writedate(Date c_writedate) {
		this.c_writedate = c_writedate;
	}

	@Override
	public String toString() {
		String str = "돌봄노트 게시글 내용" + c_content + "\n돌봄노트 작성 날짜" + c_writedate ;
		System.out.println(str);
		return str;
	}
}
