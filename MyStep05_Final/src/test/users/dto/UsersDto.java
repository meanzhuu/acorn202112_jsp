package test.users.dto;

public class UsersDto {
	private String id;
	private String pw;
	private String email;
	private String profile;
	private String regdate;
	private String newPw;
	
	public UsersDto() {
		
	}

	public UsersDto(String id, String pw, String email, String profile, String regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.profile = profile;
		this.regdate = regdate;
		this.newPw = newPw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getNewPw() {
		return newPw;
	}

	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}
}

	