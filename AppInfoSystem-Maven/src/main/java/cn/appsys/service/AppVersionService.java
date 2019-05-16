package cn.appsys.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.FeedBack;

public interface AppVersionService {

	public List<FeedBack> selectOld();	//查询信息
}
