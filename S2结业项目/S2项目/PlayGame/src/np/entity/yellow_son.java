package np.entity;

import java.sql.Date;

public class yellow_son extends yellow {

	
	private String game_typename;
	private String gy_salePricename;
	private String gy_purchasePricename;
	private String sl_title;
	private String admin_name;
	private String sl_url;
	private String game_name;
	private int admin_id;
	
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int adminId) {
		admin_id = adminId;
	}
	public String getGame_name() {
		return game_name;
	}
	public void setGame_name(String gameName) {
		game_name = gameName;
	}
	public String getSl_url() {
		return sl_url;
	}
	public void setSl_url(String slUrl) {
		sl_url = slUrl;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String adminName) {
		admin_name = adminName;
	}
	public String getSl_title() {
		return sl_title;
	}
	public void setSl_title(String slTitle) {
		sl_title = slTitle;
	}
	public String getGame_typename() {
		return game_typename;
	}
	public void setGame_typename(String gameTypename) {
		game_typename = gameTypename;
	}
	public String getGy_salePricename() {
		return gy_salePricename;
	}
	public void setGy_salePricename(String gySalePricename) {
		gy_salePricename = gySalePricename;
	}
	public String getGy_purchasePricename() {
		return gy_purchasePricename;
	}
	public void setGy_purchasePricename(String gyPurchasePricename) {
		gy_purchasePricename = gyPurchasePricename;
	}
	public yellow_son() {
		// TODO Auto-generated constructor stub
	}
	public yellow_son(int gameTypeid, int gyPrice, int gySum, int gyAmount,
			int gySalePriceid, int gyPurchasePriceid, int gyGain, Date gyTime,String gametypename,
			 String gysalePricename,
			 String gypurchasePricename) {
		super(gameTypeid, gyPrice, gySum, gyAmount, gySalePriceid, gyPurchasePriceid,
				gyGain, gyTime);
		this.game_typename=gametypename;
		this.gy_salePricename=gysalePricename;
		this.gy_purchasePricename=gypurchasePricename;
		
		
		// TODO Auto-generated constructor stub
	}
	public yellow_son(int gyId, int gameTypeid, int gyPrice, int gySum,
			int gyAmount, String gySection, String gyBlockName, String gyState,
			int gySalePriceid, int gyPurchasePriceid, int gyGain, Date gyTime,String gametypename,
			 String gysalePricename,
			 String gypurchasePricename) {
		super(gyId, gameTypeid, gyPrice, gySum, gyAmount, gySection, gyBlockName,
				gyState, gySalePriceid, gyPurchasePriceid, gyGain, gyTime);
		// TODO Auto-generated constructor stub
		this.game_typename=gametypename;
		this.gy_salePricename=gysalePricename;
		this.gy_purchasePricename=gypurchasePricename;
	}
	public yellow_son(int gyId,String gameName, int gameTypeid, int gyPrice, int gySum,
			int gyAmount,String slTitle,String adminName,  String gySection, String gyBlockName, String gyState,
			int gySalePriceid, int gyPurchasePriceid, int gyGain, Date gyTime,String gametypename,
			 String gysalePricename, String gypurchasePricename ,String slUrl,int adminId) {
		super(gyId, gameTypeid, gyPrice, gySum, gyAmount, gySection, gyBlockName,
				gyState, gySalePriceid, gyPurchasePriceid, gyGain, gyTime);
		this.game_typename=gametypename;
		this.gy_salePricename=gysalePricename;
		this.gy_purchasePricename=gypurchasePricename;
		this.sl_title=slTitle;
		this.admin_name=adminName;
		this.sl_url=slUrl;
		this.game_name=gameName;
		this.admin_id=adminId;
	}
	
}
