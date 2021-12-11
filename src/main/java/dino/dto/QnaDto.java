package dino.dto;

import java.sql.*;

public class QnaDto {
	private int idx;
	private int d_member_idx;
	private int qna_type;
	private String i_subject;
	private String i_content;
	private Date i_writedate;
	private int i_status;
	
	public QnaDto() {
		super();
	}

	public QnaDto(int idx, int d_member_idx, int qna_type, String i_subject, String i_content, Date i_writedate,
			int i_status) {
		super();
		this.idx = idx;
		this.d_member_idx = d_member_idx;
		this.qna_type = qna_type;
		this.i_subject = i_subject;
		this.i_content = i_content;
		this.i_writedate = i_writedate;
		this.i_status = i_status;
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

	public int getQna_type() {
		return qna_type;
	}

	public void setQna_type(int qna_type) {
		this.qna_type = qna_type;
	}

	public String getI_subject() {
		return i_subject;
	}

	public void setI_subject(String i_subject) {
		this.i_subject = i_subject;
	}

	public String getI_content() {
		return i_content;
	}

	public void setI_content(String i_content) {
		this.i_content = i_content;
	}

	public Date getI_writedate() {
		return i_writedate;
	}

	public void setI_writedate(Date i_writedate) {
		this.i_writedate = i_writedate;
	}

	public int getI_status() {
		return i_status;
	}

	public void setI_status(int i_status) {
		this.i_status = i_status;
	}
	
	@Override
	public String toString() {
		String str = "궁금해요 게시글 제목" + i_subject + "\n궁금해요 게시글의 본문내용" + i_content + "\n궁금해요 게시글의 작성날짜" + i_writedate;
		System.out.println(str);
		return str; 
	}
}
