package com.etcxm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/myorderservlet")
public class MyOrderServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			String getName = req.getParameter("getName");
			String moble = req.getParameter("moble");
			String tel = req.getParameter("tel");
			String inArea = req.getParameter("inArea");
			String address = req.getParameter("address");
			String pnum = req.getParameter("pnum");
			System.out.println(getName);
		}

}
