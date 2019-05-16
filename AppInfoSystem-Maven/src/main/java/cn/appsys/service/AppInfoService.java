package cn.appsys.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.Info;

public interface AppInfoService {
public List<Info> selectAll(Info appInfo);	//动态查询APP信息
	
	public int insert(Info appInfo);	//新增app信息
	
	public int delete(Integer id);	//根据id删除信息
	
	public Info selectById(Integer id);	//根据id查询信息
	
	public int updateAll(Info appInfo);	//根据id修改全部信息
}
