package Controller_News;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.domain.News;
import com.mashen.admin.service.NewsService;
import com.mashen.admin.service.NewsServiceImp;


/**
 * Servlet implementation class UpdateNewsAction
 */
@WebServlet("/modifyNews")
public class ModifyNewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NewsService service = new NewsServiceImp();
		News passage = new News();
		request.setCharacterEncoding("UTF-8");
	
	
				Integer id = (int)request.getSession().getAttribute("id");
					
					
					passage.setId(id);
					passage.setHeadline(request.getParameter("headline"));
					passage.setContent(request.getParameter("content"));
					passage.setHeadname(request.getParameter("headname"));
					System.out.println(passage);
					service.updateNews(passage);//修改用户
					request.getRequestDispatcher("/searchNews").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}