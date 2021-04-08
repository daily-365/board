package web.util;

public class Paging {
	

	private int nowPage; //현제페이지
	private int startPage; //시작페이지
	private int endPage; //끝 페이지
	private int totalCount; //총게시글 수
	private int cntPerPage; // 페이지당 게시글 갯수
	private int lastPage; //마지막 페이지
	private int startNum; // 시작 값
	private int endNum; // 끝 값
	
    
    
    
    public Paging () {}
	
	public Paging (int totalCount,int nowPage, int cntPerPage) {
		
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotalCount(totalCount);
		
		calcLastPage(totalCount, cntPerPage);
		calcStartEndPage(nowPage, cntPerPage);
		calStatEnd(nowPage, cntPerPage);
	}
    
	//제일 마지막 페이지 계산
	public void calcLastPage(int totalCount,int cntPerPage) {
		
		setLastPage((int)Math.ceil((double)totalCount/(double)cntPerPage));		
		
	}
	
	//시작과 끝 페이지 계산
	public void calcStartEndPage(int nowPage,int cntPerPage) {
		
    setEndPage(( (int)Math.ceil( (double)nowPage/(double)cntPerPage))*cntPerPage );
	
     if(getLastPage()<getEndPage()) {
    	 
    	 setEndPage(getLastPage());
     }
     setStartPage(getEndPage()-cntPerPage+1);
	 
     if(getStartPage()<1) {
    	 setStartPage(1);
     }
	}
	  //시작 값과 끝값 계산
	
	public void calStatEnd(int nowPage,int cntPerPage) {
		
		setEndNum(nowPage * cntPerPage);
		setStartNum(getEndNum()-cntPerPage+1);
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
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

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	@Override
	public String toString() {
		return "Paging [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", totalCount="
				+ totalCount + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", startNum=" + startNum
				+ ", endNum=" + endNum + "]";
	}

	
		
	
}
