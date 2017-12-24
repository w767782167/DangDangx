package com.etcxm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.dao.BookDao;
import com.etcxm.dao.UserDao;
import com.etcxm.entity.Book;
import com.etcxm.entity.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BookDao bkdao=new BookDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("username");
		String pwd = req.getParameter("password");
		UserDao dao=new UserDao();
		
		System.out.println("lgoinservelt"+name+""+pwd);
		User user=new User(null,name,pwd);
		try {
			User userLogin = dao.login(user);
			if(userLogin!=null){
				//req.setAttribute("user",user);
				Long user_id = userLogin.getUser_id();
				req.getSession().setAttribute("user_id",user_id);
				req.getSession().setAttribute("user",name);
				List<Book> books= bkdao.queryAllBooks();
				req.setAttribute("books", books);
				req.getRequestDispatcher("/index.jsp").forward(req, resp);
			}else{
			     String res="用户名或密码不正确！";
			     req.setAttribute("res",res);
				req.getRequestDispatcher("/login.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
