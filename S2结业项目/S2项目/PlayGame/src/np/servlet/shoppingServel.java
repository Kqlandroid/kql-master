package np.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import np.dao.adminDao;
import np.dao.saleDao;
import np.dao.yellowDao;
import np.dao.impl.adminDaoImpl;
import np.dao.impl.saleDaoImpl;
import np.dao.impl.yellowDaoImpl;
import np.entity.admin;
import np.entity.sale;
import np.entity.yellow;

public class shoppingServel extends HttpServlet {
	HttpSession session;
	ServletContext appliction;
	adminDao admindao=new adminDaoImpl();
	saleDao saledao=new saleDaoImpl();
	yellowDao yellowdao=new yellowDaoImpl();
	/**
	 * Constructor of the object.
	 */
	public shoppingServel() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		appliction=this.getServletContext();
		String action=request.getParameter("action");
		if(action==null || action.trim().length()==0){
			action="shopping";
		}
		try {
			Method method=this.getClass().getDeclaredMethod(action, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	public void shopping(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String ids=request.getParameter("proids");
		String nums=request.getParameter("pronums");
		String zongs=request.getParameter("zong");
		float zong=Float.parseFloat(zongs);
		if(ids==null||ids.trim().length()==0){
			PrintWriter out=response.getWriter();
			out.print("<script>");
			out.print("alert('请选购商品！！！');");
			out.print("location.href='index.jsp';");
			out.print("</script>");
			out.flush();
			out.close();
			return;
		}
		int admin_id=0;
		if((String)session.getAttribute("admin_id")==null||(String)session.getAttribute("admin_id")==""||((String)session.getAttribute("admin_id")).trim().length()==0){
			response.sendRedirect("login.jsp");
			return;
		}else{

			String admin_ids=(String)session.getAttribute("admin_id");
		 admin_id=Integer.parseInt(admin_ids);
		}
		admin a=admindao.getAllByid(admin_id);
		if(a.getAdmin_price()<zong){
			PrintWriter out=response.getWriter();
			out.print("<script>");
			out.print("alert('金额不足，请充值！！！');");
			out.print("location.href='Recharge.jsp';");
			out.print("</script>");
			out.flush();
			out.close();
			return;
		}
		String id[]=ids.split(",");
		String num[]=nums.split(",");
		for (int i = 0; i < id.length; i++) {
			sale s=saledao.getAll(Integer.parseInt(id[i]));
			yellow y=new yellow(s.getSl_gameid(),s.getSl_price(),Integer.parseInt(num[i]),(s.getSl_price()*Integer.parseInt(num[i])),s.getSl_id(),admin_id);
			int cheng=yellowdao.New_information(y);
			if(cheng>0){
				int jia=admindao.Sum(s.getAdmin_id(),Integer.parseInt(num[i])*s.getSl_price());
				if(jia>0){
					int jian=admindao.Reduction_amount(admin_id,Integer.parseInt(num[i])*s.getSl_price());
					if(jian>0){
						//清空所有商品
						response.sendRedirect("Shopping success.jsp");
					}
				}
			}
		}
		
	}
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
