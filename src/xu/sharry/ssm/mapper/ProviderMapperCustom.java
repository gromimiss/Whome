package xu.sharry.ssm.mapper;

import java.util.List;

import xu.sharry.ssm.po.Provider;


public interface ProviderMapperCustom {

   public void insertProvider(Provider provider) throws Exception;
   
   public List<Provider> findProviderBystarnumber() throws Exception;
   public int workercount(int providerId) throws Exception;
}
