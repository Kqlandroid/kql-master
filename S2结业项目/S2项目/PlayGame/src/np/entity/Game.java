package np.entity;

import java.io.Serializable;

public class Game implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6327232786096245844L;
	private int game_id;
	private String game_name;
	private String game_co;
	public int getGame_id() {
		return game_id;
	}
	public void setGame_id(int gameId) {
		game_id = gameId;
	}
	public String getGame_name() {
		return game_name;
	}
	public void setGame_name(String gameName) {
		game_name = gameName;
	}
	public String getGame_co() {
		return game_co;
	}
	public void setGame_co(String gameCo) {
		game_co = gameCo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Game(String gameName, String gameCo) {
		super();
		game_name = gameName;
		game_co = gameCo;
	}
	public Game(int gameId, String gameName, String gameCo) {
		this(gameName,gameCo);
		game_id = gameId;
	}
	public Game() {
		super();
	}	
}
