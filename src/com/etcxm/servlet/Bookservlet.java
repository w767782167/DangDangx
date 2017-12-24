package com.etcxm.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.ws.WebServiceRef;

import org.apache.commons.io.FilenameUtils;

import com.etcxm.dao.BookDao;
import com.etcxm.entity.Book;
import com.etcxm.exception.UploadException.UploadException;
import com.etcxm.util.UploadUtils;
@WebServlet("/bookservlet")
@MultipartConfig
public class Bookservlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BookDao dao=new BookDao();
	private Book book=new Book();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		  //System.out.println("BookServlet");
		req.setCharacterEncoding("UTF-8");
		String book_no = req.getParameter("book_no");
		String book_name = req.getParameter("bookname");
		String book_info = req.getParameter("bookinfo");
		String book_class = req.getParameter("bookclass");
		String book_autor = req.getParameter("bookautor");
		String book_publish = req.getParameter("bookpublish");
		//---------------
		 String year=req.getParameter("year");
		 String month=req.getParameter("month");
		 String day=req.getParameter("day");
		 String book_publishtime=year+"-"+month+"-"+day;
		 System.out.println(book_publishtime+"dsfdsfsdfsfdsf");
		//---------------
		//String book_publishtime = req.getParameter("publishtime");
		String book_price= req.getParameter("price");
		String book_eprice = req.getParameter("eprice");
		String cost_price=req.getParameter("costprice");
		
		System.out.println("cost_price"+cost_price);
		String book_count = req.getParameter("bookcount");
		book.setBook_no(book_no);
		
		book.setBook_name(book_name);
		book.setBook_info(book_info);
		book.setBook_class(book_class);
		book.setBook_autor(book_autor);
		book.setBook_publish(book_publish);
		book.setBook_publishtime(book_publishtime);
		book.setBook_price(Double.valueOf(book_price));
		book.setBook_eprice(Double.valueOf(book_eprice));
		book.setBook_count(Integer.valueOf(book_count));
/*		try{
		UploadUtils.upload(req);
		}catch(Exception e){
			e.printStackTrace();
			req.setAttribute("errorMsg",e.getMessage());
			req.getRequestDispatcher("/publish.jsp").forward(req, resp);
		}*/
		//相当于Apach上传中的fileItem元素
		Part part = req.getPart("caseImage");
		String header = part.getHeader("Content-Disposition");
		String filename= org.apache.commons.lang3.StringUtils.substringBetween(header,"filename=\"", "\"");
		System.out.println(filename);
		//通过UUID来给文件重命名
		String uuidstr = UUID.randomUUID().toString();
		String extension = FilenameUtils.getExtension(filename);
		String strname=uuidstr+"."+extension;
		System.out.println(strname);
		//把文件写到指定磁盘
		 //part.write("E:/Workspaces/Webserver/DangDangx/WebRoot/upload/"+strname);
		 part.write("E:/tomcat/apache-tomcat-7.0.57-windows-x64/apache-tomcat-7.0.57/webapps/DangDangx/upload/"+strname);
		 String book_img="upload/"+strname;
		 System.out.println(book_img);
		 book.setBook_img(book_img);
		 boolean flag=false;
		 try {
			 Book isexit= dao.queryBookNo(book);
			 if(isexit!=null){
				 throw new UploadException("亲，上传的图书已存在，请重新输入");
			 }
			 flag = dao.addBooks(book);
			 
			
		}catch(UploadException e){
			//throw e;
			req.setAttribute("errorMsg",e.getMessage());
			flag=false;
		}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 if(flag){
			 System.out.println("增加图书成功！");
		 }
		// req.getRequestDispatcher("/publish.jsp").forward(req, resp);
		 req.getRequestDispatcher("/shoppingcarservlet").forward(req, resp);
		 
	}

}
