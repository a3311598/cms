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
@WebServlet("/today/NewsDetail")
public class SearchNewsDetaiAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		NewsService service = new NewsServiceImp();
		News news = new News();
		 news.setId(Integer.parseInt(request.getParameter("id")));
		 List<News> newslist=service.search(news);
			request.getSession().setAttribute("news", newslist.get(0));
				response.sendRedirect(request.getContextPath()+"/today/NewDetail.jsp");
				//request.getRequestDispatcher("/today/NewDetail.jsp").forward(request, response);
			
			
		} 
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
