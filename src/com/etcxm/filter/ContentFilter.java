package com.etcxm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.etcxm.servlet.ContentRequestWrapper;
@WebFilter("/comment")
public class ContentFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("过滤了");
		HttpServletRequest req=(HttpServletRequest)request;
		//这是一个装饰设计模式
		ContentRequestWrapper contentReq = new ContentRequestWrapper(req);
		
		chain.doFilter(contentReq, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
}
