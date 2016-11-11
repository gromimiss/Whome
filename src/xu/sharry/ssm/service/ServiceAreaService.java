package xu.sharry.ssm.service;

import java.util.List;

import xu.sharry.ssm.po.ServiceArea;
import xu.sharry.ssm.po.Servicedetails;

public interface ServiceAreaService {
 public ServiceArea findServiceAreaByName(String name) throws Exception;
 public void insertServiceDetails(Servicedetails servicedetails) throws Exception;
 
 public List<Servicedetails> findServiceDetailsByProvideid(int id)throws Exception;

 public ServiceArea findServiceAreaById(int id) throws Exception;
}
