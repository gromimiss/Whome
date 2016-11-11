package xu.sharry.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import xu.sharry.ssm.exception.CustomException;
import xu.sharry.ssm.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	// 登录提交地址，和applicationContext-shiro.xml中配置的loginurl一致

	@RequestMapping("login")
	public String loginSubmit(HttpServletRequest request) throws Exception {
		// 如果登录失败，从request中获取认证异常信息,shiroLoginFailure就是shiro异常类的权限类名
		String exceptionClassName = (String) request
				.getAttribute("shiroLoginFailure");

		// 根据shiro返回的异常类路径判断，抛出指定异常信息
		if (exceptionClassName != null) {
			if (UnknownAccountException.class.getName().equals(
					exceptionClassName)) {
				// 最终会抛给异常处理器
				throw new CustomException("账号不存在");
			} else if (IncorrectCredentialsException.class.getName().equals(
					exceptionClassName)) {
				throw new CustomException("用户名/密码错误");
			} else {
				throw new Exception();// 最终在异常处理器生成未知错误
			}
		}
		// 此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
		// 登录失败还到login页面
		return "login";
	}

}
