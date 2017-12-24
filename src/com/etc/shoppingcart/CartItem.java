package com.etc.shoppingcart;

public class CartItem {
	
	private Long id;
	private String img;
	private String name;
	private Double price;
	private Integer num;
	private Double total;
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartItem(Long id, String img, String name, Double price, Integer num) {
		super();
		this.id = id;
		this.img = img;
		this.name = name;
		this.price = price;
		this.num = num;
		this.total=this.price*this.num;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "CartItem [id=" + id + ", img=" + img + ", name=" + name
				+ ", price=" + price + ", num=" + num + ", total=" + total
				+ "]";
	}
	

	
}
	
	
	