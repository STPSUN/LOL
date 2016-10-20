package per.sun.lol.entity;

public class Notice
{
	private String id;
	private String title;
	private String state;
	private String content;
	
	public Notice()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Notice(String id, String title, String state, String content)
	{
		super();
		this.id = id;
		this.title = title;
		this.state = state;
		this.content = content;
	}

	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getState()
	{
		return state;
	}
	public void setState(String state)
	{
		this.state = state;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	
}
