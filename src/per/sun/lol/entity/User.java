package per.sun.lol.entity;

import java.sql.Date;

public class User
{
	private String id;
	private String name;
	private String username;
	private String password;
	private String sex;
	private String phone;
	private String postcode;
	private String address;
	private Integer status;
	private String grade;
	
	

	public User()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String id, String name, String username, String password,
			String sex, String phone, String postcode, String address, Integer status, String grade)
	{
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.phone = phone;
		this.postcode = postcode;
		this.address = address;
		this.status = status;
		this.grade = grade;
	}

	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getPostcode()
	{
		return postcode;
	}
	public void setPostcode(String postcode)
	{
		this.postcode = postcode;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}

	public Integer getStatus()
	{
		return status;
	}

	public void setStatus(Integer status)
	{
		this.status = status;
	}
	public String getGrade()
	{
		return grade;
	}

	public void setGrade(String grade)
	{
		this.grade = grade;
	}
}
