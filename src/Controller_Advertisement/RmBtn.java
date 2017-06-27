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



@WebServlet("/RmBtn")
public class RmBtn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdService rmdao = new AdServiceImp();
       
    public RmBtn() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Advertisement rmtest = new Advertisement();
		rmtest.setAdvertisings(request.getParameter("RmOne"));
		System.out.println(request.getParameter("RmOne"));
		rmdao.adremove(rmtest);
		
		AdService service =new AdServiceImp();
		List<Advertisement> adList = service.adselect(request.getParameter("advertisings"));
		request.getSession().setAttribute("adList",adList);
		
		request.getRequestDispatcher("/today/advertisementlist.jsp").forward(request,response);
		System.out.println(request.getParameter("Rmadvertisings"));
		System.out.println("广告删除");
		doGet(request, response);
		
		doGet(request, response);
	}

}
