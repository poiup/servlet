package kr.co.ict.servlet.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

public class BoardUpdateFormService implements IBoardService {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		//1. 접속시 BoardDAO 생성
		int boardNum = Integer.parseInt(request.getParameter("board_num"));
		
		boardDAO bDAO = boardDAO.getInstance();
		boardVO board = bDAO.getBoardDetail(boardNum);
		request.setAttribute("board", board);
	}
}
