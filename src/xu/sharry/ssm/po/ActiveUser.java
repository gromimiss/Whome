package xu.sharry.ssm.po;

public class ActiveUser implements java.io.Serializable{
private Integer userid;//用户id(主键,登记号)
private String usercode;// 用户账号
private String username;// 用户名称
public Integer getUserid() {
	return userid;
}
public void setUserid(Integer userid) {
	this.userid = userid;
}
public String getUsercode() {
	return usercode;
}
public void setUsercode(String usercode) {
	this.usercode = usercode;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

}
