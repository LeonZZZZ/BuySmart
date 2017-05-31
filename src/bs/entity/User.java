package bs.entity;

public class User {
	private String firstName;
	private String lastName;
	private String userName; // ±¸×¢
	private Role role;
	
	public User(String firstName, String lastName, Role role, String userName, int sId){
		this.firstName = firstName;
		this.lastName = lastName;
		this.role=role;
		this.userName = userName;
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

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String toString(){
		return "Name: "+this.firstName+this.lastName+" Role: "+role+" Username: "+userName;
	}
	
	
}
