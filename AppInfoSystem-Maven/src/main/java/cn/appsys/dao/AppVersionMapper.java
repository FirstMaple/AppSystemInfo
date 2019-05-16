package cn.appsys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.FeedBack;

public interface AppVersionMapper {
	
	public List<FeedBack> selectOld();	//查询信息
}