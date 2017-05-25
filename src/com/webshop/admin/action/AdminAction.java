package com.webshop.admin.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.webshop.admin.service.AdminService;
import com.webshop.user.service.UserService;
import com.webshop.user.vo.User;
/**
 * 管理员处理Action
 * @author Administrator
 *
 */
public class AdminAction extends ActionSupport {
	private AdminService adminService;

	/**
	 * @param adminService the adminService to set
	 */
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	private UserService userService;
	/**
	 * @param userService the userService to set
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//接受用户id
	private Integer uid;

	/**
	 * @param uid the uid to set
	 */
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	//商家通过审核，由类型4设置为1
	public String pass(){
		User u=userService.findByUid(uid);
		//先删除原表的商家
		userService.delete(u);
		u.setType(1);
		//设置类型后保存当前商家
		userService.save(u);
		setList();
		return "admin";
	}
	
	//管理员拒绝通过申请
	public String refuse(){
		User u=userService.findByUid(uid);
		userService.delete(u);
		setList();
		return "admin";
	}
	
	//设置会话中已审核及未审核商家,及会员列表
	public void setList(){
		//查找所有注册商家
		List<User> mlist=userService.findMerchant(1);
		//保存到值栈
		ActionContext.getContext().getSession().put("mlist",mlist);
		//查找所有待通过审核商家
		List<User> nmlist=userService.findMerchant(4);
		//保存到值栈
		ActionContext.getContext().getSession().put("nmlist",nmlist);
		//查找所有会员
		List<User> clist=userService.findMerchant(2);
		//保存到值栈
		ActionContext.getContext().getSession().put("clist",clist);
	}
}
