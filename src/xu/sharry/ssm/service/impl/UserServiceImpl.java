package xu.sharry.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import xu.sharry.ssm.mapper.UserMapper;
import xu.sharry.ssm.po.User;
import xu.sharry.ssm.po.UserExample;
import xu.sharry.ssm.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findSysUserByUserCode(String usercode) throws Exception {
		UserExample userExample = new UserExample();
		UserExample.Criteria criteria = userExample.createCriteria();
		criteria.andUsercodeEqualTo(usercode);
		List<User> user = userMapper.selectByExample(userExample);
		if (user != null && user.size() == 1) {
			return user.get(0);
		}
		return null;

	}

	@Override
	public void insertUser(User user) throws Exception {
		userMapper.insert(user);

	}

}
