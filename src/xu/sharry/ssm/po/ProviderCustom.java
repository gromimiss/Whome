package xu.sharry.ssm.po;

import java.util.List;

public class ProviderCustom extends Provider{
 private List<Worker> workers;

public List<Worker> getWorkers() {
	return workers;
}

public void setWorkers(List<Worker> workers) {
	this.workers = workers;
}
  
}
