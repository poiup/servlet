package kr.co.ict.servlet.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

public class BoardDetailService implements IBoardService{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int board_num = Integer.parseInt(request.getParameter("board_num"));

		// dao생성
		boardDAO bDAO = boardDAO.getInstance();
		bDAO.upHit(board_num);
		boardVO board = bDAO.getBoardDetail(board_num);
		// dao에서 해당 글번호에 대한 정보를 가져오고
		// 정보가 제대로 들어왔는지 디버깅 해보겠습니다.
		//System.out.println(board);
		// 데이터 바인딩
		request.setAttribute("board", board);
	}
}
