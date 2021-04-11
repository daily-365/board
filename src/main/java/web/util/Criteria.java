package web.util;

public class Criteria {

	private int page;
	private int pagePerNum;
	private int startNum;
	private int endNum;
	

	public Criteria() {
		
		this.page=1;
		this.pagePerNum=5;
		
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page<=0) {
			
		   this.page=1;
		   return;
			
		}
		this.page = page;
	}

	public int getPagePerNum() {
		return pagePerNum;
	}

	public void setPagePerNum(int pagePerNum) {
		if(pagePerNum<=0 || pagePerNum>100) {
			
			this.pagePerNum=5;
			return;
		}
		this.pagePerNum = pagePerNum;
	}

	public int getPageStart() {
		return (this.page-1)*pagePerNum;
	}



	public int getStartNum() {
		startNum= ((page-1)*pagePerNum)+1;
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		endNum= startNum+pagePerNum-1;
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}



	
}
