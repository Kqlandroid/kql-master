package np.dao.impl;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import np.dao.adminDao;
import np.entity.admin;

public class adminDaoImpl extends BaseDao implements adminDao{
	//注册
	public int enroll(admin a){
		String sql="INSERT INTO [PlayGameDB].[dbo].[admin]  ([admin_name],[admin_pwd],[admin_email],[admin_phone],[admin_ic],[admin_address],[admin_sex],[admin_birthday],[admin_manage],[admin_price])    VALUES  (?,?,?,?,?,?,?,?,?,?)";
		return executeUpdate(sql,a.getAdmin_name(),a.getAdmin_pwd(),a.getAdmin_email(),a.getAdmin_phone(),a.getAdmin_ic(),a.getAdmin_address(),a.getAdmin_sex(),a.getAdmin_birthday(),a.getAdmin_manage(),a.getAdmin_price());
	}
	//登录
	public boolean login(admin a)
	{
		boolean bool=false;
		String sql="SELECT [admin_id] ,[admin_name],[admin_pwd],admin_manage  FROM [PlayGameDB].[dbo].[admin]  where [admin_name]=? and [admin_pwd]=?";
		ResultSet rs=executeQuery(sql,a.getAdmin_name(),a.getAdmin_pwd());
		try {
			if(rs.next()){
				bool=true;
				a.setAdmin_id(rs.getInt(1));
				a.setAdmin_manage(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bool;
	}
	//显示用户信息
	public List<admin> findAdmin() {
		List<admin> alist=null;
		admin a=null;
		String sql="select admin_id, admin_name, admin_pwd,admin_sex,admin_birthday, admin_email, admin_phone, admin_ic, admin_address from dbo.admin";
		ResultSet rs=executeQuery(sql);
		try {
			while (rs.next()) {
				if(alist==null){
					alist=new ArrayList<admin>();
				}
				a=new admin();
				a.setAdmin_id(rs.getInt(1));
				a.setAdmin_name(rs.getString(2));
				a.setAdmin_pwd(rs.getString(3));
				a.setAdmin_sex(rs.getString(4));
				a.setAdmin_birthday(rs.getDate(5));
				a.setAdmin_email(rs.getString(6));
				a.setAdmin_phone(rs.getString(7));
				a.setAdmin_ic(rs.getString(8));
				a.setAdmin_address(rs.getString(9));
				alist.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return alist;
	}
	//修改用户信息
	public int updateAmdin(admin a) {
		String sql="UPDATE [PlayGameDB].[dbo].[admin]   SET [admin_sex] = ? ,[admin_birthday] = ? ,[admin_email] = ? ,[admin_phone] = ? ,[admin_ic] = ? ,[admin_address] = ? WHERE admin_id=?";
		return executeUpdate(sql, a.getAdmin_sex(),a.getAdmin_birthday(),a.getAdmin_email(),a.getAdmin_phone(),a.getAdmin_ic(),a.getAdmin_address(),a.getAdmin_id());
	}

	public static void main(String[] args) {
		adminDao ad=new adminDaoImpl();
		List<admin> alist=ad.findAdmin();
		for (admin admin : alist) {
			System.out.println(admin.getAdmin_name());
		}
	admin a=new admin();
	a.setAdmin_id(6);	
	a.setAdmin_sex("女");
	String day="1995-9-9";
	a.setAdmin_birthday(Date.valueOf((String)day));
	a.setAdmin_email("asdas@qq.com");
	a.setAdmin_phone("1234567897");
	a.setAdmin_ic("341122199505104432");
	a.setAdmin_address("滁州");
	int result=ad.updateAmdin(a);
	if(result>0){
		System.out.println("修改成功");
	}else{
		System.out.println("修改失败");
	}
	
	}
	//通过id查询信息
	public admin getAllByid(int id){
		admin a=null;
		String sql="SELECT [admin_id] ,[admin_name],[admin_pwd],[admin_price] FROM [PlayGameDB].[dbo].[admin]  where admin_id=?";
		rs=executeQuery(sql,id);
		try {
			if(rs.next()){
				a=new admin();
				a.setAdmin_id(rs.getInt(1));
				a.setAdmin_name(rs.getString(2));
				a.setAdmin_pwd(rs.getString(3));
				a.setAdmin_price(rs.getInt(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return a;
	}
	//加金额
	public int Sum(int id,int price){
		String sql="UPDATE [PlayGameDB].[dbo].[admin]  SET [admin_price] = admin_price+? WHERE admin_id=?";
		return executeUpdate(sql,price,id);
	}
	//减金额
	public int Reduction_amount(int id,int price){
		String sql="UPDATE [PlayGameDB].[dbo].[admin]  SET [admin_price] = admin_price-? WHERE admin_id=?";
		return executeUpdate(sql,price,id);
	}

	public List<admin> getByPages(int pagesNumber, int pageSize) {
			List<admin> alist=null;
			admin a=null;
			String sql ="SELECT top(?) [admin_id]"
				+ "   ,[admin_name] \n"
				+ "   ,[admin_pwd]\n"
				+ "   ,[admin_email]\n"
				+ "   ,[admin_phone]\n"
			    + "   ,[admin_ic]\n"
				+ "   ,[admin_address]\n"
				+ "   ,[admin_sex]\n"
				+ "   ,[admin_birthday]\n"
				+ "   ,[admin_manage]\n"
				+ "   ,[admin_price]\n"
				+ "  FROM [PlayGameDB].[dbo].[admin] \n"
				+ "  where admin_id not in(select top(?) admin_id from dbo.admin) \n"
				+ " \n"
				+ " \n"
				+ "";
			ResultSet 	rs=executeQuery(sql,pageSize,(pagesNumber-1)*pageSize);
			try {
				while(rs.next()){
					if(alist==null){
						alist=new ArrayList<admin>();
					}
					a=new admin();
					a.setAdmin_id(rs.getInt(1));
					a.setAdmin_name(rs.getString(2));
					a.setAdmin_pwd(rs.getString(3));
					a.setAdmin_email(rs.getString(4));
					a.setAdmin_phone(rs.getString(5));
					a.setAdmin_ic(rs.getString(6));
					a.setAdmin_address(rs.getString(7));
					a.setAdmin_sex(rs.getString(8));
					a.setAdmin_birthday(rs.getDate(9));				
					a.setAdmin_manage(rs.getInt(10));
					a.setAdmin_price(rs.getInt(11));
					alist.add(a);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return alist;
		}
		public int getTotalRecord() {
			int count=0;
			String sql="select count(1) from admin";		
			try {
				ResultSet rs=executeQuery(sql);
				if(rs.next()){
					count=rs.getInt(1);
				}
			} catch (Exception e) {
			}		
			return count;
		}
}
