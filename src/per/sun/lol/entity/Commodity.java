package per.sun.lol.entity;

public class Commodity
{
	private Integer id;
	private String name;
	private Integer num;
	
	public Commodity()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Commodity(String name, Integer num)
	{
		super();
		this.name = name;
		this.num = num;
	}

	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
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
