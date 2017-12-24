package com.etcxm.dao;
import com.etcxm.util.JDBCUtils;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.shoppingcart.CartItem;
import com.etcxm.page.pageResult;

public class CarDao {
	
	private JDBCUtils util=new JDBCUtils();
	
		public CarDao(){
			util.getConnection();
		}
		
	
	//查询出购物车商品数据源
		public pageResult queryPage(Integer currentPage,Integer pageSize) throws Exception{
			//查询结果集
			String sql="select * from cartitem limit ?,?";
			List<Object> params=new ArrayList<Object>();
			params.add((currentPage-1)*pageSize);
			params.add(pageSize);
		    List<CartItem> list = util.findMoreRefResult(sql, params,CartItem.class);
		    //查询总页数
		    Integer totalCount=(int)totalCount();
		    //实例化pageResult 对象
		    pageResult res=new pageResult(list,totalCount,currentPage,pageSize);
		    return res;
		}
		//查询出购物车总条数
		public long totalCount() throws SQLException{
			String sql="select count(*) from cartitem";
			ResultSet res = util.query(sql,null);
			Long totalCount=null;
			if(res.next()){
				 totalCount = res.getLong(1);
			}
			return totalCount;
			
		}
		//查询购物车商品总价钱
		public double totalPrice() throws SQLException{
			String sql="select sum(total) from cartitem";
			ResultSet res = util.query(sql,null);
			Double totalPrice=null;
			if(res.next()){
				totalPrice=res.getDouble(1);
			}
			return totalPrice;
		}
		//删除操作
		public boolean del(Long id) throws SQLException{
			String sql="delete from cartitem where id=?";
			List<Object> params=new ArrayList<Object>();
			params.add(id);
			boolean flag = util.updateByPreparedStatement(sql, params);
			return flag;
			
		}
}
