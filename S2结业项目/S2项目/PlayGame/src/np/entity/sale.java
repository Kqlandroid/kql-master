package np.entity;

import java.io.Serializable;
import java.sql.Date;

public class sale implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8366287324543747815L;
	private int sl_id;
	private String sl_title;
	private String sl_Content;
	private int admin_id;
	private int sl_price;
	private Date sl_time;
	private int sl_gameid;
	private String sl_url;
	public int getSl_id() {
		return sl_id;
	}
	public void setSl_id(int slId) {
		sl_id = slId;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public String getSl_title() {
		return sl_title;
	}
	public void setSl_title(String slTitle) {
		sl_title = slTitle;
	}
	
	public String getSl_Content() {
		return sl_Content;
	}
	public void setSl_Content(String slContent) {
		sl_Content = slContent;
	}
	public void setAdmin_id(int adminId) {
		admin_id = adminId;
	}
	public int getSl_price() {
		return sl_price;
	}
	public void setSl_price(int slPrice) {
		sl_price = slPrice;
	}
	public Date getSl_time() {
		return sl_time;
	}
	public void setSl_time(Date slTime) {
		sl_time = slTime;
	}
	public int getSl_gameid() {
		return sl_gameid;
	}
	public void setSl_gameid(int slGameid) {
		sl_gameid = slGameid;
	}
	public String getSl_url() {
		return sl_url;
	}
	public void setSl_url(String slUrl) {
		sl_url = slUrl;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public sale() {
		super();
	}
	public sale( String slTitle, String slContent,int adminId,
			int slPrice, Date slTime, int slGameid, String slUrl) {
		super();
		sl_title = slTitle;
		sl_Content=slContent;
		admin_id = adminId;
		sl_price = slPrice;
		sl_time = slTime;
		sl_gameid = slGameid;
		sl_url = slUrl;
	}	
	public sale(int slId, String slTitle, String slContent,int adminId,
			int slPrice, Date slTime, int slGameid, String slUrl) {
		this(slTitle, slContent,adminId,slPrice,slTime,slGameid,slUrl);
		sl_id = slId;
	}	
	public sale(String slTitle, String slContent, 
			int slPrice, Date slTime, String slUrl,int slId) {
		super();
		sl_title = slTitle;
		sl_Content=slContent;
		sl_price = slPrice;
		sl_time = slTime;
		sl_url = slUrl;
		sl_id = slId;
	}
	
}
