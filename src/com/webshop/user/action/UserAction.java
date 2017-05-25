package com.webshop.user.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.webshop.product.service.ProductService;
import com.webshop.product.vo.Product;
import com.webshop.user.service.UserService;
import com.webshop.user.vo.User;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	//模型驱动要使用的对象
	private User user=new User();
	
	private UserService userService;
	
	/**
	 * @param userService the userService to set
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	private ProductService productService;
	
	
	/**
	 * @param productService the productService to set
	 */
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//登录方法
	public String login(){
		User currUser=userService.findUser(user);
		ActionContext.getContext().getSession().put("currUser",currUser);
		int type=userService.findType(user);
		if(type==0){//管理员
			//查找所有注册商家
			List<User> mlist=userService.findMerchant(1);
			//保存到值栈
			ActionContext.getContext().getSession().put("mlist",mlist);
			//查找所有待通过审核商家
			List<User> nmlist=userService.findMerchant(4);
			//保存到值栈
			ActionContext.getContext().getSession().put("nmlist",nmlist);
			return "admin";
		}else if(type==1){//商家
			List<Product> plist=productService.findByUid(currUser.getUid());
			//保存到值栈
			ActionContext.getContext().getSession().put("mplist",plist);
			return "merchant";
		}else if(type==2){//顾客
			return "customer";
		}else{//未找到
			this.addActionError("用户名或密码错误！");
		}
		return "customer";
	}
	
	//会员注册功能
	public String regist(){
		if(userService.findByName(user.getUsername())){
			//根据用户名未查询到用户则注册
			//类型为3代表会员注册
			user.setType(3);
			userService.regist(user);
		}else{
			this.addActionError("用户名已存在！");
			return "input";
		}
		return "customer";
	}
	
	//商家注册
	public String merchantRegist(){
		if(userService.findByName(user.getUsername())){
			//根据用户名未查询到用户则注册
			//类型为4代表会员注册
			user.setType(4);
			userService.regist(user);
		}else{
			this.addActionError("用户名已存在！");
			return "input";
		}
		//正常不跳到商家首页而是消息提示页面等待管理员审核，待改
		return "merchant";
	}
	
	//跳回商家首页
	public String merchant(){
		return "merchant";
	}
}
