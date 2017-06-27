package com.mashen.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mashen.admin.domain.Toutiao;
import com.mashen.admin.service.ToutiaoService;
import com.mashen.admin.service.ToutiaoServiceImp;
@WebServlet({ "/adminlogin","/userlogin" })
public class LoginAction extends HttpServlet{
	private ToutiaoService service=new ToutiaoServiceImp();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取表单输入参数
		req.removeAttribute("msg");
		String account=req.getParameter("account");
		String pwd=req.getParameter("pwd");
		String headportrait=req.getParameter("headportrait");
		//调用相应service方法，判断用户状态
		Toutiao toutiao=service.checkLogin(account, pwd);
		if (toutiao!=null) {
			req.getSession().setAttribute("pwd", pwd);
			req.getSession().setAttribute("account", account);
			req.getSession().setAttribute("headportrait", headportrait);
			//根据角色进行跳转
			if(req.getParameter("role").equals("admin")){
				req.getSession().setAttribute("admin", "admin");
				resp.sendRedirect(req.getContextPath()+"/today/index.jsp");
			}
			else if(req.getParameter("role").equals("normal")){
				resp.sendRedirect(req.getContextPath()+"/today/todayfirst.jsp");
				}
		}else {
			
			if(req.getParameter("role").equals("admin")){
				req.getSession().setAttribute("msg", "验证失败");
				req.getRequestDispatcher("/managerlogin").forward(req, resp);
			}
			else if(req.getParameter("role").equals("normal")){
				req.getSession().setAttribute("msg", "验证失败");
				req.getRequestDispatcher("/today/userlogin.jsp").forward(req, resp);
				}
		}
		

	}
}

