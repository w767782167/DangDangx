package com.etcxm.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.dao.UserDao;
import com.etcxm.entity.User;
import com.etcxm.util.StringUtil;
@WebServlet("/regservlet")
public class regServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao=new UserDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("reg===============");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		/*//验证用户名是否存在
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
		System.out.println("dfsdfsdfsdfds");*/
		//验证码校验
		String randomCode = req.getParameter("randomCode");//获取用户输入验证码
		System.out.println(randomCode+"dsfdsfsf");
		//session的验证码
		String sessionRandomCode = (String)req.getSession().getAttribute("RANDOMCODE_IN_SESSION");
		System.out.println(sessionRandomCode+"dsfdsfsf");
		//用户和session里面的相比较
		if(!StringUtil.hasLength(randomCode)||!StringUtil.hasLength(sessionRandomCode)){
			req.setAttribute("errorMsg","亲，验证码不能为空或验证码过时");
			req.getRequestDispatcher("/register.jsp").forward(req, resp);
			return;
		}
		if(!randomCode.equals(sessionRandomCode)){
			req.setAttribute("errorMsg","亲，验证码错误，请重新输入");
			req.getRequestDispatcher("/register.jsp").forward(req, resp);
			return;
		}
		String num = req.getParameter("num");
		String password = req.getParameter("password");
		boolean flag=false;
		User user=new User(null,num,password);
		try {
		    flag = dao.reg(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(flag){
			resp.sendRedirect(req.getContextPath()+"/login.jsp");
		}
	}

}
