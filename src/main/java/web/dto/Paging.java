package web.dto;

public class Paging {

	
	private int page;
	private int pagePerNum;
	private int startNum;
	private int endNum;
	
	public Paging() {
		
		this.page=1;
		this.pagePerNum=10;
		
	}
	
	public void setPage() {
		
		if(page<=0) {
			
			this.page=1;
			return;
		  }
		this.page=page;
	}
	
	
	public void setPagePerNum() {
		
		if(pagePerNum <=0 || pagePerNum >100) {
			
			this.pagePerNum=10;
			
			return;
		}
		this.pagePerNum=pagePerNum;
	}
	
	
	public int getPage() {
		
		this.page=page;
		
		return page;
	}
	
	public int getPageStart() 
	{
		return (this.page-1)*pagePerNum;
	}
	
	
	public int getPagePerNum() 
	{
	  return this.pagePerNum;
	}
	
			

	public int getStartNum() 
	{
		startNum=((page-1)*pagePerNum)+1;
		return startNum;
		
	}
	
	public int getEndNum() 
	{
		 endNum= startNum+pagePerNum-1;
		return endNum;
	}
	
	
	
	
}
