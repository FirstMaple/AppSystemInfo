package cn.appsys.dao;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.BackendUser;

public interface BackendUserMapper {
	
    BackendUser getAll(@Param(value="name")String name,@Param(value="pwd")String pwd);	//查询管理员数据
}