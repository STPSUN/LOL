package per.sun.lol.entity;

public class Cart
{
	private String id;
	private String fileName;
	private String name;
	private String color;
	private String sizes;
	private Integer price;
	private Integer num;
	private Integer total;
	
	public Cart()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Cart(String id, String fileName, String name, String color,
			String sizes, Integer price, Integer num, Integer total)
	{
		super();
		this.id = id;
		this.fileName = fileName;
		this.name = name;
		this.color = color;
		this.sizes = sizes;
		this.price = price;
		this.num = num;
		this.total = total;
	}
	
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getFileName()
	{
		return fileName;
	}
	public void setFileName(String fileName)
	{
		this.fileName = fileName;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getColor()
	{
		return color;
	}
	public void setColor(String color)
	{
		this.color = color;
	}
	public String getSizes()
	{
		return sizes;
	}
	public void setSizes(String sizes)
	{
		this.sizes = sizes;
	}
	public Integer getPrice()
	{
		return price;
	}
	public void setPrice(Integer price)
	{
		this.price = price;
	}
	public Integer getNum()
	{
		return num;
	}
	public void setNum(Integer num)
	{
		this.num = num;
	}
	public Integer getTotal()
	{
		return total;
	}
	public void setTotal(Integer total)
	{
		total = this.num * this.price;
		this.total = total;
	}
	
}