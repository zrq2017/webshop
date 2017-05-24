package com.webshop.product.action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.webshop.product.service.ProductService;
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
	
	//查询所有商品
	public String findAll(){
		List<Product> plist=productService.findAll();
		ActionContext.getContext().getValueStack().set("plist",plist);
		return "list";
	}
	
	//加入购物车
	public String addToCar(){
		
		return "";
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
