package Controller_Advertisement;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.domain.Advertisement;
import com.mashen.admin.service.AdService;
import com.mashen.admin.service.AdServiceImp;

@WebServlet("/AdaboutServlet")
public class AdSearchAvtion extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		AdService service= new AdServiceImp();
		Advertisement advs = new Advertisement();
		advs.setAdvertisings(request.getParameter("advertisings"));
		List<Advertisement> adList = service.adselect(advs.getAdvertisings());
		request.getSession().setAttribute("adList",adList);
		request.getRequestDispatcher("/today/advertisementlist.jsp").forward(request, response);
		doGet(request, response);
	}
}
