package xu.sharry.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import xu.sharry.ssm.po.ActiveUser;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.po.ServiceArea;
import xu.sharry.ssm.po.Servicedetails;
import xu.sharry.ssm.service.ProviderService;
import xu.sharry.ssm.service.ServiceAreaService;

@Controller
public class FirstAction {
	@Autowired
	private ProviderService providerService;
	@Autowired
	private ServiceAreaService serviceAreaService;

	@RequestMapping("/first")
	public String first(HttpServletRequest request) throws Exception {
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		HttpSession session = request.getSession();

		session.setAttribute("activeUser", activeUser);
		List<Provider> provider = providerService.findProviderBystarnumber();

		System.out.println(provider);
		session.setAttribute("providerlist", provider);

		// List<Integer> workercount=new ArrayList<Integer>();
		// for(Provider providers:provider){
		// int providerId=providers.getId();
		// int count=providerService.workercount(providerId);
		// workercount.add(count);
		//
		//
		// }
		// session.setAttribute("workercount", workercount);
		return "/first";

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) throws Exception {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();

		return "/first";

	}

	@RequestMapping("/servicershow")
	public String servicershow(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Provider provider = providerService.findProviderById(id);
		HttpSession session = request.getSession();
		session.setAttribute("providerss", provider);
		int id2 = provider.getId();
		int count = providerService.workercount(id2);
		session.setAttribute("count", count);

		List<Servicedetails> serviceDetails = serviceAreaService
				.findServiceDetailsByProvideid(id2);
		List<String> servicenamelist = new ArrayList<String>();
		for (Servicedetails servicedetail : serviceDetails) {
			int serviceid = servicedetail.getServiceId();
			ServiceArea serviceArea = serviceAreaService
					.findServiceAreaById(serviceid);
			String name = serviceArea.getName();
			servicenamelist.add(name);
			session.setAttribute("servicenamelist", servicenamelist);
			System.out.println(servicenamelist);
		}
		return "/company";

	}
}
