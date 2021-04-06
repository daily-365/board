package web.dto;

import java.util.Date;


public class BoardDTO {

    private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int boardHit;
	private Date boardDate;
	
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getboardHit() {
		return boardHit;
	}
	public void setboardHit(int boardHit) {
		this.boardHit = boardHit;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	

	
}
