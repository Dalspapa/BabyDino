package dino.dto;

public class AdvertisementDto {

	private int idx;
	private String a_imgpath;
	private String a_linkpage;
	private String corporate_name;
	private String a_name;
	private String a_date;
	private String a_cost;


	public AdvertisementDto() {
		super();
	}


	public AdvertisementDto(int idx, String a_imgpath, String a_linkpage, String corporate_name, String a_name,
			String a_date, String a_cost) {
		super();
		this.idx = idx;
		this.a_imgpath = a_imgpath;
		this.a_linkpage = a_linkpage;
		this.corporate_name = corporate_name;
		this.a_name = a_name;
		this.a_date = a_date;
		this.a_cost = a_cost;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getA_imgpath() {
		return a_imgpath;
	}


	public void setA_imgpath(String a_imgpath) {
		this.a_imgpath = a_imgpath;
	}


	public String getA_linkpage() {
		return a_linkpage;
	}


	public void setA_linkpage(String a_linkpage) {
		this.a_linkpage = a_linkpage;
	}


	public String getCorporate_name() {
		return corporate_name;
	}


	public void setCorporate_name(String corporate_name) {
		this.corporate_name = corporate_name;
	}


	public String getA_name() {
		return a_name;
	}


	public void setA_name(String a_name) {
		this.a_name = a_name;
	}


	public String getA_date() {
		return a_date;
	}


	public void setA_date(String a_date) {
		this.a_date = a_date;
	}


	public String getA_cost() {
		return a_cost;
	}


	public void setA_cost(String a_cost) {
		this.a_cost = a_cost;
	}

	@Override
	public String toString() {
		String str = "광고 이미지 경로" + a_imgpath + "\n회사명" + corporate_name + "\n광고명" + a_name + "\n광고 기간" + a_date;
		System.out.println(str);
		return str;
	}
}
