package web.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean next;
	private boolean prev;
	
	private int displayPageNum=5;
	
	private Paging paging;
	
	public void setPaging(Paging paging) {
		this.paging=paging;
	}

  

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		pagingData();
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Paging getPaging() {
		return paging;
	}
 
   private void pagingData() {
	   
	   endPage =(int)(Math.ceil(paging.getPage()/(double)displayPageNum)*displayPageNum);
	   startPage =(endPage-displayPageNum)+1;
	   
	   int tempEndPage = (int) (Math.ceil(totalCount/(double)paging.getPagePerNum()));
        
	   if(endPage>tempEndPage) {
		   
		   endPage=tempEndPage;
	   }
       prev=startPage==1 ? false: true;
       next = endPage* paging.getPagePerNum()>=totalCount?false:true;
	   
     }
   
   public String makeQuery(int page) {
	   
	   UriComponents uriComponents = 
			   UriComponentsBuilder.newInstance()
			   .queryParam("page", page)
			   .queryParam("pagePerNum", paging.getPagePerNum())
			   .build();
	   
	   return uriComponents.toUriString();
	   
   }

}
