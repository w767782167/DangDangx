package com.etcxm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.shoppingcart.CartItem;
import com.etcxm.entity.Book;
import com.etcxm.page.pageResult;
import com.etcxm.util.JDBCUtils;

public class BookDao {
	JDBCUtils util=new JDBCUtils();
	public BookDao(){
		util.getConnection();
	}
	public boolean addBooks(Book book) throws SQLException{
		String sql="Insert into book values(null,?,?,?,?,?,?,?,?,?,?,?)";
		List<Object> params=new ArrayList<Object>();
		params.add(book.getBook_no());
		params.add(book.getBook_img());
		params.add(book.getBook_name());
		params.add(book.getBook_info());
		params.add(book.getBook_class());
		params.add(book.getBook_autor());
		params.add(book.getBook_publish());
		params.add(book.getBook_publishtime());
		params.add(book.getBook_price());
		params.add(book.getBook_eprice());
		params.add(book.getBook_count());
		boolean flag = util.updateByPreparedStatement(sql, params);
		return flag;
	}
	//查询添加的书号是否存在，单条记录
	public Book queryBookNo(Book book) throws Exception{
		String sql="select * from book where book_no=?";
		List<Object> params=new ArrayList<Object>();
		params.add(book.getBook_no());
		Book res = util.findSimpleRefResult(sql, params,Book.class);
		return res;
	}
	//查询主页面提交上来的书籍ID单条记录
	public Book queryBookID(Long id) throws Exception{
		String sql="select * from book where book_id=?";
		List<Object> params=new ArrayList<Object>();
		params.add(id);
		Book res = util.findSimpleRefResult(sql, params,Book.class);
		return res;
	}
	//shopingcar里面的图书展览
	public pageResult queryPage(Integer currentPage,Integer pageSize) throws Exception{
		//查询结果集
		String sql="select * from book limit ?,?";
		List<Object> params=new ArrayList<Object>();
		params.add((currentPage-1)*pageSize);
		params.add(pageSize);
	    List<Book> list = util.findMoreRefResult(sql, params,Book.class);
	    //查询总页数
	    Integer totalCount =(int)totalCount();
	    //实例化pageResult 对象
	    pageResult res=new pageResult(list,totalCount,currentPage,pageSize);
	    return res;
	}
	
	//查询出BOOK总条数
	public long totalCount() throws SQLException{
		String sql="select count(*) from book";
		ResultSet res = util.query(sql,null);
		Long totalCount=null;
		if(res.next()){
			 totalCount = res.getLong(1);
		}
		return totalCount;
		
	}
	
	//查询所有书籍
	public List<Book> queryAllBooks() throws Exception{
		String sql="select * from book where book_id limit 6";
		List<Book> books = util.findMoreRefResult(sql, null, Book.class);
		return books;
	}
	//添加购物车图书
	public boolean addCartItem(CartItem cartitem) throws SQLException{
		String sql="Insert into cartitem values(null,?,?,?,?,?)";
		List<Object> params=new ArrayList<Object>();
		params.add(cartitem.getImg());
		params.add(cartitem.getName());
		params.add(cartitem.getPrice());
		params.add(cartitem.getNum());
		params.add(cartitem.getTotal());
		boolean flag = util.updateByPreparedStatement(sql, params);
		return flag;
	}
	//查询购物书里的书是否已存在
	public CartItem queryCarBookName(String name) throws Exception{
		String sql="select * from cartitem where name=?";
		List<Object> params=new ArrayList<Object>();
		params.add(name);
		CartItem res = util.findSimpleRefResult(sql, params,CartItem.class);
		return res;
	}
	//购物书里图书存在直接更新num
	public boolean upBooknum(Integer num,String name) throws SQLException{
		String sql="update cartitem set num=? where name=?"; 
		List<Object> params=new ArrayList<Object>();
		params.add(num);
		params.add(name);
		boolean flag = util.updateByPreparedStatement(sql, params);
		return flag;
		
	}
	//查询图书要更新的Count
		public Book queryBookByName(String name) throws Exception{
			String sql="select * from book where book_name=?";
			List<Object> params=new ArrayList<Object>();
			params.add(name);
			Book res = util.findSimpleRefResult(sql, params,Book.class);
			return res;
		}
	//图书库存减1
	public boolean upBookCount(Integer count,String name) throws SQLException{
		String sql="update book set book_count=? where book_name=?"; 
		List<Object> params=new ArrayList<Object>();
		params.add(count);
		params.add(name);
		boolean flag = util.updateByPreparedStatement(sql, params);
		return flag;
		
	}
	//查询所有购物车商品
	public List<CartItem> queryAllcars() throws Exception{
		String sql="select * from cartitem";
		List<CartItem> result = util.findMoreRefResult(sql, null, CartItem.class);
		return result;
	}
}
