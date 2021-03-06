package web.service.face;

import java.util.List;

import web.dto.BoardDTO;
import web.util.Criteria;


public interface BoardService {

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

    //아이디 체크 (작성자 체크(
   public List<BoardDTO> idCheck(BoardDTO board);

}
