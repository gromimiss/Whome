package xu.sharry.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import xu.sharry.ssm.mapper.ServiceAreaMapper;
import xu.sharry.ssm.mapper.ServicedetailsMapper;
import xu.sharry.ssm.po.ServiceArea;
import xu.sharry.ssm.po.ServiceAreaExample;
import xu.sharry.ssm.po.Servicedetails;
import xu.sharry.ssm.po.ServicedetailsExample;
import xu.sharry.ssm.service.ServiceAreaService;

public class ServiceAreaServiceImpl implements ServiceAreaService {
	@Autowired
	private ServiceAreaMapper serviceAreaMapper;
	@Autowired
	private ServicedetailsMapper servicedetailsMapper;

	@Override
	public ServiceArea findServiceAreaByName(String name) throws Exception {
		ServiceAreaExample serviceExample = new ServiceAreaExample();
		ServiceAreaExample.Criteria criteria = serviceExample.createCriteria();
		criteria.andNameEqualTo(name);
		List<ServiceArea> serviceAreas = serviceAreaMapper
				.selectByExample(serviceExample);
		if (serviceAreas != null && serviceAreas.size() == 1) {
			return serviceAreas.get(0);
		}
		return null;
	}

	@Override
	public void insertServiceDetails(Servicedetails servicedetails)
			throws Exception {

		servicedetailsMapper.insert(servicedetails);

	}

	@Override
	public List<Servicedetails> findServiceDetailsByProvideid(int id)
			throws Exception {
		ServicedetailsExample servicedetailsExample = new ServicedetailsExample();
		ServicedetailsExample.Criteria criteria = servicedetailsExample
				.createCriteria();
		criteria.andProviderIdEqualTo(id);
		List<Servicedetails> servicedetails = servicedetailsMapper
				.selectByExample(servicedetailsExample);
		return servicedetails;
	}

	@Override
	public ServiceArea findServiceAreaById(int id) throws Exception {

		return serviceAreaMapper.selectByPrimaryKey(id);
	}

}
