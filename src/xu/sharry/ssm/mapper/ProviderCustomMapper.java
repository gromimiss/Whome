package xu.sharry.ssm.mapper;

import java.util.List;

import xu.sharry.ssm.po.Provider;


public interface ProviderCustomMapper {
	
	public List<Provider> findProviderList(String name)throws Exception;

}
