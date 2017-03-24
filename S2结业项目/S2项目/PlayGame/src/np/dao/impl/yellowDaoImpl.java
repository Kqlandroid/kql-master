package np.dao.impl;

import np.dao.yellowDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import np.entity.yellow;
import np.entity.yellow_son;

public class yellowDaoImpl extends BaseDao implements yellowDao{
	//新增买卖信息
	public int New_information(yellow y){
		String sql="INSERT INTO [PlayGameDB].[dbo].[yellow] ([game_typeid],[gy_price],[gy_sum],[gy_amount],[gy_salePriceid],[gy_purchasePriceid])   VALUES   (?,?,?,?,?,?)";
		return executeUpdate(sql,y.getGame_typeid(),y.getGy_price(),y.getGy_sum(),y.getGy_amount(),y.getGy_salePriceid(),y.getGy_purchasePriceid());
	}
//查询交易信息
	public List<yellow_son> getAdminidNews(int admin_id) {
		List<yellow_son> ylist=null;
		yellow_son y=null;
		String sql="SELECT [gy_id],g.game_name,[gy_price],[gy_sum],[gy_amount],s.sl_title,a.admin_name,[gy_gain],[gy_time],s.sl_url,a.admin_id FROM [PlayGameDB].[dbo].[yellow] y inner join Game g on g.game_id=y.game_typeid inner join dbo.sale s on s.sl_id=y.gy_salePriceid inner join dbo.admin a on a.admin_id=y.gy_purchasePriceid where a.admin_id=? order by [gy_time] desc";
		ResultSet rs=executeQuery(sql,admin_id);
		try {
			while (rs.next()) {
				if(ylist==null){
					ylist=new ArrayList<yellow_son>();
				}
				y=new yellow_son();
				y.setGy_id(rs.getInt(1));
				y.setGame_name(rs.getString(2));
				y.setGy_price(rs.getInt(3));
				y.setGy_sum(rs.getInt(4));
				y.setGy_amount(rs.getInt(5));
				y.setSl_title(rs.getString(6));
				y.setAdmin_name(rs.getString(7));
				y.setGame_typename(rs.getString(8));
				y.setGy_gain(rs.getInt(8));	
				y.setGy_time(rs.getDate(9));
				y.setSl_url(rs.getString(10));
				y.setAdmin_id(rs.getInt(11));
				ylist.add(y);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ylist;
	}
	public List<yellow_son> getByPages(int admin_id,int pagesNumber, int pageSize) {
		List<yellow_son> ylist=null;
		String sql="SELECT top(?) [gy_id],g.game_name,[gy_price],[gy_sum],[gy_amount],s.sl_title,a.admin_name,[gy_gain],[gy_time],s.sl_url,a.admin_id  FROM [PlayGameDB].[dbo].[yellow] y inner join Game g on g.game_id=y.game_typeid inner join dbo.sale s on s.sl_id=y.gy_salePriceid inner join dbo.admin a on a.admin_id=y.gy_purchasePriceid where a.admin_id=? and y.gy_id not in(select top(?) gy_id from dbo.yellow where yellow.gy_purchasePriceid=?) order by gy_time desc";
		yellow_son y=null;
		try {
			ResultSet rs=executeQuery(sql,pageSize,admin_id,(pagesNumber-1)*pageSize,admin_id);
			while (rs.next()) {
				if(ylist==null){
					ylist=new ArrayList<yellow_son>();
				}
				y=new yellow_son();
				y.setGy_id(rs.getInt(1));
				y.setGame_name(rs.getString(2));
				y.setGy_price(rs.getInt(3));
				y.setGy_sum(rs.getInt(4));
				y.setGy_amount(rs.getInt(5));
				y.setSl_title(rs.getString(6));
				y.setAdmin_name(rs.getString(7));
				y.setGame_typename(rs.getString(8));
				y.setGy_gain(rs.getInt(8));	
				y.setGy_time(rs.getDate(9));
				y.setSl_url(rs.getString(10));
				y.setAdmin_id(rs.getInt(11));
				ylist.add(y);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ylist;
	}
	public int getTotalRecord(int id) {
		int count=0;
		String sql="select count(1) from yellow where gy_purchasePriceid=?";
		try {
			ResultSet rs=executeQuery(sql,id);
			if(rs.next()){
				count=rs.getInt(1);
			}
		} catch (Exception e) {
		e.printStackTrace();
		}
		return count;
	}
	public static void main(String[] args) {
		yellowDao yd=new yellowDaoImpl();
		List<yellow_son> y=yd.getAdminidNews(6);
		for (yellow_son yellowSon : y) {
			System.out.println(yellowSon.getGy_price());
		}
	}
}
