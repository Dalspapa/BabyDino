package dino.parentmypage.model;

public class ParentMypageDto {

	private String t_introduce;
    private String name;
    private String t_care_type;
    private int t_cost;
    private String care_time;
    private int r_idx;




    public int getR_idx() {
		return r_idx;
	}
	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
	}
	public ParentMypageDto() {
		super();
	}
	public ParentMypageDto(String t_introduce, String name, String t_care_type, int t_cost, String care_time) {
		super();
		this.t_introduce = t_introduce;
		this.name = name;
		this.t_care_type = t_care_type;
		this.t_cost = t_cost;
		this.care_time = care_time;
	}
	public String getT_introduce() {
		return t_introduce;
	}
	public void setT_introduce(String t_introduce) {
		this.t_introduce = t_introduce;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getT_care_type() {
		return t_care_type;
	}
	public void setT_care_type(String t_care_type) {
		this.t_care_type = t_care_type;
	}
	public int getT_cost() {
		return t_cost;
	}
	public void setT_cost(int t_cost) {
		this.t_cost = t_cost;
	}
	public String getCare_time() {
		return care_time;
	}
	public void setCare_time(String care_time) {
		this.care_time = care_time;
	}


}
