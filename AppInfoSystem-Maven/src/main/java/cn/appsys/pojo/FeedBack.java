package cn.appsys.pojo;

import java.sql.Date;

public class FeedBack {

	private Integer id;
	
	private String name;
	
	private String email;
	
	private String content;
	
	private Date createDate;
	
	

	public FeedBack() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedBack(Integer id, String name, String email, String content, Date createDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.content = content;
		this.createDate = createDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
}
