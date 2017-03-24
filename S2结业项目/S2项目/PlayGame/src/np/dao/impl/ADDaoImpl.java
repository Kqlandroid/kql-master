package np.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import np.dao.ADDao;
import np.entity.AD;

public class ADDaoImpl extends BaseDao implements ADDao {
	//查询信息
	public List<AD> getAd() {
		List<AD> alist=null;
		AD a=null;
		String sql="SELECT [Ad_id],[Ad_name] ,[Ad_url] FROM [PlayGameDB].[dbo].[AD] ";
		ResultSet rs=executeQuery(sql);
		try {
			while (rs.next()) {
				if(alist==null){
					alist=new ArrayList<AD>();
				}
				a=new AD();
				a.setAd_id(rs.getInt(1));
				a.setAd_name(rs.getString(2));
				a.setAd_url(rs.getString(3));
				alist.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alist;
	}
	public static void main(String[] args) {
		ADDao a=new ADDaoImpl();
		List<AD> ad=a.getAd();
		for (AD ad2 : ad) {
			System.out.println(ad2.getAd_name());
		}
	}
	//修改
	public int update(AD a) {
		String sql="UPDATE [PlayGameDB].[dbo].[AD]  SET [ad_name] =? ,[ad_url] = ? WHERE ad_id=?";
		return executeUpdate(sql, a.getAd_name(),a.getAd_url(),a.getAd_id());
	}
}
