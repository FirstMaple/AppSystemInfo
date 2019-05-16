package cn.appsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.appsys.dao.AppVersionMapper;
import cn.appsys.pojo.FeedBack;
@Service(value="appVersion")
public class AppVersionServiceImpl implements AppVersionService {

	@Autowired
	private AppVersionMapper appVersionMapper;
	
	/**
	 * 查询历史信息
	 */
	@Override
	public List<FeedBack> selectOld() {
		// TODO Auto-generated method stub
		return appVersionMapper.selectOld();
	}

	

}
