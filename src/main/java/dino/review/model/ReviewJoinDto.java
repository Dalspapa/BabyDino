package dino.review.model;

import java.sql.Date;

public class ReviewJoinDto {

	private String name;
	private int star;
	private Date r_writedate;
	private String r_content;
	private int d_member_idx;
	private int d_reserve_idx;

	private String from_star;
	private Date from_r_writedate;
	private String from_r_content;
	private int from_d_member_idx;
	private int from_d_reserve_idx;

	public ReviewJoinDto() {
		super();
	}

	public ReviewJoinDto(String name, int star, Date r_writedate, String r_content, int d_member_idx,
			int d_reserve_idx) {
		super();
		this.name = name;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
		this.d_member_idx = d_member_idx;
		this.d_reserve_idx = d_reserve_idx;
	}


	public String getFrom_star() {
		return from_star;
	}

	public void setFrom_star(String from_star) {
		this.from_star = from_star;
	}

	public Date getFrom_r_writedate() {
		return from_r_writedate;
	}

	public void setFrom_r_writedate(Date from_r_writedate) {
		this.from_r_writedate = from_r_writedate;
	}

	public String getFrom_r_content() {
		return from_r_content;
	}

	public void setFrom_r_content(String from_r_content) {
		this.from_r_content = from_r_content;
	}

	public int getFrom_d_member_idx() {
		return from_d_member_idx;
	}

	public void setFrom_d_member_idx(int from_d_member_idx) {
		this.from_d_member_idx = from_d_member_idx;
	}

	public int getFrom_d_reserve_idx() {
		return from_d_reserve_idx;
	}

	public void setFrom_d_reserve_idx(int from_d_reserve_idx) {
		this.from_d_reserve_idx = from_d_reserve_idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getD_member_idx() {
		return d_member_idx;
	}

	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}

	public int getD_reserve_idx() {
		return d_reserve_idx;
	}

	public void setD_reserve_idx(int d_reserve_idx) {
		this.d_reserve_idx = d_reserve_idx;
	}


}
