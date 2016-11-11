package xu.sharry.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.service.ProviderService;

@Controller
public class SearchController {

	@Autowired
	private ProviderService providerService;

	@RequestMapping("/searchProvider")
	public String searchProvider(HttpServletRequest request) throws Exception {

		String companyName = request.getParameter("companyName");

		Provider provider2 = providerService
				.findProviderBycompanyName(companyName);
		HttpSession session = request.getSession();
		session.setAttribute("provider2", provider2);
		int id = provider2.getId();
		int count = providerService.companycount(id);
		session.setAttribute("count2", count);

		return "/servicer";

	}

}
