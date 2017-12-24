package com.etcxm.entity;

import java.io.Serializable;

public class Book implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private long book_id;
	private String book_no;
	private String book_img;
	private String book_name;
	private String book_info;
	private String book_class;
	private String book_autor;
	private String book_publish;
	private String book_publishtime;
	private Double book_price;
	private Double book_eprice;
	private Double cost_price;
	private Integer book_count;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(long book_id, String book_no, String book_img,
			String book_name, String book_info, String book_class,
			String book_autor, String book_publish, String book_publishtime,
			Double book_price, Double book_eprice, Double cost_price,Integer book_count) {
		super();
		this.book_id = book_id;
		this.book_no = book_no;
		this.book_img = book_img;
		this.book_name = book_name;
		this.book_info = book_info;
		this.book_class = book_class;
		this.book_autor = book_autor;
		this.book_publish = book_publish;
		this.book_publishtime = book_publishtime;
		this.book_price = book_price;
		this.book_eprice = book_eprice;
		this.cost_price=cost_price;
		this.book_count = book_count;
	}
	public long getBook_id() {
		return book_id;
	}
	public void setBook_id(long book_id) {
		this.book_id = book_id;
	}
	public String getBook_no() {
		return book_no;
	}
	public void setBook_no(String book_no) {
		this.book_no = book_no;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_info() {
		return book_info;
	}
	public void setBook_info(String book_info) {
		this.book_info = book_info;
	}
	public String getBook_class() {
		return book_class;
	}
	public void setBook_class(String book_class) {
		this.book_class = book_class;
	}
	public String getBook_autor() {
		return book_autor;
	}
	public void setBook_autor(String book_autor) {
		this.book_autor = book_autor;
	}
	public String getBook_publish() {
		return book_publish;
	}
	public void setBook_publish(String book_publish) {
		this.book_publish = book_publish;
	}
	public String getBook_publishtime() {
		return book_publishtime;
	}
	public void setBook_publishtime(String book_publishtime) {
		this.book_publishtime = book_publishtime;
	}
	public Double getBook_price() {
		return book_price;
	}
	public void setBook_price(Double book_price) {
		this.book_price = book_price;
	}
	public Double getBook_eprice() {
		return book_eprice;
	}
	public void setBook_eprice(Double book_eprice) {
		this.book_eprice = book_eprice;
	}
	public Double getCost_price() {
		return cost_price;
	}
	public void setCost_price(Double cost_price) {
		this.cost_price = cost_price;
	}
	public Integer getBook_count() {
		return book_count;
	}
	public void setBook_count(Integer book_count) {
		this.book_count = book_count;
	}
	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", book_no=" + book_no
				+ ", book_img=" + book_img + ", book_name=" + book_name
				+ ", book_info=" + book_info + ", book_class=" + book_class
				+ ", book_autor=" + book_autor + ", book_publish="
				+ book_publish + ", book_publishtime=" + book_publishtime
				+ ", book_price=" + book_price + ", book_eprice=" + book_eprice
				+ ", cost_price=" + cost_price + ", book_count=" + book_count
				+ "]";
	}
	
	
	
	

}
