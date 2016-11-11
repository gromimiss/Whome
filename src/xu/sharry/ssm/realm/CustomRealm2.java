package xu.sharry.ssm.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import xu.sharry.ssm.po.ActiveUser;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.service.ProviderService;

public class CustomRealm2 extends AuthorizingRealm {
	@Autowired
	private ProviderService providerService;

	public void setName(String name) {

		super.setName("customRealm");
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		String userCode = (String) token.getPrincipal();
		Provider provider = null;
		try {
			provider = providerService.findProviderByUsercode(userCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (provider == null) {
			return null;
		}
		String password = provider.getPassword();
		String salt = provider.getSalt();

		ActiveUser activeUser = new ActiveUser();
		activeUser.setUserid(provider.getId());
		activeUser.setUsercode(provider.getUsercode());

		// 将activeUser设置simpleAuthenticationInfo
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
				activeUser, password, ByteSource.Util.bytes(salt),
				this.getName());

		return simpleAuthenticationInfo;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {

		return null;
	}

}
