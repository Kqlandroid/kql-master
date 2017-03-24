package np.dao.impl;

import java.util.ArrayList;
import java.util.List;

import np.dao.saleDao;
import np.entity.sale;
import np.entity.sale_son;
import java.sql.*;

public class saleDaoImpl extends BaseDao implements saleDao{
	ResultSet rs=null;
	//查询全部
	public List<sale_son> getAll(){
		List<sale_son> list=null;
		String sql="SELECT [sl_id] ,sl_title,sl_Content,admin_name,[sl_price],[sl_time],game_name,[sl_url] FROM [PlayGameDB].[dbo].[sale]  inner join admin on(sale.admin_id=admin.admin_id) inner join Game on(sale.sl_gameid=game_id)";
		rs=executeQuery(sql);
		try {
			while(rs.next()){
				if(list==null){
					list=new ArrayList<sale_son>();
				}
				sale_son ss=new sale_son();
				ss.setSl_id(rs.getInt(1));
				ss.setSl_title(rs.getString(2));
				ss.setSl_Content(rs.getString(3));
				ss.setAdmin_name(rs.getString(4));
				ss.setSl_price(rs.getInt(5));
				ss.setSl_time(rs.getDate(6));
				ss.setSl_gamename(rs.getString(7));
				ss.setSl_url(rs.getString(8));
				list.add(ss);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}
	//查询id查询
	public sale_son getByid(int id){
		sale_son ss=null;
		String sql="SELECT [sl_id] ,sl_title,sl_Content,admin_name,[sl_price],[sl_time],game_name,[sl_url] FROM [PlayGameDB].[dbo].[sale]  inner join admin on(sale.admin_id=admin.admin_id) inner join Game on(sale.sl_gameid=game_id) where sl_id=?";
		rs=executeQuery(sql,id);
		try {
			while(rs.next()){
				ss=new sale_son();
				ss.setSl_id(rs.getInt(1));
				ss.setSl_title(rs.getString(2));
				ss.setSl_Content(rs.getString(3));
				ss.setAdmin_name(rs.getString(4));
				ss.setSl_price(rs.getInt(5));
				ss.setSl_time(rs.getDate(6));
				ss.setSl_gamename(rs.getString(7));
				ss.setSl_url(rs.getString(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return ss;
	}
//修改该表的信息
	public int update(sale s) {
		String sql="UPDATE [PlayGameDB].[dbo].[sale] SET [sl_title] = ? ,[sl_Content] = ?  ,[sl_price] = ? ,[sl_time] = ? ,[sl_url] = ? WHERE sl_id=?";
		return executeUpdate(
				sql, 
				s.getSl_title(),
				s.getSl_Content(),
				s.getSl_price(),
				s.getSl_time(),
				s.getSl_url(),
				s.getSl_id());
	}
	//通过店铺id查询信息
	public sale getAll(int id){
		sale s=null;
		String sql="SELECT [sl_id],[sl_title],[sl_Content],[admin_id],[sl_price],[sl_time],[sl_gameid],[sl_url]  FROM [PlayGameDB].[dbo].[sale] where sl_id=?";
		rs=executeQuery(sql,id);
		try {
			if(rs.next()){
				s=new sale_son();
				s.setSl_id(rs.getInt(1));
				s.setSl_title(rs.getString(2));
				s.setSl_Content(rs.getString(3));
				s.setAdmin_id(rs.getInt(4));
				s.setSl_price(rs.getInt(5));
				s.setSl_time(rs.getDate(6));
				s.setSl_gameid(rs.getInt(7));
				s.setSl_url(rs.getString(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return s;
	}//分页
public List<sale_son> getByPages(int pagesNumber, int pageSize) {
		List<sale_son> slist=null;
		sale_son ss=null;
		String sql="SELECT top(?) [sl_id] ,sl_title,sl_Content,admin_name,[sl_price],[sl_time],game_name,[sl_url] FROM [PlayGameDB].[dbo].[sale]  inner join admin on(sale.admin_id=admin.admin_id) inner join Game on(sale.sl_gameid=game_id) where dbo.sale.sl_id not in(select top(?) sl_id from dbo.sale)\n";
		ResultSet rs=executeQuery(sql,pageSize,(pagesNumber-1)*pageSize);
		try {
			while(rs.next()){
				if(slist==null){
					slist=new ArrayList<sale_son>();
				}
				ss=new sale_son();
				ss.setSl_id(rs.getInt(1));
				ss.setSl_title(rs.getString(2));
				ss.setSl_Content(rs.getString(3));
				ss.setAdmin_name(rs.getString(4));
				ss.setSl_price(rs.getInt(5));
				ss.setSl_time(rs.getDate(6));
				ss.setSl_gamename(rs.getString(7));
				ss.setSl_url(rs.getString(8));
				slist.add(ss);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return slist;
	}
//查询全部信息数量
	public int getTotalRecord() {
		int count=0;
		String sql="select count(1) from sale";		
		try {
			ResultSet rs=executeQuery(sql);
			if(rs.next()){
				count=rs.getInt(1);
			}
		} catch (Exception e) {
		}		
		return count;	
	}
	//通过游戏名称查询
	public List<sale_son> getByGame(String gamename){
		List<sale_son> list=null;
		String sql="SELECT [sl_id] ,sl_title,sl_Content,admin_name,[sl_price],[sl_time],game_name,[sl_url] FROM [PlayGameDB].[dbo].[sale]  inner join admin on(sale.admin_id=admin.admin_id) inner join Game on(sale.sl_gameid=game_id) where game_id=?";
		rs=executeQuery(sql,gamename);
		try {
			while(rs.next()){
				if(list==null){
					list=new ArrayList<sale_son>();
				}
				sale_son ss=new sale_son();
				ss.setSl_id(rs.getInt(1));
				ss.setSl_title(rs.getString(2));
				ss.setSl_Content(rs.getString(3));
				ss.setAdmin_name(rs.getString(4));
				ss.setSl_price(rs.getInt(5));
				ss.setSl_time(rs.getDate(6));
				ss.setSl_gamename(rs.getString(7));
				ss.setSl_url(rs.getString(8));
				list.add(ss);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}
}
