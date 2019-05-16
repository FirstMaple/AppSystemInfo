package cn.appsys.service;

import cn.appsys.pojo.BackendUser;

public interface BackendUserService {
	
	BackendUser getAll(String name,String pwd);	//查询管理员数据
	
}
