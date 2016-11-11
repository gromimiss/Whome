package xu.sharry.ssm.service;



import java.util.List;

import xu.sharry.ssm.po.Provider;



public interface CompanyService {
	
	
	public List<Provider> findProvider(String name) throws Exception;
	
	

}
