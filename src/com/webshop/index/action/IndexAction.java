package com.webshop.index.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 登录处理Action
 * @author Administrator
 *
 */
public class IndexAction extends ActionSupport{
	
	public String login(){
		return "login";
	}
	
	//默认跳转到首页
	public String execute(){
		return "index";
	}
}
