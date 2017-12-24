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
import com.etcxm.entity.Comment;
@WebServlet("/commentshow")
public class CommentShowServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao=new UserDao();
	private BookDao bkdao=new BookDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("commentshowsrvlet");
		//***********不用bookinfoservlet处理，直接用这个处理bookinfo信息
		String book_id = req.getParameter("book_id");
		System.out.println(book_id+"ddfdsdfdsf");
		
		
		try {
			Book bookinfo= bkdao.queryBookID(Long.valueOf(book_id));//bookinfo
			req.setAttribute("bookinfo", bookinfo);
			//******************************
			List<Comment> comments= dao.showComment();
			req.setAttribute("comments", comments);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/bookinfo.jsp").forward(req, resp);
	}

}
