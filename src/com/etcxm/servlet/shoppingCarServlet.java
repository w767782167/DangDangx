package com.etcxm.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.shoppingcart.CartItem;
import com.etcxm.dao.BookDao;
import com.etcxm.entity.Book;
import com.etcxm.page.pageResult;
import com.etcxm.util.StringUtil;
@WebServlet("/shoppingcarservlet")
public class shoppingCarServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BookDao dao=new BookDao();
	CartItem cartitem;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//购物框内容
		req.setCharacterEncoding("UTF-8");
		String book_id=req.getParameter("book_id");
		String book_img=req.getParameter("book_img");
		String book_name= req.getParameter("book_name");
		String book_info=req.getParameter("book_info");
		String book_price=req.getParameter("book_price");
		String book_num=req.getParameter("num");
		double price=0;
		double num=0;
		double total=0;
		if(book_price!=null){
		price= Double.valueOf(book_price);
		}
		if(book_num!=null){
		num= Double.valueOf(book_num);
		}
		if(book_price!=null&&book_num!=null){
		total=price*num;//!!!!!!!
		}
		
		cartitem=new CartItem();
		
		//实例化CartItem购物对象
		if(book_id!=null){
        cartitem.setId(Long.valueOf(book_id));
		}
		cartitem.setImg(book_img);
		cartitem.setName(book_name);
		
		if(book_price!=null){
		cartitem.setPrice(Double.valueOf(book_price));
		}
		if(book_num!=null){
		cartitem.setNum(Integer.valueOf(book_num));
		}
		cartitem.setTotal(total);//!!!!!!!!!!
		req.setAttribute("book_name",book_name);
		req.setAttribute("book_info",book_info);
		req.setAttribute("book_price",book_price);
		req.setAttribute("book_num",book_num);
		req.setAttribute("total",total);
		
		try {
			CartItem CarBookName = dao.queryCarBookName(book_name);
			if(CarBookName==null){
				dao.addCartItem(cartitem);
			}else{
				Integer oldNum = CarBookName.getNum();
				dao.upBooknum(oldNum+Integer.valueOf(book_num),book_name);
				
				Book book = dao.queryBookByName(book_name);
				Integer book_count = book.getBook_count();
				System.out.println("book_countbook_count"+book_count);
				dao.upBookCount(book_count-Integer.valueOf(book_num),book_name);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		System.out.println("买你"+book_num);
		String currentPage=req.getParameter("currentPage");
		Integer icurrentPage=1;
		if(StringUtil.hasLength(currentPage)){
			icurrentPage=Integer.valueOf(currentPage);
		}
		Integer ipageSize=6;
		try {
			pageResult result = dao.queryPage(icurrentPage,ipageSize);
			req.setAttribute("pageResult",result);
		    req.setAttribute("cartitem", cartitem);
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/shoppingcar.jsp").forward(
				req, resp);
	}

}
