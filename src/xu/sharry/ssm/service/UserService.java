package xu.sharry.ssm.service;

import xu.sharry.ssm.po.User;

public interface UserService {
  public User findSysUserByUserCode(String usercode) throws Exception;
  
  public void insertUser(User user) throws Exception;
}
