package com.etcxm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.dao.UserDao;
import com.etcxm.entity.User;
@WebServlet("/regcheck")
public class RegCheck extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao=new UserDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		//验证用户名是否存在
				String username = req.getParameter("username1");
				System.out.println(username+"fdsfsd");
					try {
						User user = dao.checkUserName(username);
						PrintWriter out = resp.getWriter();
						if(user!=null){
							out.print("亲，用户名已存在");
							System.out.println("亲，用户名已存在");
							return;
						}
					} catch (Exception e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				System.out.println("dfsdfsdfsdfds");
	}

}
