package com.etcxm.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.dao.UserDao;
import com.etcxm.entity.Comment;
import com.etcxm.util.StringUtil;
@WebServlet("/comment")
public class CommentServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao dao=new UserDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		System.out.println("Comment");
		//验证表单是否重复提交
		String token=req.getParameter("token");
		String sessiontoken=(String)req.getSession().getAttribute("TOKEN_IN_SESSION");
		if(StringUtil.hasLength(token)){
			if(token.equals(sessiontoken)){
				req.getSession().removeAttribute("TOKEN_IN_SESSION");
			}else{
				System.out.println("手贱");
				return;
			}
		}
		Long user_id = Long.valueOf((req.getParameter("user_id").toString()));
		String comment = req.getParameter("comment");
		String user = req.getParameter("user");
		String timer = req.getParameter("timer");
		boolean flag=false; 
		Comment comment2 = new Comment(null, user_id, comment,timer);
		try {
			flag = dao.comment(comment2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(flag){
			req.setAttribute("comment",comment2);
			req.getRequestDispatcher("/commentshow").forward(req, resp);
		}
	}

}
