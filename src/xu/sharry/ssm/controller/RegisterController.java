package xu.sharry.ssm.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import xu.sharry.ssm.exception.CustomException;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.po.ServiceArea;
import xu.sharry.ssm.po.Servicedetails;
import xu.sharry.ssm.po.User;
import xu.sharry.ssm.service.ProviderService;
import xu.sharry.ssm.service.ServiceAreaService;
import xu.sharry.ssm.service.UserService;
import xu.sharry.ssm.utils.RandomString;

@Controller
public class RegisterController {

	@Autowired
	private UserService userService;
	@Autowired
	private ProviderService providerService;
	@Autowired
	private ServiceAreaService serviceAreaService;

	@RequestMapping("/register")
	public String register(HttpServletRequest request) throws Exception {

		return "register";

	}

	@RequestMapping("/registerSubmit")
	public String userRegister(HttpServletRequest request, User user)
			throws Exception {
		String usercode = user.getUsercode();
		String password = user.getPassword();
		String repassword = request.getParameter("repassword");
		User user2 = null;
		try {
			user2 = userService.findSysUserByUserCode(usercode);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		// 取出session中的验证码（正确的验证码）
		String validateCode = (String) session.getAttribute("validateCode");

		// 取出页面的验证码
		// 输入的验证码和session的验证码进行对比
		String randomcode = request.getParameter("randomcode");
		if (randomcode != null && validateCode != null
				&& !randomcode.equals(validateCode)) {
			throw new CustomException("验证码输入错误！");
		}
		if (user2 != null) {
			throw new CustomException("用户名已存在!");
		}
		if (!password.equals(repassword)) {
			throw new CustomException("密码输入不一致！");
		}
		String salt = RandomString.getRandomString(8);
		user.setSalt(salt);
		int hashIterations = 1;
		Md5Hash md5hash = new Md5Hash(password, salt, hashIterations);
		String passwordmd5 = md5hash.toString();
		user.setPassword(passwordmd5);
		userService.insertUser(user);

		return "success";
	}

	@RequestMapping("/registerstepone")
	public String registerstepone(HttpServletRequest request, Provider provider)
			throws Exception {
		String usercode = provider.getUsercode();
		String password = provider.getPassword();
		String repassword = request.getParameter("repassword");
		HttpSession session = request.getSession();
		Provider provider2 = providerService.findProviderByUsercode(usercode);
		// 取出session中的验证码（正确的验证码）
		String validateCode = (String) session.getAttribute("validateCode");

		// 取出页面的验证码
		// 输入的验证码和session的验证码进行对比
		String randomcode = request.getParameter("randomcode");
		if (randomcode != null && validateCode != null
				&& !randomcode.equals(validateCode)) {
			throw new CustomException("验证码输入错误！");
		}
		if (provider2 != null) {
			throw new CustomException("用户名已存在!");
		}
		if (!password.equals(repassword)) {
			throw new CustomException("密码输入不一致！");
		}
		String salt = RandomString.getRandomString(8);
		provider.setSalt(salt);
		int hashIterations = 1;
		Md5Hash md5hash = new Md5Hash(password, salt, hashIterations);
		String passwordmd5 = md5hash.toString();
		provider.setPassword(passwordmd5);
		session.setAttribute("provider", provider);

		return "register-2";
	}

	@RequestMapping("/registersteptwo")
	public String registersteptwo(HttpServletRequest request,
			MultipartFile pictureFile) throws Exception {
		HttpSession session = request.getSession();
		Provider provider = (Provider) session.getAttribute("provider");
		if (pictureFile != null && pictureFile.getOriginalFilename() != null
				&& pictureFile.getOriginalFilename().length() > 0) {
			String filePath = "D:\\files\\";
			String originName = pictureFile.getOriginalFilename();
			String suffer = originName.substring(originName.lastIndexOf("."));
			String newFilename = UUID.randomUUID() + suffer;
			File file = new File(filePath + newFilename);
			pictureFile.transferTo(file);

			provider.setPic(newFilename);
			session.setAttribute("provider", provider);
		}

		return "register-3";
	}

	@RequestMapping("/registerstepthree")
	public String registerstepthree(HttpServletRequest request,
			Provider provider) throws Exception {

		HttpSession session = request.getSession();
		Provider provider2 = (Provider) session.getAttribute("provider");
		String companyAddress = provider.getCompanyAddress();
		String companyName = provider.getCompanyName();
		String companyPhone = provider.getCompanyPhone();
		String companyType = provider.getCompanyType();
		String[] serviceTypes = request.getParameterValues("serviceType");
		provider2.setCompanyAddress(companyAddress);
		provider2.setCompanyName(companyName);
		provider2.setCompanyPhone(companyPhone);
		provider2.setCompanyType(companyType);

		providerService.insertProvider(provider2);
		for (String serviceType : serviceTypes) {
			ServiceArea serviceArea = serviceAreaService
					.findServiceAreaByName(serviceType);
			int serviceId = serviceArea.getId();
			int providerId = provider2.getId();
			Servicedetails servicedetails = new Servicedetails(providerId,
					serviceId);
			serviceAreaService.insertServiceDetails(servicedetails);
		}

		return "register-4";
	}
}
