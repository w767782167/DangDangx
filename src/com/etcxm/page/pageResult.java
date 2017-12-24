package com.etcxm.page;

import java.util.List;

public class pageResult {
	private List listData;
	private Integer totalCount;
	private Integer currentPage;
	private Integer pageSize;
	
	private Integer totalPage;
	private Integer prePage;
	private Integer nextPage;
	
	private PageIndex index;
	
	
	public PageIndex getIndex() {
		return index;
	}


	public void setIndex(PageIndex index) {
		this.index = index;
	}


	public pageResult() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public pageResult(List listData, Integer totalCount, Integer currentPage,
			Integer pageSize) {
		super();
		this.listData = listData;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		
		this.totalPage=this.totalCount%this.pageSize==0?
				this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
		this.prePage=this.currentPage-1>=1?this.currentPage-1:1;
		this.nextPage=this.currentPage+1<=totalPage?this.currentPage+1:totalPage;
		
		this.index=PageIndex.getPageIndex(6, this.currentPage, this.totalPage);
	}


	public List getListData() {
		return listData;
	}
	public void setListData(List listData) {
		this.listData = listData;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getPrePage() {
		return prePage;
	}
	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}
	public Integer getNextPage() {
		return nextPage;
	}
	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}


	@Override
	public String toString() {
		return "pageResult [listData=" + listData + ", totalCount="
				+ totalCount + ", currentPage=" + currentPage + ", pageSize="
				+ pageSize + ", totalPage=" + totalPage + ", prePage="
				+ prePage + ", nextPage=" + nextPage + "]\n";
	}
	
	
	

}
