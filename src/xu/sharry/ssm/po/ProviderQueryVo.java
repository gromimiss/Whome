package xu.sharry.ssm.po;

import java.util.List;

public class ProviderQueryVo {
 private List<ProviderCustom> providerCustom;

public List<ProviderCustom> getProviderCustom() {
	return providerCustom;
}

public void setProviderCustom(List<ProviderCustom> providerCustom) {
	this.providerCustom = providerCustom;
}

@Override
public String toString() {
	return "ProviderQueryVo [providerCustom=" + providerCustom + "]";
}
 
}
