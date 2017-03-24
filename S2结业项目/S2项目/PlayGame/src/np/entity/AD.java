package np.entity;

import java.io.Serializable;

public class AD implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7423448340536652124L;
	private int ad_id;
	private String ad_name;
	private String ad_url;
	public int getAd_id() {
		return ad_id;
	}
	public void setAd_id(int adId) {
		ad_id = adId;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String adName) {
		ad_name = adName;
	}
	public String getAd_url() {
		return ad_url;
	}
	public void setAd_url(String adUrl) {
		ad_url = adUrl;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public AD( String adName, String adUrl) {
		super();
		ad_name = adName;
		ad_url = adUrl;
	}
	public AD(int adId, String adName, String adUrl) {
		this( adName,  adUrl);
		ad_id = adId;
	}
	public AD() {
		super();
		// TODO Auto-generated constructor stub
	}

}
