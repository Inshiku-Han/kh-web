package dto;

public class MemberDTO {
private String id;
private String password;
private String name;
private int age;
private String email;


public MemberDTO() {
	super();
}

public MemberDTO(String id, String password, String name, int age, String email) {
	super();
	this.id = id;
	this.password = password;
	this.name = name;
	this.age = age;
	this.email = email;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

}
