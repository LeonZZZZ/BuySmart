package bs.entity;

public class Staff {
	private String firstName;
	private String lastName;
	private String telephoneNum;
	private String remark; // ±¸×¢
	private int sId;
	private boolean canApprove;
	private boolean canBuy;
	private boolean canManageWarehouse;
	private boolean canManageAccount;
	
	public Staff(String firstName, String lastName, String telephoneNum, String remark, int sId, boolean canApprove, boolean canBuy, boolean canManageWarehouse, boolean canManageAccount){
		this.firstName = firstName;
		this.lastName = lastName;
		this.telephoneNum = telephoneNum;
		this.remark = remark;
		this.sId = sId;
		this.canApprove=canApprove;
		this.canBuy=canBuy;
		this.canManageWarehouse=canManageWarehouse;
		this.canManageAccount=canManageAccount;
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

	
	
	public String toString(){
		return "Name: "+this.firstName+this.lastName+" ID: "+sId+" Tel: "+telephoneNum;
	}
	
	
}
