package com.webshop.product.vo;
/**
 * 购物车购物项类
 * @author Administrator
 *
 */
public class CartItem {
	private int id;
	//商品项
	private Product product;
	private int pid;
	//数量
	private int number;
	//商品描述
	private String description;
	//小计
	private double totalPrice;
	
	/**
	 * @return the pid
	 */
	public int getPid() {
		return pid;
	}
	/**
	 * @param pid the pid to set
	 */
	public void setPid(int pid) {
		if(product!=null){
			this.pid = product.getPid();
		}else{
			this.pid = pid;
		}
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}
	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}
	/**
	 * @return the number
	 */
	public int getNumber() {
		return number;
	}
	/**
	 * @param number the number to set
	 */
	public void setNumber(int number) {
		this.number = number;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the totalPrice
	 */
	public double getTotalPrice() {
		return number*product.getPrice();
	}
}

