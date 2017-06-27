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
@WebServlet("/searchNewsByCatId")
public class SearchNewsByCatIdAction extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		News news = new News();
		news.setCategoryid(Integer.parseInt(req.getParameter("id")));
		NewsService service=new NewsServiceImp();
		List<News> newslist=service.search(news);
		req.setAttribute("newList", newslist);
		req.getRequestDispatcher("/today/todayfirst.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
