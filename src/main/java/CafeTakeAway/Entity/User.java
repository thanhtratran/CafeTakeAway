package CafeTakeAway.Entity;

public class User {
	private String maNV;
	private String username;
	private String password;
	private String maQuyen;
	
	public User() {
		super();
	}

	public User(String maNV, String username, String password, String maQuyen) {
		super();
		this.maNV = maNV;
		this.username = username;
		this.password = password;
		this.maQuyen = maQuyen;
	}

	public String getMaNV() {
		return maNV;
	}

	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMaQuyen() {
		return maQuyen;
	}

	public void setMaQuyen(String maQuyen) {
		this.maQuyen = maQuyen;
	}
	
}
