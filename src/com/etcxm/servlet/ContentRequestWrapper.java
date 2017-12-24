package com.etcxm.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import com.etcxm.util.FilterUtil;

//包装过滤请求对象
public class ContentRequestWrapper extends HttpServletRequestWrapper {

	//这是设计模式  装饰设计模式
	public ContentRequestWrapper(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String getParameter(String name) {
		// TODO Auto-generated method stub
		if(name.equals("comment") || name.equals("user")){
			return FilterUtil.filter(super.getParameter(name));
		}
		return super.getParameter(name);
	}

}
