package hames.core.util;


public class DatatableRequest {
	
	public Integer iDisplayStart;
	public Integer iDisplayLength;
	public Integer iColumns;
	public String sSearch;
	public Boolean bRegex;
	
	public Integer getiDisplayStart() {
		return iDisplayStart;
	}
	public void setiDisplayStart(Integer iDisplayStart) {
		this.iDisplayStart = iDisplayStart;
	}
	public Integer getiDisplayLength() {
		return iDisplayLength;
	}
	public void setiDisplayLength(Integer iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}
	public Integer getiColumns() {
		return iColumns;
	}
	public void setiColumns(Integer iColumns) {
		this.iColumns = iColumns;
	}
	public String getsSearch() {
		return sSearch;
	}
	public void setsSearch(String sSearch) {
		this.sSearch = sSearch;
	}
	public Boolean getbRegex() {
		return bRegex;
	}
	public void setbRegex(Boolean bRegex) {
		this.bRegex = bRegex;
	}
	
	@Override
	public String toString() {
		return "DatatableRequest [iDisplayStart=" + iDisplayStart
				+ ", iDisplayLength=" + iDisplayLength + ", iColumns="
				+ iColumns + ", sSearch=" + sSearch + ", bRegex=" + bRegex
				+ "]";
	}
	
}
