package com.etcxm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.dao.BookDao;
import com.etcxm.entity.Book;
@WebServlet("/bookinfoservlet")
public class BookInfoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BookDao dao=new BookDao();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String book_id = req.getParameter("book_id");
		System.out.println(book_id+"ddfdsdfdsf");
		try {
			Book bookinfo= dao.queryBookID(Long.valueOf(book_id));
			req.setAttribute("bookinfo", bookinfo);
			req.getRequestDispatcher("/bookinfo.jsp").forward(req, resp);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
