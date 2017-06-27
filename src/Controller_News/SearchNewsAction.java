package Controller_News;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.domain.News;
import com.mashen.admin.service.NewsService;
import com.mashen.admin.service.NewsServiceImp;


/**
 * Servlet implementation class NewsAction
 */
@WebServlet("/searchNews")
public class SearchNewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		NewsService service = new NewsServiceImp();
		News passage = new News();
		
		passage.setHeadline(request.getParameter("headline"));
//		passage.setContent(request.getParameter("content"));
//		passage.setCreationtime(request.getParameter("creationtime"));
	
	
			List<News> newList=service.search(passage);
			request.getSession().setAttribute("newList", newList);
//			System.out.println(newList);
			
//				response.sendRedirect(request.getContextPath()+"/Bootstrap/newslist.jsp");
			/*if(request.getParameter("headline")!=null){*/
				request.getRequestDispatcher("/today/newslist.jsp").forward(request, response);
			/*}else{
				request.getRequestDispatcher("../ManagerAction").forward(request, response);
			}*/
			
		} 
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
