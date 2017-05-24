package com.webshop.product.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.webshop.product.service.ProductService;
import com.webshop.product.vo.CartItem;
import com.webshop.product.vo.Product;
/**
 * 商品处理Action
 * @author Administrator
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product>{
	private Product product=new Product();
	
	public Product getModel() {
		return product;
	}
	private ProductService productService;

	/**
	 * @param productService the productService to set
	 */
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	private Integer pid;
	
	
	/**
	 * @param pid the pid to set
	 */
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	
	private Integer number;
	

	/**
	 * @param number the number to set
	 */
	public void setNumber(Integer number) {
		this.number = number;
	}

	//查询所有商品
	public String findAll(){
		List<Product> plist=productService.findAll();
		ActionContext.getContext().getValueStack().set("plist",plist);
		return "list";
	}
	
	//根据商品id查询
	public String findByPid(){
		Product product=productService.findByPid(pid);
		ActionContext.getContext().getValueStack().set("currProduct",product);
		return "detail";
	}
	
	//查看购物车
	public String showCart(){
		return "showCart";
	}
	
	//加入购物车
	public String addToCar(){
		CartItem e=new CartItem();
		e.setProduct(product);
		e.setNumber(number);
		List<CartItem> car=(List<CartItem>)ActionContext.getContext().getSession().get("car");
		if(car!=null&&car.size()>0){
			car.add(e);
		}else{
			car=new ArrayList<CartItem>();
		}
		ActionContext.getContext().getSession().put("car",car);
		return "cart";
	}
	
	//购买
	public String buy(){
		
		return "";
	}
	
	// 根据ID删除商品
	public String delete() {
		product = productService.findByPid(product.getPid());
		productService.delete(product);
		return "delete";
	}

	// 保存商品
	public String save() throws IOException {
		productService.save(product);
		return "save";
	}

	// 编辑商品
	public String edit() {
		product = productService.findByPid(product.getPid());
		return "edit";
	}

	// 更新商品
	public String update() throws IOException {
		productService.update(product);
		return "update";
	}
}
