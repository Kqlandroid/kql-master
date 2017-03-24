package np.dao;

import java.util.List;

import np.entity.Game;

public interface gameDao {
    //查询
	public List<Game> getGame();
	//修改
	public int updateGame(Game g);
}
