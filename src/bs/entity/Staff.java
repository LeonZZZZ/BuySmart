package bs.entity;

public class Staff {
	private String firstName;
	private String lastName;
	private String telephoneNum;
	private String remark; // ±¸×¢
	private int sId;
	private Role role;
	
	public Staff(String firstName, String lastName, String telephoneNum, String remark, int sId, Role role){
		this.firstName = firstName;
		this.lastName = lastName;
		this.telephoneNum = telephoneNum;
		this.remark = remark;
		this.sId = sId;
		this.role = role;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTelephoneNum() {
		return telephoneNum;
	}

	public void setTelephoneNum(String telephoneNum) {
		this.telephoneNum = telephoneNum;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getsId() {
		return sId;
	}

	public void setsId(int sId) {
		this.sId = sId;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public String toString(){
		return "Name: "+this.firstName+this.lastName+" ID: "+sId+" Role: "+role+" Tel: "+telephoneNum;
	}
	
	public boolean isManager(){
		if(this.role==Role.Manager) 
			return true;
		else
			return false;
		
	}
	public boolean isRequest(){
		if(this.role==Role.Requester) 
			return true;
		else
			return false;
		
	}
	public boolean isAccountant(){
		if(this.role==Role.Accountant) 
			return true;
		else
			return false;
		
	}
	public boolean isWarehouse(){
		if(this.role==Role.WarehouseManager) 
			return true;
		else
			return false;
		
	}
	public boolean isBuyer(){
		return (this.role==Role.Buyer);   
	}
}
