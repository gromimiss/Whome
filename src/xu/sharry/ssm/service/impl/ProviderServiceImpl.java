package xu.sharry.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import xu.sharry.ssm.mapper.ProviderMapper;
import xu.sharry.ssm.mapper.ProviderMapperCustom;
import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.po.ProviderExample;
import xu.sharry.ssm.service.ProviderService;

public class ProviderServiceImpl implements ProviderService {
	@Autowired
	private ProviderMapper providerMapper;
	@Autowired
	private ProviderMapperCustom providerMapperCustom;

	@Override
	public Provider findProviderByUsercode(String usercode) throws Exception {
		ProviderExample providerExample = new ProviderExample();
		ProviderExample.Criteria criteria = providerExample.createCriteria();
		criteria.andUsercodeEqualTo(usercode);
		List<Provider> providers = providerMapper
				.selectByExample(providerExample);
		if (providers != null && providers.size() == 1) {
			return providers.get(0);
		}
		return null;
	}

	@Override
	public void insertProvider(Provider provider) throws Exception {
		providerMapperCustom.insertProvider(provider);
		// providerMapper.insert(provider);

	}

	@Override
	public List<Provider> findProviderBystarnumber() throws Exception {
		List<Provider> provider = providerMapperCustom
				.findProviderBystarnumber();
		return provider;
	}

	@Override
	public int workercount(int providerId) throws Exception {
		int count = providerMapperCustom.workercount(providerId);
		return count;
	}

	@Override
	public Provider findProviderBycompanyName(String companyName)
			throws Exception {
		ProviderExample providerExample = new ProviderExample();
		ProviderExample.Criteria criteria = providerExample.createCriteria();
		criteria.andCompanyNameEqualTo(companyName);
		List<Provider> providers = providerMapper
				.selectByExample(providerExample);
		if (providers != null && providers.size() == 1) {
			return providers.get(0);
		}
		return null;
	}

	@Override
	public Provider findProviderById(int id) throws Exception {

		return providerMapper.selectByPrimaryKey(id);
	}

	@Override
	public int companycount(int providerId) throws Exception {
		ProviderExample providerExample = new ProviderExample();
		ProviderExample.Criteria criteria = providerExample.createCriteria();
		criteria.andIdEqualTo(providerId);
		int count = providerMapper.countByExample(providerExample);
		return count;
	}

}
