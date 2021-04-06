package web.dao.face;

import web.dto.BoardDTO;
import java.util.List;

public interface BoardDAO {
   
	//목록
	public List<BoardDTO> selectAllList(BoardDTO board);
	
	//상세보기
	public BoardDTO selectByBoardNo(BoardDTO board);
	
	//작성
	public void writeBoard(BoardDTO board);
	

	//수정
	public void modifyBoard(BoardDTO board);
	
	//삭제
	public void deleteBoard(int boardNo);
	
	
	
}
