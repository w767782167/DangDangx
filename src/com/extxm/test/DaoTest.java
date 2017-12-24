package com.extxm.test;

import com.etcxm.dao.BookDao;
import com.etcxm.dao.CarDao;
import com.etcxm.page.pageResult;

public class DaoTest {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		/*BookDao bk=new BookDao();
		pageResult list= bk.queryPage(5, 6);
		System.out.println(list);
		long totalCount = bk.totalCount();
		System.out.println(totalCount);*/
		/*CarDao cd=new CarDao();
		pageResult cars = cd.queryPage(1, 3);
		System.out.println(cars);*/
		CarDao cd=new CarDao();
		double totalPrice = cd.totalPrice();
		System.out.println(totalPrice);
	}

}
