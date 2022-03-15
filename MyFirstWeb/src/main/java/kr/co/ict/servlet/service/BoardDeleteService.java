package kr.co.ict.servlet.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;

public class BoardDeleteService implements IBoardService{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		boardDAO bDAO = boardDAO.getInstance();
		int board_num = Integer.parseInt( request.getParameter("board_num"));
		try {
			bDAO.deleteBoard(board_num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
