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
import com.webshop.user.vo.User;
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
		Product p=productService.findByPid(product.getPid());
		ActionContext.getContext().getValueStack().set("currProduct",p);
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
			for(int i=0;i<car.size();i++){
//				if(car.get(i).getProduct().getPid()==){
//					
//				}
			}
		}else{
			car=new ArrayList<CartItem>();
			car.add(e);
		}
		ActionContext.getContext().getSession().put("car",car);
		return "cart";
	}
	
	//购买
	public String buy(){
		CartItem e=new CartItem();
		e.setProduct(product);
		e.setNumber(number);
		//保存已购买的订单信息
		productService.save(e);
		this.addActionMessage("购买成功！");
		return "message";
	}
	//设置商家商品列表
	public void setList(){
		User u=(User)ActionContext.getContext().getSession().get("currUser");
		List<Product> plist=productService.findByUid(u.getUid());
		//保存到值栈
		ActionContext.getContext().getSession().put("mplist",plist);
	}
	
	//跳转到商品添加页
	public String add(){
		return "add";
	}
	
	// 根据ID删除商品
	public String delete() {
		product = productService.findByPid(product.getPid());
		productService.delete(product);
		setList();
		return "merchant";
	}

	// 保存商品
	public String save() throws IOException {
		Product p = productService.findByPid(product.getPid());
		if(p!=null){
			//根据ID查询到商品，则更新
			productService.update(product);
		}else{
			productService.save(product);
		}
		setList();
		return "merchant";
	}

	// 编辑商品
	public String edit() {
		product = productService.findByPid(product.getPid());
		ActionContext.getContext().getValueStack().set("editProduct", product);
		return "add";
	}

	// 更新商品
	public String update() throws IOException {
		productService.update(product);
		return "update";
	}
}
