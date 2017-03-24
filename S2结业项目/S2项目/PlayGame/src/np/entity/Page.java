package np.entity;

import java.util.List;

public class Page<T> {
	private int pageNumber;
	private int pageSize;
	private int totalPage;
	private int recordCount;
	private List<T> newlist;
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {

		this.totalPage=this.recordCount/this.pageSize+(this.recordCount%this.pageSize!=0?1:0);
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public List<T> getNewlist() {
		return newlist;
	}
	public void setNewlist(List<T> newlist) {
		this.newlist = newlist;
	}
	public Page() {
		this.setPageNumber(1);
		this.setPageSize(10);

	}
	public Page(int pageSize,int pageCount) {
		this.setPageNumber(1);
		this.setPageSize(pageSize);
		this.setRecordCount(pageCount);

	}
}
