package np.entity;

import java.io.Serializable;
import java.sql.Date;

public class admin  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -528260524947381672L;
	private int admin_id;
	private String admin_name;
	private String admin_pwd;
	private String admin_email;
	private String admin_phone;
	private String admin_ic;
	private String admin_address;
	private String admin_sex;
	private Date admin_birthday;
	private int admin_manage;
	private int  admin_price;
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int adminId) {
		admin_id = adminId;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String adminName) {
		admin_name = adminName;
	}
	public String getAdmin_pwd() {
		return admin_pwd;
	}
	public void setAdmin_pwd(String adminPwd) {
		admin_pwd = adminPwd;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String adminEmail) {
		admin_email = adminEmail;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String adminPhone) {
		admin_phone = adminPhone;
	}
	public String getAdmin_ic() {
		return admin_ic;
	}
	public void setAdmin_ic(String adminIc) {
		admin_ic = adminIc;
	}
	public String getAdmin_address() {
		return admin_address;
	}
	public void setAdmin_address(String adminAddress) {
		admin_address = adminAddress;
	}
	public String getAdmin_sex() {
		return admin_sex;
	}
	public void setAdmin_sex(String adminSex) {
		admin_sex = adminSex;
	}
	public Date getAdmin_birthday() {
		return admin_birthday;
	}
	public void setAdmin_birthday(Date adminBirthday) {
		admin_birthday = adminBirthday;
	}
	public int getAdmin_manage() {
		return admin_manage;
	}
	public void setAdmin_manage(int adminManage) {
		admin_manage = adminManage;
	}
	public int getAdmin_price() {
		return admin_price;
	}
	public void setAdmin_price(int adminPrice) {
		admin_price = adminPrice;
	}
	public admin() {
		// TODO Auto-generated constructor stub
	}
	public admin( String adminName, String adminPwd,
			String adminEmail, String adminPhone, String adminIc,
			String adminAddress, String adminSex, Date adminBirthday,
			int adminManage, int adminPrice) {
		super();
		admin_name = adminName;
		admin_pwd = adminPwd;
		admin_email = adminEmail;
		admin_phone = adminPhone;
		admin_ic = adminIc;
		admin_address = adminAddress;
		admin_sex = adminSex;
		admin_birthday = adminBirthday;
		admin_manage = adminManage;
		admin_price = adminPrice;
	}
	public admin(String adminPwd,String adminSex,Date adminBirthday,String adminEmail, String adminPhone, String adminIc,String adminAddress,int adminId) {
		super();
		admin_pwd = adminPwd;
		admin_sex = adminSex;
		admin_birthday = adminBirthday;
		admin_email = adminEmail;
		admin_phone = adminPhone;
		admin_ic = adminIc;
		admin_address = adminAddress;	
		admin_id = adminId;
	}
	public admin( String adminName, String adminPwd	) {
		super();
		admin_name = adminName;
		admin_pwd = adminPwd;
	}
	public admin(int adminId, String adminName, String adminPwd,
			String adminEmail, String adminPhone, String adminIc,
			String adminAddress, String adminSex, Date adminBirthday,
			int adminManage, int adminPrice) {
		this(adminName,adminPwd,adminEmail,adminPhone,adminIc,adminAddress,adminSex,adminBirthday,adminManage,adminPrice);
		admin_id = adminId;
	}
	
	
	
}
