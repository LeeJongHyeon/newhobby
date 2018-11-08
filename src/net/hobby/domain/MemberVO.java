package net.hobby.domain;

import java.util.Date;

public class MemberVO {
	private String member_id;
	private String pwd;
	private String name;
	private String gender;
	private String zipcode;
	private String addr1;
	private String addr2;
	private Date regdate;
	
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String member_id, String pwd, String name, String gender, String zipcode, String addr1,
			String addr2, Date regdate) {
		super();
		this.member_id = member_id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.regdate = regdate;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender
				+ ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", regdate=" + regdate + "]";
	}

}
