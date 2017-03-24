package np.entity;

import java.io.Serializable;
import java.sql.Date;

public class yellow  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2525404588750020336L;
 
	private int gy_id;
	private int game_typeid;
	private int gy_price;
	private int gy_sum;
	private int gy_amount;	
	private int gy_salePriceid;
	private int gy_purchasePriceid;
	private int  gy_gain;
	private Date gy_time;
	
	public int getGy_gain() {
		return gy_gain;
	}
	public void setGy_gain(int gyGain) {
		gy_gain = gyGain;
	}
	public Date getGy_time() {
		return gy_time;
	}
	public void setGy_time(Date gyTime) {
		gy_time = gyTime;
	}
	public int getGy_id() {
		return gy_id;
	}
	public void setGy_id(int gyId) {
		gy_id = gyId;
	}
	public int getGame_typeid() {
		return game_typeid;
	}
	public void setGame_typeid(int gameTypeid) {
		game_typeid = gameTypeid;
	}
	public int getGy_price() {
		return gy_price;
	}
	public void setGy_price(int gyPrice) {
		gy_price = gyPrice;
	}
	public int getGy_sum() {
		return gy_sum;
	}
	public void setGy_sum(int gySum) {
		gy_sum = gySum;
	}
	public int getGy_amount() {
		return gy_amount;
	}
	public void setGy_amount(int gyAmount) {
		gy_amount = gyAmount;
	}
	public int getGy_salePriceid() {
		return gy_salePriceid;
	}
	public void setGy_salePriceid(int gySalePriceid) {
		gy_salePriceid = gySalePriceid;
	}
	public int getGy_purchasePriceid() {
		return gy_purchasePriceid;
	}
	public void setGy_purchasePriceid(int gyPurchasePriceid) {
		gy_purchasePriceid = gyPurchasePriceid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public yellow() {
		super();
	}
	public yellow(int gameTypeid, int gyPrice, int gySum,
			int gyAmount,int gySalePriceid, int gyPurchasePriceid,int gyGain,Date gyTime ) {
		super();
		game_typeid = gameTypeid;
		gy_price = gyPrice;
		gy_sum = gySum;
		gy_amount = gyAmount;
		gy_salePriceid = gySalePriceid;
		gy_purchasePriceid = gyPurchasePriceid;
		gy_gain = gyGain;
		gy_time = gyTime;
	}
	public yellow(int gameTypeid, int gyPrice, int gySum,
			int gyAmount,int gySalePriceid, int gyPurchasePriceid ) {
		super();
		game_typeid = gameTypeid;
		gy_price = gyPrice;
		gy_sum = gySum;
		gy_amount = gyAmount;
		gy_salePriceid = gySalePriceid;
		gy_purchasePriceid = gyPurchasePriceid;
	}
	public yellow(int gyId, int gameTypeid, int gyPrice, int gySum,
			int gyAmount, String gySection, String gyBlockName, String gyState,
			int gySalePriceid, int gyPurchasePriceid,int  gyGain,Date gyTime ) {
		this(gameTypeid,gyPrice,gySum,gyAmount,gySalePriceid,gyPurchasePriceid,  gyGain, gyTime );
		gy_id = gyId;
	}	
}
