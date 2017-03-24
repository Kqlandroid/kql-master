package np.dao;

import java.util.List;

import np.entity.sale;
import np.entity.sale_son;

public interface saleDao {
	//查询全部
	public List<sale_son> getAll();
	//通过店铺id查询信息
	public sale getAll(int id);
	//查询id查询
	public sale_son getByid(int id);
//修改该表的信息
	public int update(sale s);
        //分页
    public List<sale_son> getByPages(int pagesNumber, int pageSize);
   //查询全部信息数量
	public int getTotalRecord();
	//通过游戏名称查询
	public List<sale_son> getByGame(String gamename);
}
