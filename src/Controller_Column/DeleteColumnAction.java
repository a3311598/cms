package Controller_Column;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.service.ColumnService;
import com.mashen.admin.service.ColumnServiceImp;


/**
 * Servlet implementation class DeleteNewsAction
 */
@WebServlet("/deleteColumn")
public class DeleteColumnAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ColumnService service = new ColumnServiceImp();
		
		int id = Integer.parseInt(request.getParameter("id"));
		service.deleteColumn(id);
		request.getRequestDispatcher("/searchColumn").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
