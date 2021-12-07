package dino.Dto;

import java.sql.Date;

public class MemberDto {

	private int idx;
	private String id;
	private String pwd;
	private String name;
	private int gender;
	private String birth;
	private String tel;
	private int member_Type;
	private Date joinDate;
	private String addr1;
	private String addr2;
	private String addr3;
	private String addrDetail;
	
	public MemberDto() {
		super();
	}

	public MemberDto(int idx, String id, String pwd, String name, int gender, String birth, String tel, int member_Type,
			Date joinDate, String addr1, String addr2, String addr3, String addrDetail) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.tel = tel;
		this.member_Type = member_Type;
		this.joinDate = joinDate;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.addrDetail = addrDetail;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getMemberType() {
		return member_Type;
	}

	public void setMemberType(int member_Type) {
		this.member_Type = member_Type;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	
	   @Override
	   public String toString() {
	     String str = "멤버타입" + member_Type + "\n아이디 : " + id + "\n비밀번호 : " + pwd + "\n이름 : " + name + "\n성별 : " + gender + "생일" + birth + "\n전화번호 : " + tel + "\n주소 :" + addr1;
	     System.out.println(str);
	      return str;
	   }
}
