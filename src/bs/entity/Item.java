package bs.entity;

import java.sql.Date;

public class Item {
	private int index;
	private String name;
	private int categotyId;
	private Date createTime;
	private String creatorId;
	private double value;
	private String remark;
	
	public Item(int index, String name, int categotyId, Date createTime, String creatorId, double value,
			String remark) {
		super();
		this.index = index;
		this.name = name;
		this.categotyId = categotyId;
		this.createTime = createTime;
		this.creatorId = creatorId;
		this.value = value;
		this.remark = remark;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCategotyId() {
		return categotyId;
	}

	public void setCategotyId(int categotyId) {
		this.categotyId = categotyId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
