package bs.entity;

public class Category {
	private int index;
	private String category;
	
	public Category(int index, String category){
		this.index=index;
		this.category=category;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
