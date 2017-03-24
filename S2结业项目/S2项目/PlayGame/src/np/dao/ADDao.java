package np.dao;

import java.util.List;

import np.entity.AD;

public interface ADDao {
    //查询信息
	public List<AD> getAd();
	//修改
	public int update(AD a);
	
}
