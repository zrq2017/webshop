package com.webshop.user.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
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
	
	//登录方法
	public String login(){
		int type=userService.findType(user);
		if(type==0){//管理员
			return "admin";
		}else if(type==1){//商家
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
		return "merchant";
	}
}
