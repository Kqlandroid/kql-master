package np.dao;
import java.util.List;

import np.entity.admin;


public interface adminDao {
	//注册
	public int enroll(admin a);
	//登录
	public boolean login(admin a);
	//显示用户信息
	public List<admin> findAdmin();
	//修改用户信息
	public int updateAmdin(admin a);
	//通过id查询信息
	public admin getAllByid(int id);
	//加金额
	public int Sum(int id,int price);
	//减金额
	public int Reduction_amount(int id,int price);
        //用户分页查询
	public List<admin> getByPages(int pagesNumber, int pageSize);
	public  int getTotalRecord();
}
