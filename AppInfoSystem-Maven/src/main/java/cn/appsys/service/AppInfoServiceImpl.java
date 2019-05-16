package cn.appsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.appsys.dao.AppInfoMapper;
import cn.appsys.pojo.Info;

@Service(value="appInfo")
public class AppInfoServiceImpl implements AppInfoService {

	@Autowired
	private AppInfoMapper appInfoMapper;

	@Override
	public List<Info> selectAll(Info appInfo) {
		// TODO Auto-generated method stub
		return appInfoMapper.selectAll(appInfo);
	}

	@Override
	public int insert(Info appInfo) {
		// TODO Auto-generated method stub
		return appInfoMapper.insert(appInfo);
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return appInfoMapper.delete(id);
	}

	@Override
	public Info selectById(Integer id) {
		// TODO Auto-generated method stub
		return appInfoMapper.selectById(id);
	}

	@Override
	public int updateAll(Info appInfo) {
		// TODO Auto-generated method stub
		return appInfoMapper.updateAll(appInfo);
	}
	
	

}
