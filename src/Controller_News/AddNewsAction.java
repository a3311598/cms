package Controller_News;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mashen.admin.domain.News;
import com.mashen.admin.service.NewsService;
import com.mashen.admin.service.NewsServiceImp;

/**
 * Servlet implementation class NewsAction
 */
@WebServlet("/addNews")
@MultipartConfig(location="E:/toutiao")
public class AddNewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		NewsService service = new NewsServiceImp();
		News passage = new News();

		Part part=request.getPart("thumb");
		passage.setHeadline(request.getParameter("headline"));
		passage.setThumb("/toutiao/"+request.getParameter("headline")+".jpg");
		passage.setContent(request.getParameter("content"));
		passage.setHeadname(request.getParameter("headname"));
		passage.setCategoryid(Integer.parseInt(request.getParameter("categoryid")));
		service.addNews(passage);
		part.write(passage.getHeadline()+".jpg");
		
		//service.addNews(passage);
		// response.sendRedirect(request.getContextPath()+"/Bootstrap/todayfirst.jsp");
		request.getRequestDispatcher("/searchNews").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
