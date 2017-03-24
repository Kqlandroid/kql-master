package np.dao.impl;
import java.sql.*;
public class BaseDao {
	private static final String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL="jdbc:sqlserver://localhost:1433;databasename=PlayGameDB";
	private static final String PID="sa";
	private static final String PWD="ok";
	
	Connection con=null;
	PreparedStatement psmt=null;
	ResultSet rs=null;
	
	
	//返回连接对象
	public Connection getConnection(){
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(URL,PID,PWD);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	//关闭连接
	public void closeAll(){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(psmt!=null){
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	//增，删，改
	public int executeUpdate(String sql,Object... params){
		int resu=-1;
		con=getConnection();
		try {
			psmt=con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				psmt.setObject(i+1, params[i]);
			}
			resu=psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return resu;
	}

	//查
	public ResultSet executeQuery(String sql,Object... params){
		con=getConnection();
		try {
			psmt=con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				psmt.setObject(i+1, params[i]);
			}
			rs=psmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

}
