package com.webshop.index.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.webshop.product.service.ProductService;
import com.webshop.product.vo.Product;

/**
 * 登录处理Action
 * @author Administrator
 *
 */
public class IndexAction extends ActionSupport{
	private ProductService productService;

	/**
	 * @param productService the productService to set
	 */
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	//跳转到登录页面
	public String login(){
		return "login";
	}
	
	//跳转到商家登录页面
	public String regist(){
		return "merchantRegist";
	}
	
	//注销当前用户
	public String logout(){
		ActionContext.getContext().getSession().remove("currUser");
		return "index";
	}
	
	//默认跳转到首页
	public String execute(){
		List<Product> plist=productService.findAll();
		//保存到值栈
		ActionContext.getContext().getSession().put("plist",plist);
		return "index";
	}
}
