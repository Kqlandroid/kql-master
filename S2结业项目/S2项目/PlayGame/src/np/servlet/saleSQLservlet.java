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

import np.dao.saleDao;
import np.dao.impl.saleDaoImpl;
import np.entity.Page;
import np.entity.sale;
import np.entity.sale_son;

public class saleSQLservlet extends HttpServlet {
	//	共享数据
	HttpSession session;
	ServletContext appliction;
	saleDao saledao=new saleDaoImpl();
	/**
	 * Constructor of the object.
	 */
	public saleSQLservlet() {
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
			action="getAll";
		}
		try {
			Method method=this.getClass().getDeclaredMethod(action, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

	public void getAll(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		List<sale_son> list=saledao.getAll();
		session.setAttribute("getAll", list);
		response.sendRedirect("MyJsp.jsp");

	}
	public void getByid(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		if(request.getParameter("saleid")==null){
			response.sendRedirect("MyJsp.jsp");
			return; 
		}
		int id=Integer.parseInt(request.getParameter("saleid"));
		sale_son list=saledao.getByid(id);
		session.setAttribute("getByid", list);
		response.sendRedirect("product.jsp");
	}
	//修改该表的信息
	public void updateNews(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String  slId=request.getParameter("slId");
		String slTitle=request.getParameter("slTitle");
		String slContent=request.getParameter("slContent");	
		String slStock=request.getParameter("slStock");
		String slPrice=request.getParameter("slPrice");
		String slTime=request.getParameter("slTime");	
		String slUrl=request.getParameter("slUrl");
		sale s=new sale(slTitle,slContent,Integer.parseInt(slPrice),Date.valueOf(slTime),slUrl,Integer.parseInt(slId));
		int result=saledao.update(s);
		if(result>0){			
			String news=request.getParameter("news");
			news="修改成功";
			session.setAttribute("salenews", news);
			response.sendRedirect("saleSQLservlet?action=page");
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
		Page<sale_son> page=new Page<sale_son>();		
		page.setPageSize(pageSize);
		page.setRecordCount(saledao.getTotalRecord());
		if (pageNumber >page.getTotalPage()) {
			pageNumber = page.getTotalPage();
		} 
		page.setPageNumber(pageNumber);		
		if (pageNumber ==0) {
			pageNumber = 1;		
		} 
		page.setPageNumber(pageNumber);		
		page.setNewlist(saledao.getByPages(pageNumber, pageSize));
		session.setAttribute("pageSale", page);
		session.setAttribute("ye",2);
		response.sendRedirect("manage.jsp");
	}
	public void getAllTwo(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String gameid=request.getParameter("gameid");
		if(gameid==null||gameid==""){
			response.sendRedirect("index.jsp");
		}
		List<sale_son> list=saledao.getByGame(gameid);
		session.setAttribute("getAllTwo", list);
		response.sendRedirect("MyJsp_2.jsp");

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
