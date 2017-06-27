package com.mashen.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.dao.ToutiaoDaoImp;
import com.mashen.admin.domain.Admin;
import com.mashen.admin.domain.Toutiao;
import com.mashen.admin.service.AdminService;
import com.mashen.admin.service.AdminServiceImp;
import com.mashen.admin.service.ToutiaoService;
import com.mashen.admin.service.ToutiaoServiceImp;
@WebServlet("/register")
public class RegisterAction extends HttpServlet{
	private ToutiaoService service=new ToutiaoServiceImp();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		Toutiao toutiao = new Toutiao();
		toutiao.setName(req.getParameter("name"));
		toutiao.setAccount(req.getParameter("account"));
		toutiao.setPassword(req.getParameter("pwd"));
		toutiao.setHeadportrait(req.getParameter("headportrait"));
		toutiao.setEmail(req.getParameter("email"));
		toutiao.setHeadportrait(req.getParameter("hp"));
		service.register(toutiao);
		resp.sendRedirect(req.getContextPath()+"/today/userlogin.jsp");
		//req.getRequestDispatcher("/today/userlogin.jsp").forward(req, resp);
	}
	
}
