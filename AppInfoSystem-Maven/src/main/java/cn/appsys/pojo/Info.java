package cn.appsys.pojo;

import java.util.Date;

public class Info {

private Integer id;
	
	private String name;
	
	private String content;
	
	private Date createDate;
	
	private String zhaiyao;
	
	private String zuozhe;
	
	private String baogao;
	
	private String file;
	


	
	public Info(Integer id, String name, String content, Date createDate, String zhaiyao, String zuozhe, String baogao,
			String file) {
		super();
		this.id = id;
		this.name = name;
		this.content = content;
		this.createDate = createDate;
		this.zhaiyao = zhaiyao;
		this.zuozhe = zuozhe;
		this.baogao = baogao;
		this.file = file;
	}

	public Info() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date date) {
		this.createDate = date;
	}

	public String getZhaiyao() {
		return zhaiyao;
	}

	public void setZhaiyao(String zhaiyao) {
		this.zhaiyao = zhaiyao;
	}

	public String getZuozhe() {
		return zuozhe;
	}

	public void setZuozhe(String zuozhe) {
		this.zuozhe = zuozhe;
	}

	public String getBaogao() {
		return baogao;
	}

	public void setBaogao(String baogao) {
		this.baogao = baogao;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
	
	
}
