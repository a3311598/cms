package Controller_News;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.domain.Advertisement;
import com.mashen.admin.domain.Column;
import com.mashen.admin.domain.News;
import com.mashen.admin.service.AdService;
import com.mashen.admin.service.AdServiceImp;
import com.mashen.admin.service.ColumnService;
import com.mashen.admin.service.ColumnServiceImp;
import com.mashen.admin.service.NewsService;
import com.mashen.admin.service.NewsServiceImp;

/**
 * Servlet implementation class NewsAction
 */
@WebServlet("/NewsAction")
public class NewsAction extends HttpServlet {
	NewsService service = new NewsServiceImp();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		News news = new News();
		news.setHeadline(request.getParameter("headline"));
		List<News> newList=service.search(news);
		List<News> hotNewList=service.search_24hotnews(news);
		request.getSession().setAttribute("newList", newList);
		request.getSession().setAttribute("hotNewList", hotNewList);
		
		ColumnService service = new ColumnServiceImp();
		Column column = new Column();
			List<Column> colList=service.search(column.getColumnname());
			request.getSession().setAttribute("colList", colList);
			
			AdService adService= new AdServiceImp();
			Advertisement advs = new Advertisement();
			List<Advertisement> adList = adService.adselect(advs.getAdvertisings());
			request.getSession().setAttribute("adList",adList);
			
			response.sendRedirect(request.getContextPath() + "/today/todayfirst.jsp");
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
