package np.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import np.dao.yellowDao;
import np.dao.impl.yellowDaoImpl;
import np.entity.Page;
import np.entity.sale_son;
import np.entity.yellow_son;

public class yellowServlet extends HttpServlet {
	HttpSession session;
	ServletContext appliction;
	/**
	 * Constructor of the object.
	 */
	public yellowServlet() {
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
			action="yellow";
		}
		try {
			Method method=this.getClass().getDeclaredMethod(action, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (Exception e) {
			e.printStackTrace();
		} 		
	}
	//根据id查询
	public void yellow(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		yellowDao y=new yellowDaoImpl();
		if((String)session.getAttribute("admin_id")==null||(String)session.getAttribute("admin_id")==""||((String)session.getAttribute("admin_id")).trim().length()==0){
			response.sendRedirect("login.jsp");
			return;
		}
		int admin_id=Integer.parseInt(session.getAttribute("admin_id").toString());	
		List<yellow_son> ylist=y.getAdminidNews(admin_id);		
		session.setAttribute("ylist", ylist);
		response.sendRedirect("yellowServlet?action=page");
	}
	//分页
	public void page(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		yellowDao y=new yellowDaoImpl();
		int pageNumber;
		int pageSize;
		int admin_id = 0;
		if(request.getParameter("pageNumber")==null){
			pageNumber=1;
		}else{
			pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
		}
		if(request.getParameter("pageSize")==null){
			pageSize=3;
		}else{
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}		 	
		if(session.getAttribute("admin_id")==null||session.getAttribute("admin_id")==""||session.getAttribute("admin_id").toString().trim().length()==0){
			response.sendRedirect("login.jsp");
			return ;
		}
		admin_id=Integer.parseInt(session.getAttribute("admin_id").toString());
		Page<yellow_son> page=new Page<yellow_son>();		
		page.setPageSize(pageSize);
		page.setPageNumber(pageNumber);				
		page.setRecordCount(y.getTotalRecord(admin_id));
		if (pageNumber >page.getTotalPage()) {
			pageNumber = page.getTotalPage();
		} 
		page.setPageNumber(pageNumber);		
		if (pageNumber ==0) {
			pageNumber = 1;		
		} 
		page.setPageNumber(pageNumber);
		page.setNewlist(y.getByPages(admin_id,pageNumber, pageSize));
		yellow_son yy=new yellow_son();	
			
		session.setAttribute("gain", "已收货");	
		
		session.setAttribute("pageYellow", page);
		response.sendRedirect("Trading Center.jsp");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
	}

}
