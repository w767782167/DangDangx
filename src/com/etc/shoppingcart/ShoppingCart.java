package com.etc.shoppingcart;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
	
	private List<CartItem> items=new ArrayList<CartItem>();
	public void save(CartItem item){
		//如果商品数量已存在，只要修改数量就可以
		for(CartItem item1:items){
			if(){
				
				return;
				
			}else{
				items.add(item);
			}
		}
	}

}
