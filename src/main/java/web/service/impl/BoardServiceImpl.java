package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDAO;
import web.dto.BoardDTO;
import web.service.face.BoardService;
import web.util.Criteria;

@Service
public class BoardServiceImpl implements BoardService {

	
	@Autowired
	private BoardDAO dao;

	@Override
	public List<BoardDTO> selectAllList(BoardDTO board) {
		
		return dao.selectAllList(board);
	}
	
	@Override
	public BoardDTO selectByBoardNo(BoardDTO board) {
		
		return dao.selectByBoardNo(board);
	}

	@Override
	public void writeBoard(BoardDTO board) {
          dao.writeBoard(board);
		
	}



	@Override
	public void modifyBoard(BoardDTO board) {
		dao.modifyBoard(board);
		
	}

	@Override
	public void deleteBoard(int boardNo) {
		dao.deleteBoard(boardNo);
		
	}
	
	@Override
	public int updateHit(int boardNo) {
		
		return dao.updateHit(boardNo);
	}

	@Override
	public List<BoardDTO> listPage(Criteria cri) {
	
		return dao.listPage(cri);
	}

	@Override
	public int listCount() {
		
		return dao.listCount();
	}

	@Override
	public List<BoardDTO> idCheck(BoardDTO board) {
		
		return dao.idCheck(board);
	}

	



	
	
}
