package np.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import np.dao.ADDao;
import np.dao.adminDao;
import np.dao.gameDao;
import np.dao.saleDao;
import np.dao.impl.ADDaoImpl;
import np.dao.impl.adminDaoImpl;
import np.dao.impl.gameDaoImpl;
import np.dao.impl.saleDaoImpl;
import np.entity.*;

public class adminSQLserverServlet extends HttpServlet {
	//	共享数据
	HttpSession session;
	ServletContext appliction;
	adminDao admindao=new adminDaoImpl();
	/**
	 * Constructor of the object.
	 */
	public adminSQLserverServlet() {
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
			action="Login";
		}
		try {
			Method method=this.getClass().getDeclaredMethod(action, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	//登录
	public void Login(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String adminName=request.getParameter("adminName");
		String adminPwd=request.getParameter("adminPwd");
		admin a=new admin(adminName,adminPwd);
		if(admindao.login(a)){
			session.setAttribute("admin_name", adminName);
			session.setAttribute("admin_id",String.valueOf(a.getAdmin_id()));
			if(a.getAdmin_manage()==1){
				response.sendRedirect("adminSQLserverServlet?action=pages");	
			}else{				
				response.sendRedirect("index.jsp");	
			}
		}else{
			session.setAttribute("denglu", "帐号或密码错误！请<a class='entry-price accent-color'; href='#'>注册</a>");
			response.sendRedirect("login.jsp");
		}
	}
	//用户注册方法
	public void enroll(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {    
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		String day=request.getParameter("day");
		Date adminBirthday=Date.valueOf(year+"-"+month+"-"+day);
		admin a=new admin(request.getParameter("adminName"),
				request.getParameter("adminPwd"),
				request.getParameter("adminEmail"), 
				request.getParameter("adminPhone"),
				request.getParameter("adminIc"),
				request.getParameter("adminAddress"), 
				request.getParameter("adminSex"), 
				adminBirthday, 
				2,0);
		int result=admindao.enroll(a);
		if(result>0){
			response.sendRedirect("index.jsp");
		}else{
			PrintWriter out=response.getWriter();
			out.print("<script>");
			out.print("alert('注册失败，请重新注册！');");
			out.print("location.href='enroll.jsp';");
			out.print("</script>");
			out.flush();
			out.close();
		}		
	}
	//显示用户注册信息
	public void findadmin(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		adminDao ad=new adminDaoImpl();
		List<admin> alist=ad.findAdmin();
		session.setAttribute("find", alist);
		System.out.println(alist);
		response.sendRedirect("manage.jsp");
	}	
	//修改用户信息
	public void update(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		String adminPwd=request.getParameter("adminPwd");				
		String adminSex=request.getParameter("adminSex");
		String adminBirthday=request.getParameter("adminBirthday"); 
		String adminEmail=request.getParameter("adminEmail");
		String adminPhone=request.getParameter("adminPhone");
		String adminIc=request.getParameter("adminIc");
		String adminAddress=request.getParameter("adminAddress");
		String adminId=request.getParameter("adminId");
		admin a=new admin(adminPwd, adminSex, Date.valueOf(adminBirthday), adminEmail, adminPhone, adminIc, adminAddress, Integer.parseInt(adminId));
	
		adminDao ad=new adminDaoImpl();
		int result=ad.updateAmdin(a);		
		if(result>0){			
			String news=request.getParameter("news");
			news="修改成功";
			session.setAttribute("news", news);
			response.sendRedirect("adminSQLserverServlet?action=pages");
		}else{
			PrintWriter out=response.getWriter();
			out.print("<script>");
			out.print("alert('修改失败，请重新修改！');");
			out.print("location.href='manage.jsp';");
			out.print("</script>");
			out.flush();
			out.close();
		}
	}
//分页
	public void page(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int pageNumber;
		int pageSize;
		if(request.getParameter("pageNumber")==null){
			pageNumber=1;
		}else{
			pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
		}
		if(request.getParameter("pageSize")==null){
			pageSize=5;
		}else{
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}		 
		Page<admin> page=new Page<admin>();		
		page.setPageSize(pageSize);
		page.setRecordCount(admindao.getTotalRecord());
		if (pageNumber >page.getTotalPage()) {
			pageNumber = page.getTotalPage();
		} 
		page.setPageNumber(pageNumber);		
		if (pageNumber ==0) {
			pageNumber = 1;		
		} 
		page.setPageNumber(pageNumber);		
		page.setNewlist(admindao.getByPages(pageNumber, pageSize));
		session.setAttribute("pageAdmin", page);
		session.setAttribute("ye",1);
		response.sendRedirect("manage.jsp");
	}
	//所有分页
	public void pages(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int pageNumber;
		int pageSize;
		if(request.getParameter("pageNumber")==null){
			pageNumber=1;
		}else{
			pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
		}
		if(request.getParameter("pageSize")==null){
			pageSize=9;
		}else{
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}		 
		Page<admin> page=new Page<admin>();		
		page.setPageSize(pageSize);
		page.setRecordCount(admindao.getTotalRecord());
		if (pageNumber >page.getTotalPage()) {
			pageNumber = page.getTotalPage();
		} 
		page.setPageNumber(pageNumber);		
		if (pageNumber ==0) {
			pageNumber = 1;		
		} 
		page.setPageNumber(pageNumber);		
		page.setNewlist(admindao.getByPages(pageNumber, pageSize));
		session.setAttribute("pageAdmin", page);
		saleDao saledao=new saleDaoImpl();
		Page<sale_son> page2=new Page<sale_son>();		
		page2.setPageSize(pageSize);
		page2.setRecordCount(saledao.getTotalRecord());
		page2.setPageNumber(pageNumber);	
		page2.setNewlist(saledao.getByPages(pageNumber, pageSize));
		session.setAttribute("pageSale", page2);
		
		ADDao a=new ADDaoImpl();
		List<AD> alist=a.getAd();
		session.setAttribute("adlist", alist);
		gameDao a1=new gameDaoImpl();
		List<Game> glist=a1.getGame();
		session.setAttribute("glist",glist);
		
		response.sendRedirect("manage.jsp");
	}
	//充值
	public void full(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		if(session.getAttribute("admin_id")==null){
			response.sendRedirect("login.jsp");
			return;
		}
		if(request.getParameter("jin")==null){
			response.sendRedirect("Recharge.jsp");
			return;
		}
		int adminid=Integer.parseInt(session.getAttribute("admin_id").toString());
		String moneys=request.getParameter("jin");
		int money=Integer.parseInt(moneys);
		int num=admindao.Sum(adminid, money);
		if(num>0){
			session.setAttribute("full","充值成功！！！");
		}else{
			session.setAttribute("full","充值失败！！！");
		}
		response.sendRedirect("Recharge.jsp");
	}
	//清空后再赋值
	public void Shopping(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		session.setAttribute("admin_name", name);
		session.setAttribute("admin_id",String.valueOf(id));
		response.sendRedirect("Shopping.jsp");
	}
	/**public void full(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
