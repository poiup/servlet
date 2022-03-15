package kr.co.ict.servlet.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

public class BoardUpdateService implements IBoardService {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {	
		boardDAO bDAO = boardDAO.getInstance();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
				
		// 4. 저장한 변수를 이용해 updateBoard() 메서드를 호출해줍니다.
		try {
			bDAO.boardUpdate(title, content, board_num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
