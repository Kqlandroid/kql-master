package np.entity;

import java.sql.Date;

public class sale_son extends sale {

	/**
	 * 
	 */
	private static final long serialVersionUID = -42242896714535538L;
	private String admin_name;
	private String sl_gamename;

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String adminName) {
		admin_name = adminName;
	}

	public String getSl_gamename() {
		return sl_gamename;
	}

	public void setSl_gamename(String slGamename) {
		sl_gamename = slGamename;
	}

	public sale_son() {
		// TODO Auto-generated constructor stub
	}

	public sale_son(int slId, String slTitle, String slContent,int adminId, 
			int slPrice, Date slTime, int slGameid, String slUrl,String adminName, String slGamename) {
		super(slId,slTitle,slContent,adminId,slPrice,slTime,slGameid,slUrl);
		admin_name = adminName;
		sl_gamename = slGamename;
	}
	public sale_son( String slTitle,String slContent, int adminId,
			int slPrice, Date slTime, int slGameid, String slUrl,String adminName, String slGamename) {
		super(slTitle,slContent,adminId,slPrice,slTime,slGameid,slUrl);
		admin_name = adminName;
		sl_gamename = slGamename;
	}
	

}
