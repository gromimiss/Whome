package xu.sharry.ssm.service;

import java.util.List;

import xu.sharry.ssm.po.Provider;
import xu.sharry.ssm.po.ProviderQueryVo;

public interface ProviderService {

	public Provider findProviderByUsercode(String usercode) throws Exception;
	
	public void insertProvider(Provider provider) throws Exception;
	
	public List<Provider> findProviderBystarnumber() throws Exception;
	public int workercount(int providerId) throws Exception;
	public Provider findProviderBycompanyName(String companyName) throws Exception;
	public Provider findProviderById(int id) throws Exception;
	public int companycount(int providerId) throws Exception;
}
