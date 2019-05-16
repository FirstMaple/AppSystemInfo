package cn.appsys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.appsys.dao.BackendUserMapper;
import cn.appsys.pojo.BackendUser;
@Service(value="backendUser")
public class BackendUserServiceImpl implements BackendUserService {

	@Autowired
	private BackendUserMapper backendUserMapper;

	/**
	 * 查询管理员数据
	 */
	@Override
	public BackendUser getAll(String name, String pwd) {
		// TODO Auto-generated method stub
		return backendUserMapper.getAll(name,pwd);
	}
	
	
	
}
