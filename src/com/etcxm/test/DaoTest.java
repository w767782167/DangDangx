package com.etcxm.test;

import java.sql.SQLException;

import com.etcxm.dao.BookDao;
import com.etcxm.page.pageResult;

public class DaoTest {
	
	
	public static void main(String[] args) throws Exception {
		
		//查询出总条数
		 BookDao dao=new BookDao();
		 long count = dao.totalCount();
		 System.out.println(count+"条");
		
	   //分页查询
		 pageResult listData = dao.queryPage(0, 3);
		 System.out.println(listData);
	}
}
