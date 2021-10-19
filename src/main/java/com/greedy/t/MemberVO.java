package com.greedy.t;

public class MemberVO {
	
	private String userid;
	private String userpassword;
	private String username;
	private String useremail;
	private String userphone;
	private String useraddress;
	
	public MemberVO() {}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public MemberVO(String userid, String userpassword, String username, String useremail, String userphone,
			String useraddress) {
		super();
		this.userid = userid;
		this.userpassword = userpassword;
		this.username = username;
		this.useremail = useremail;
		this.userphone = userphone;
		this.useraddress = useraddress;
	}

	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", userpassword=" + userpassword + ", username=" + username
				+ ", useremail=" + useremail + ", userphone=" + userphone + ", useraddress=" + useraddress + "]";
	}

	

	

}
