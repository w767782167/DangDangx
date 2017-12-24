package com.etcxm.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.shoppingcart.CartItem;
import com.etcxm.dao.BookDao;
import com.etcxm.dao.CarDao;
import com.etcxm.page.pageResult;
import com.etcxm.util.StringUtil;
@WebServlet("/carservlet")
public class CarServlet extends HttpServlet{

	/**
	 * 
	 */
	private CarDao cardao=new CarDao();
	private BookDao dao=new BookDao();
	private static final long serialVersionUID = 1L;
	
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			//System.out.println("carServlet");
			req.setCharacterEncoding("UTF-8");
			/*try {
				List<CartItem> res = dao.queryAllcars();
				req.setAttribute("cars",res);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			//删除操作
			String cmd = req.getParameter("cmd");
			System.out.println("id++++"+cmd);
			if(cmd!=null){
			if(cmd.equals("del")){
				String id = req.getParameter("id");
				try {
					boolean flag= cardao.del(Long.valueOf(id));
					if(flag){
						System.out.println("删除成功！");
					}
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("id++++"+id);
			}
			
			}
			String currentPage=req.getParameter("currentPage");
			Integer icurrentPage=1;
			if(StringUtil.hasLength(currentPage)){
				icurrentPage=Integer.valueOf(currentPage);
			}
			Integer ipageSize=3;
			try {
				pageResult result = cardao.queryPage(icurrentPage,ipageSize);
				req.setAttribute("pageResult",result);
				
				double totalPrice = cardao.totalPrice();
				req.setAttribute("totalPrice",totalPrice);
				System.out.println(result);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			req.getRequestDispatcher("/car.jsp").forward(
					req, resp);
		}
			
		
}
