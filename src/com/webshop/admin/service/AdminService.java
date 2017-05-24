package com.webshop.admin.service;

import com.webshop.admin.dao.AdminDao;

/**
 * 管理员业务层类
 * @author Administrator
 *
 */
public class AdminService {
	private AdminDao adminDao;

	/**
	 * @param adminDao the adminDao to set
	 */
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
}
