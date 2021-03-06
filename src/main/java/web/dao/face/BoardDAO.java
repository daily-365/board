package web.dao.face;

import web.dto.BoardDTO;
import web.util.Criteria;

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
	
	//조회수 증가
	public int updateHit(int boardNo);
	
	//페이징 + 검색
	public List<BoardDTO> listPage(Criteria cri);
	public int listCount();
   
	//아이디 체크 (작성자로 체크)
	public List<BoardDTO> idCheck(BoardDTO board);
	
}
