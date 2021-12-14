package dino.findkids.model;

import org.springframework.web.multipart.MultipartFile;
//////////////주호
public class TeacherCertDto {
	
	private int idx;
	private String exemplification;
	private String crimeagree;
	private int d_member_idx;
	private MultipartFile imgpath;
	
	public TeacherCertDto() {
		super();
	}

	public TeacherCertDto(int idx, String exemplification, String crimeagree, int d_member_idx, String certimgpath,
			MultipartFile imgpath) {
		super();
		this.idx = idx;
		this.exemplification = exemplification;
		this.crimeagree = crimeagree;
		this.d_member_idx = d_member_idx;
		this.imgpath = imgpath;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getExemplification() {
		return exemplification;
	}

	public void setExemplification(String exemplification) {
		this.exemplification = exemplification;
	}

	public String getCrimeagree() {
		return crimeagree;
	}

	public void setCrimeagree(String crimeagree) {
		this.crimeagree = crimeagree;
	}

	public int getD_member_idx() {
		return d_member_idx;
	}

	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}

	public MultipartFile getImgpath() {
		return imgpath;
	}

	public void setImgpath(MultipartFile imgpath) {
		this.imgpath = imgpath;
	}
	
	@Override
	public String toString() {
		String str = "exemplification" + exemplification + "\ncrimeagree" + crimeagree + "\nd_member_idx" + d_member_idx  ;
		
		return str;
	}
	
//////////////주호 끝

}
