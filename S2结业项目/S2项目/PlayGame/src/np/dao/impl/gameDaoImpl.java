package np.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import np.dao.gameDao;
import np.entity.Game;

public class gameDaoImpl extends BaseDao implements gameDao {
	//查询
	public List<Game> getGame() {
		List<Game> glist=null;
		Game g=null;
		String sql="select game_id, game_name, game_co from Game";
		ResultSet rs=executeQuery(sql);
		try {
			while (rs.next()) {
				if(glist==null){
					glist=new ArrayList<Game>();
				}
				g=new Game();
				g.setGame_id(rs.getInt(1));
				g.setGame_name(rs.getString(2));
				g.setGame_co(rs.getString(3));
				glist.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return glist;
	}
	//测试
	public static void main(String[] args) {
		gameDao g=new gameDaoImpl();
		List<Game> gl=g.getGame();
		for (Game game : gl) {
			System.out.println(game.getGame_name());
		}
	}
	//修改
	public int updateGame(Game g) {
		String sql="UPDATE [PlayGameDB].[dbo].[Game]   SET [game_name] = ? ,[game_co] = ? WHERE game_id=?";
		return executeUpdate(sql, g.getGame_name(),g.getGame_co(),g.getGame_id());
	}
}
