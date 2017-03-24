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

import np.dao.ADDao;
import np.dao.gameDao;
import np.dao.impl.ADDaoImpl;
import np.dao.impl.gameDaoImpl;
import np.entity.AD;
import np.entity.Game;

public class ADServlet extends HttpServlet {
	HttpSession session;
	ServletContext appliction;
	/**
	 * Constructor of the object.
	 */
	public ADServlet() {
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
			e.printStackTrace();
		} 
	}
    //查询信息
	public void getAll(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		ADDao a=new ADDaoImpl();
		List<AD> alist=a.getAd();
		System.out.println(alist);
		session.setAttribute("ad", alist);
		response.sendRedirect("Forum.jsp");
	}
	 //查询第二信息
	public void getgame(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		ADDao a=new ADDaoImpl();
		List<AD> alist=a.getAd();
		session.setAttribute("adlist", alist);
		response.sendRedirect("manage.jsp");
	}
	//修改AD表
	public void update(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int adId=Integer.parseInt(request.getParameter("adId"));
		String adName=request.getParameter("adName");
		String adUrl=request.getParameter("adUrl");
		System.out.println(adName);
		System.out.println(adUrl);
		AD aa=new AD(adId, adName, adUrl);
		ADDao a=new ADDaoImpl();
		int result=a.update(aa);
		if(result>0){
			session.setAttribute("newEn", "修改成功");
			response.sendRedirect("ADServlet?action=getgame");
		}else{
			session.setAttribute("newEn", "修改失败！！！");
			response.sendRedirect("manage.jsp");
		}		
	}
	//查询game
	public void getGameNews(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		gameDao a=new gameDaoImpl();
		List<Game> glist=a.getGame();
		System.out.println(glist);
		session.setAttribute("glist",glist);
		response.sendRedirect("manage.jsp");
	}
	//修改Game表
	public void updateGame(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int gameId=Integer.parseInt(request.getParameter("gameId"));
		String gameName=request.getParameter("gameName");
		String gameCo=request.getParameter("gameCo");
		System.out.println(gameName);
		System.out.println(gameCo);
		Game g=new Game(gameId, gameName, gameCo);
		gameDao gg=new gameDaoImpl();
		int result=gg.updateGame(g);
		if(result>0){
			session.setAttribute("news", "修改成功");
			response.sendRedirect("ADServlet?action=getGameNews");
		}else{
			session.setAttribute("news", "修改失败！！！");
			response.sendRedirect("manage.jsp");
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
