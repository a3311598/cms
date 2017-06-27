package com.mashen.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashen.admin.domain.Toutiao;
import com.mashen.admin.service.ToutiaoService;
import com.mashen.admin.service.ToutiaoServiceImp;

public class UpdateAction extends HttpServlet{
	ToutiaoService service=new ToutiaoServiceImp();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Toutiao toutiao=new Toutiao();
		req.setCharacterEncoding("utf-8");
		
	}
	
}
