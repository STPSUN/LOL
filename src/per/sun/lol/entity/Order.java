package per.sun.lol.entity;

public class Order
{
	private String id;
	private String busyer;
	private String address;
	private String state;
	
	public Order()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Order(String id, String busyer, String address, String state)
	{
		super();
		this.id = id;
		this.busyer = busyer;
		this.address = address;
		this.state = state;
	}
	
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getBusyer()
	{
		return busyer;
	}
	public void setBusyer(String busyer)
	{
		this.busyer = busyer;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getState()
	{
		return state;
	}
	public void setState(String state)
	{
		this.state = state;
	}
	
}
