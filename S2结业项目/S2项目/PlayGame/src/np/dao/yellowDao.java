package np.dao;

import java.util.List;

import np.entity.yellow;
import np.entity.yellow_son;


public interface yellowDao {
	//新增买卖信息
	public int New_information(yellow y);
        //查询用户交易信息
	public List<yellow_son> getAdminidNews(int admin_id);
        //用户分页查询
	public List<yellow_son> getByPages(int admin_id,int pagesNumber, int pageSize);
	public  int getTotalRecord(int id);
	
}
