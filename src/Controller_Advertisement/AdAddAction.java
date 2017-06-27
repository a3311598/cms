package Controller_Advertisement;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mashen.admin.domain.Advertisement;
import com.mashen.admin.service.AdService;
import com.mashen.admin.service.AdServiceImp;


@WebServlet("/AdAddServlet")
@MultipartConfig(location="E:/img")
public class AdAddAction extends HttpServlet {
	AdService service= new AdServiceImp();
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		Advertisement addtest = new Advertisement();
		
		Part part = request.getPart("addadLinks");
		addtest.setAdvertisings(request.getParameter("addadvertisings"));
		addtest.setAdLinks("/adImg/"+request.getParameter("addadvertisings")+".jpg");
		service.adadd(addtest);
		part.write(addtest.getAdvertisings()+".jpg");
		
		List<Advertisement> adList = service.adselect(request.getParameter("advertisings"));
		request.getSession().setAttribute("adList",adList);
		
		System.out.println(request.getParameter("addadvertisings"));
		System.out.println(request.getParameter("addadLinks"));
		
		request.getRequestDispatcher("/today/advertisementlist.jsp").forward(request, response);
		
		doGet(request, response);
	}
}
