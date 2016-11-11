package xu.sharry.ssm.po;

public class Servicedetails {
    private Integer id;

    private Integer providerId;

    private Integer serviceId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public Integer getServiceId() {
        return serviceId;
    }

    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }

	public Servicedetails(Integer providerId, Integer serviceId) {
		super();
		this.providerId = providerId;
		this.serviceId = serviceId;
	}

	public Servicedetails() {
		super();
		// TODO Auto-generated constructor stub
	}
}