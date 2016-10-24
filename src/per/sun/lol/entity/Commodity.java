package per.sun.lol.entity;

public class Commodity
{
	private String id;
	private String name;
	private Integer num;
	private Double price;
	
	public Commodity()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Commodity(String id, String name, Integer num, Double price)
	{
		super();
		this.id = id;
		this.name = name;
		this.num = num;
		this.price = price;
	}

	public Double getPrice()
	{
		return price;
	}

	public void setPrice(Double price)
	{
		this.price = price;
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
	public Integer getNum()
	{
		return num;
	}
	public void setNum(Integer num)
	{
		this.num = num;
	}
	
}
