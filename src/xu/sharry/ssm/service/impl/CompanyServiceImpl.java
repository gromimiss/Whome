package xu.sharry.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import xu.sharry.ssm.mapper.ProviderCustomMapper;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.service.CompanyService;

public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private ProviderCustomMapper providerCustomMapper;

	@Override
	public List<Provider> findProvider(String name) throws Exception {

		List<Provider> providers = providerCustomMapper.findProviderList(name);
		return providers;
	}

}
